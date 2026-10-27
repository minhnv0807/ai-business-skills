# Skill evals

## Purpose

An eval file is a behavioural spec for one skill: which prompts should select it, which should route elsewhere, and what a good answer must contain. There is no automated runner yet; evals are graded by hand. `node scripts/check-repo.mjs --only=evals` checks the file shape and every rule in the list below except `files`; any miss is an ISSUE and fails CI.

## Schema

File: `<skill-dir>/evals/evals.json`

```json
{"skill_name": "<dir name>", "evals": [
  {"id": 1, "kind": "trigger|routing|guardrail|context", "prompt": "...",
   "should_trigger": true, "routes_to": "NN-name (only when should_trigger is false)",
   "expected_output": "...", "assertions": ["...", "..."], "files": []}
]}
```

Rules:
- `skill_name` equals the skill directory name.
- At least 4 evals, each with an `id`, a non-empty `prompt`, an `expected_output` and 2 or more `assertions`.
- At least 1 routing negative (`should_trigger: false` plus `routes_to`, whose leading `NN-name` must be an existing skill dir).
- At least 1 guardrail eval and at least 1 context eval.
- VN skills: at least one prompt in natural Vietnamese WITH diacritics and one without.
- `files`: paths to attach with the prompt (context files, screenshots, exports). Empty when none.

## Kinds

| Kind | What it tests |
|---|---|
| `trigger` | A realistic user prompt selects this skill and the output has the expected structure. |
| `routing` | A near-miss prompt is sent to a sibling skill (`should_trigger: false`, `routes_to`). |
| `guardrail` | The skill refuses or corrects an unsafe request: invented stats, unverified legal figures, launching ads before tracking is verified, and similar. |
| `context` | The skill reads the `.agents/` context file (or attached `files`) and does not re-ask what it already contains. |

## Manual grading protocol

1. Open a fresh session with only this plugin installed.
2. Paste the prompt, and attach `files` if any.
3. Grade each assertion pass or fail.
4. A routing eval passes only if the expected skill was selected.
5. Record the results locally. Do not commit them.

An eval passes only when every assertion passes.

## When evals are required (v3.8)

- Every new skill.
- The 21 pair (`skills/vi/21-audit-ads-performance`, `skills/en/21-ads-audit-global`).
- Any other skill: add evals when its behaviour changes.

Schema adapted from coreyhaines31/marketingskills (MIT).
