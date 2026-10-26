#!/usr/bin/env node
// Repo consistency checker. Zero dependencies, Node 18+, ESM. Run from the repo root:
//   node scripts/check-repo.mjs [--only=<check>]
// Checks: evals, denylist, llms, manifest (ISSUE) and versions, counts (WARN).
// Exit code 1 only when at least one ISSUE is found.

import fs from 'node:fs';
import path from 'node:path';

const ROOT = process.cwd();
const CHECKS = ['evals', 'denylist', 'llms', 'manifest', 'versions', 'counts'];
const onlyArg = process.argv.find((a) => a.startsWith('--only='));
const only = onlyArg ? onlyArg.slice('--only='.length) : null;
if (only && !CHECKS.includes(only)) {
  console.error(`Unknown check '${only}'. Valid: ${CHECKS.join(', ')}`);
  process.exit(2);
}

const results = []; // { level, check, loc, msg }
const issue = (check, loc, msg) => results.push({ level: 'ISSUE', check, loc, msg });
const warn = (check, loc, msg) => results.push({ level: 'WARN', check, loc, msg });

// ---------- helpers ----------
const rel = (p) => path.relative(ROOT, p).split(path.sep).join('/');
const exists = (p) => fs.existsSync(path.join(ROOT, p));
const read = (p) => fs.readFileSync(path.join(ROOT, p), 'utf8');
const isDir = (p) => { try { return fs.statSync(path.join(ROOT, p)).isDirectory(); } catch { return false; } };
const listDirs = (p) => (isDir(p) ? fs.readdirSync(path.join(ROOT, p), { withFileTypes: true }).filter((d) => d.isDirectory()).map((d) => `${p}/${d.name}`) : []);

function walk(dir, out = []) {
  const abs = path.join(ROOT, dir);
  if (!isDir(dir)) return out;
  for (const ent of fs.readdirSync(abs, { withFileTypes: true })) {
    if (ent.name === 'node_modules' || ent.name === '.git') continue;
    const r = `${dir}/${ent.name}`;
    if (ent.isDirectory()) walk(r, out);
    else if (ent.isFile()) out.push(r);
  }
  return out;
}

function lineOf(text, re) {
  const lines = text.split(/\r?\n/);
  for (let i = 0; i < lines.length; i++) if (re.test(lines[i])) return i + 1;
  return 1;
}

// Skill dirs: skills/{vi,en}/* and modules/*/{vi,en}/* that contain SKILL.md.
function skillDirs() {
  const parents = ['skills/vi', 'skills/en'];
  for (const mod of listDirs('modules')) parents.push(`${mod}/vi`, `${mod}/en`);
  const dirs = [];
  for (const p of parents) for (const d of listDirs(p)) if (exists(`${d}/SKILL.md`)) dirs.push(d);
  return dirs;
}
const SKILL_DIRS = skillDirs();
const SKILL_NAMES = new Set(SKILL_DIRS.map((d) => path.posix.basename(d)));

function frontmatter(file) {
  const m = read(file).match(/^---\r?\n([\s\S]*?)\r?\n---/);
  return m ? m[1] : '';
}
function metadataVersion(file) {
  const fm = frontmatter(file).split(/\r?\n/);
  let inMeta = false;
  for (const line of fm) {
    if (/^metadata:\s*$/.test(line)) { inMeta = true; continue; }
    if (inMeta) {
      if (/^\S/.test(line)) break;
      const m = line.match(/^\s+version:\s*["']?([^"'\s#]+)/);
      if (m) return m[1];
    }
  }
  return null;
}

// ---------- 1. evals ----------
function checkEvals() {
  const KINDS = new Set(['trigger', 'routing', 'guardrail', 'context']);
  const files = [...walk('skills'), ...walk('modules')].filter((f) => f.endsWith('/evals/evals.json'));
  for (const f of files) {
    const text = read(f);
    let data;
    try { data = JSON.parse(text); } catch (e) { issue('evals', `${f}:1`, `invalid JSON: ${e.message}`); continue; }
    const dirName = path.posix.basename(path.posix.dirname(path.posix.dirname(f)));
    if (data.skill_name !== dirName) issue('evals', `${f}:${lineOf(text, /"skill_name"/)}`, `skill_name '${data.skill_name}' != dir '${dirName}'`);
    if (!Array.isArray(data.evals)) { issue('evals', `${f}:1`, `'evals' is not an array`); continue; }
    if (data.evals.length < 4) issue('evals', `${f}:${lineOf(text, /"evals"/)}`, `only ${data.evals.length} evals (need >= 4)`);
    data.evals.forEach((e, i) => {
      const id = e && e.id;
      const loc = `${f}:${id !== undefined ? lineOf(text, new RegExp(`"id"\\s*:\\s*"?${String(id).replace(/[.*+?^${}()|[\]\\]/g, '\\$&')}"?\\s*[,}]`)) : 1}`;
      const tag = `eval #${i + 1}${id !== undefined ? ` (id ${id})` : ''}`;
      if (!e || typeof e !== 'object') { issue('evals', loc, `${tag} is not an object`); return; }
      if (id === undefined || id === null || id === '') issue('evals', loc, `${tag} missing 'id'`);
      if (typeof e.prompt !== 'string' || !e.prompt.trim()) issue('evals', loc, `${tag} missing or empty 'prompt'`);
      if (e.expected_output === undefined || e.expected_output === null || e.expected_output === '') issue('evals', loc, `${tag} missing 'expected_output'`);
      if (!Array.isArray(e.assertions) || e.assertions.length < 2) issue('evals', loc, `${tag} needs an 'assertions' array with >= 2 items`);
      if (e.kind !== undefined && !KINDS.has(e.kind)) issue('evals', loc, `${tag} kind '${e.kind}' not in trigger|routing|guardrail|context`);
      if (e.should_trigger === false) {
        if (typeof e.routes_to !== 'string' || !e.routes_to.trim()) issue('evals', loc, `${tag} should_trigger=false requires 'routes_to'`);
        else {
          const target = (e.routes_to.trim().replace(/^`/, '').match(/^[a-z0-9][a-z0-9-]*/i) || [''])[0];
          if (!SKILL_NAMES.has(target)) issue('evals', loc, `${tag} routes_to '${e.routes_to}' does not resolve to a skill dir`);
        }
      }
    });
    // Composition rules from docs/evals.md.
    const evs = data.evals.filter((e) => e && typeof e === 'object');
    const head = `${f}:${lineOf(text, /"evals"/)}`;
    if (!evs.some((e) => e.should_trigger === false)) issue('evals', head, 'no routing negative (should_trigger: false + routes_to)');
    if (!evs.some((e) => e.kind === 'guardrail')) issue('evals', head, "no eval with kind 'guardrail'");
    if (!evs.some((e) => e.kind === 'context')) issue('evals', head, "no eval with kind 'context'");
    if (/^(skills\/vi|modules\/[^/]+\/vi)\//.test(f)) {
      const DIAC = /[À-ỹ]/;
      const prompts = evs.map((e) => (typeof e.prompt === 'string' ? e.prompt : ''));
      if (!prompts.some((p) => DIAC.test(p)) || !prompts.some((p) => p && !DIAC.test(p))) issue('evals', head, 'VN skill needs at least one prompt with diacritics and one without');
    }
  }
}

// ---------- 2. denylist ----------
function checkDenylist() {
  const files = [];
  for (const d of ['skills', 'modules', 'agents', 'docs', 'knowledge']) files.push(...walk(d).filter((f) => f.endsWith('.md')));
  for (const ent of fs.readdirSync(ROOT, { withFileTypes: true })) {
    if (ent.isFile() && (ent.name === 'CLAUDE.md' || ent.name === 'AGENTS.md' || /^README.*\.md$/.test(ent.name))) files.push(ent.name);
  }
  const ALLOW = new Set([
    'skills/vi/references/phap-ly-marketing-vn.md',
    'skills/vi/references/quy-tac-van-hanh.md',
    'skills/en/references/operating-rules-global.md',
  ]);
  const excluded = (f) => {
    const base = path.posix.basename(f);
    return base === 'CHANGELOG.md' || base === 'VERSIONS.md' || f.startsWith('docs/release-notes/')
      || f.startsWith('docs/superpowers/') || f.startsWith('.handoff/') || ALLOW.has(f);
  };
  // Historical-context phrases only; bare "thay the" is common VN prose and must not hide a stale citation.
  const ESCAPE = /da thay the|bi thay the|thay the boi|thay the cho|thay the ND|superseded|khong dung nua|replaced by|deprecated|het hieu luc/i;
  const RULES = [
    { name: 'ND 13/2023 (superseded)', test: (l) => /\b(Nghi dinh|Nghị định|ND|Decree)\s*13(?:\/2023)?(?![\d\/.,]?\d)/i.test(l) },
    { name: '147/2024 cited for AI labelling', test: (l) => /147\/2024/.test(l) && /\bAI\b|disclos|cong bo|gan nhan|label|nhan AI/i.test(l) },
    { name: 'Advertising Law 2012 without 75/2025', test: (l) => /Quang cao 2012|Advertising Law 2012/i.test(l) && !l.includes('75/2025') },
    { name: 'vendor similarity threshold', test: (l) => /Similarity Score|similarity\s*>\s*\d+\s*%/i.test(l) },
    { name: '@meta/ads-cli (unverified package)', test: (l) => /@meta\/ads-cli/.test(l) },
  ];
  for (const f of [...new Set(files)].sort()) {
    if (excluded(f)) continue;
    const lines = read(f).split(/\r?\n/);
    lines.forEach((line, i) => {
      if (ESCAPE.test(line)) return;
      for (const r of RULES) if (r.test(line)) issue('denylist', `${f}:${i + 1}`, `${r.name}: ${line.trim().slice(0, 120)}`);
    });
  }
}

// ---------- 3. llms ----------
function checkLlms() {
  if (!exists('llms.txt')) { issue('llms', 'llms.txt', 'missing'); return; }
  const lines = read('llms.txt').split(/\r?\n/);
  const GH = /^https?:\/\/github\.com\/minhnv0807\/ai-business-skills\/(?:blob|tree)\/[^/]+\/(.+)$/i;
  lines.forEach((line, i) => {
    for (const m of line.matchAll(/\[[^\]]*\]\(([^)\s]+)(?:\s+"[^"]*")?\)/g)) {
      let url = m[1];
      let local = null;
      const gh = url.match(GH);
      if (gh) local = gh[1];
      else if (!/^[a-z][a-z0-9+.-]*:/i.test(url) && !url.startsWith('#')) local = url;
      if (!local) continue;
      local = decodeURIComponent(local.split('#')[0].split('?')[0]).replace(/^\.\//, '').replace(/\/$/, '');
      if (!local || !exists(local)) issue('llms', `llms.txt:${i + 1}`, `link target not found: ${url}`);
    }
  });
}

// ---------- 4. manifest ----------
function checkManifest() {
  const PJ = '.claude-plugin/plugin.json';
  const MJ = '.claude-plugin/marketplace.json';
  let plugin, market;
  try { plugin = JSON.parse(read(PJ)); } catch (e) { issue('manifest', PJ, `unreadable: ${e.message}`); return; }
  try { market = JSON.parse(read(MJ)); } catch (e) { issue('manifest', MJ, `unreadable: ${e.message}`); return; }
  const mText = read(MJ);
  const versions = [];
  (function collect(o, p) {
    if (Array.isArray(o)) o.forEach((v, i) => collect(v, `${p}[${i}]`));
    else if (o && typeof o === 'object') for (const [k, v] of Object.entries(o)) {
      if (k === 'version' && typeof v === 'string') versions.push({ p: `${p}.${k}`, v });
      else collect(v, `${p}.${k}`);
    }
  })(market, '$');
  for (const { p, v } of versions) {
    if (v !== plugin.version) issue('manifest', `${MJ}:${lineOf(mText, new RegExp(`"version"\\s*:\\s*"${v.replace(/\./g, '\\.')}"`))}`, `${p} '${v}' != plugin.json version '${plugin.version}'`);
  }
  const listed = new Set();
  for (const pl of market.plugins || []) {
    for (const s of pl.skills || []) {
      const p = s.replace(/^\.\//, '').replace(/\/$/, '');
      listed.add(p);
      if (!exists(`${p}/SKILL.md`)) issue('manifest', `${MJ}:${lineOf(mText, new RegExp(s.replace(/[.*+?^${}()|[\]\\/]/g, '\\$&')))}`, `listed skill not found: ${s}`);
    }
  }
  for (const d of SKILL_DIRS) if (!listed.has(d)) warn('manifest', d, 'skill dir not listed in marketplace.json');
}

// ---------- 5. versions ----------
function checkVersions() {
  if (!exists('VERSIONS.md')) { warn('versions', 'VERSIONS.md', 'missing'); return; }
  const lines = read('VERSIONS.md').split(/\r?\n/);
  const table = new Map();
  let inTable = false;
  lines.forEach((line, i) => {
    if (/^\|\s*Skill\s*\|\s*Version\s*\|/i.test(line)) { inTable = true; return; }
    if (!inTable) return;
    if (!line.startsWith('|')) { inTable = false; return; }
    const cells = line.split('|').map((c) => c.trim());
    if (!cells[1] || /^-+$/.test(cells[1])) return;
    table.set(cells[1].replace(/`/g, ''), { v: cells[2], line: i + 1 });
  });
  const mism = [];
  for (const d of SKILL_DIRS) {
    const name = path.posix.basename(d);
    const v = metadataVersion(`${d}/SKILL.md`);
    const row = table.get(name);
    if (!row) mism.push(`${d}/SKILL.md: ${name} metadata.version ${v ?? '(none)'} has no VERSIONS.md row`);
    else if (v !== row.v) mism.push(`VERSIONS.md:${row.line} ${name} table ${row.v} != metadata.version ${v ?? '(none)'}`);
  }
  for (const name of table.keys()) if (!SKILL_NAMES.has(name)) mism.push(`VERSIONS.md:${table.get(name).line} row '${name}' has no skill dir`);
  if (mism.length) {
    warn('versions', 'VERSIONS.md', `${mism.length} mismatch(es) between VERSIONS.md and metadata.version (showing first ${Math.min(20, mism.length)})`);
    for (const m of mism.slice(0, 20)) warn('versions', m.split(' ')[0].replace(/:$/, ''), m.slice(m.indexOf(' ') + 1));
  }
}

// ---------- 6. counts ----------
function checkCounts() {
  const real = SKILL_DIRS.length;
  const sources = [];
  for (const f of ['README.md', 'README.vi.md']) if (exists(f)) sources.push({ f, text: read(f) });
  for (const f of ['.claude-plugin/marketplace.json', '.claude-plugin/plugin.json']) if (exists(f)) sources.push({ f, text: read(f) });
  for (const { f, text } of sources) {
    text.split(/\r?\n/).forEach((line, i) => {
      for (const m of line.matchAll(/\b(\d{3})\s+skills\b/gi)) {
        const n = Number(m[1]);
        if (n !== real) warn('counts', `${f}:${i + 1}`, `says "${m[0]}" but repo has ${real} skill dirs`);
      }
    });
  }
}

// ---------- run ----------
const RUN = { evals: checkEvals, denylist: checkDenylist, llms: checkLlms, manifest: checkManifest, versions: checkVersions, counts: checkCounts };
for (const c of CHECKS) if (!only || only === c) RUN[c]();

for (const c of CHECKS) {
  const group = results.filter((r) => r.check === c);
  if (!group.length) continue;
  for (const r of group.filter((x) => x.level === 'ISSUE')) console.log(`ISSUE [${r.check}] ${r.loc} ${r.msg}`);
  for (const r of group.filter((x) => x.level === 'WARN')) console.log(`WARN [${r.check}] ${r.loc} ${r.msg}`);
}
const nI = results.filter((r) => r.level === 'ISSUE').length;
const nW = results.filter((r) => r.level === 'WARN').length;
console.log(`check-repo: ${nI} issues, ${nW} warnings`);
process.exit(nI > 0 ? 1 : 0);
