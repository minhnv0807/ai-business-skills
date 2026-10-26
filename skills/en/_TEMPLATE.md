---
name: NN-skill-name-global
description: "Use when [the situation this skill solves, in one sentence — what goes in, what comes out]. Trigger on 'trigger phrase one', 'trigger phrase two', 'trigger phrase three'. Not for — [neighbouring job A], see `NN-other-skill-global`; [neighbouring job B], see `NN-another-skill-global`."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "trigger phrase one"
  - "trigger phrase two"
  - "trigger phrase three"
output: "File .md — [the sections the deliverable contains, in order]"
related:
  - product-marketing-context-global
  - NN-other-skill-global
  - NN-another-skill-global
---

<!--
Template rules (delete this comment in a real skill):
- `name` must equal the directory name (lowercase, digits, hyphens; Global skills end in `-global`).
- `description` is ONE double-quoted line, <= 1024 chars. The model routes on name + description only,
  so it must hold >= 3 single-quoted trigger phrases and a sibling-routing clause:
  `Not for — X, see \`NN-name\``.
- `metadata.category`: strategy | content | performance | operations (match neighbouring skills).
- `metadata.version`: 1.0.0 for a new skill; minor bump for behaviour change; patch for citation/label swaps.
- Keep SKILL.md under 500 lines (target <= 450). Move depth into `references/`.
- No invented stats, testimonials or benchmarks: use `[REAL DATA NEEDED]`.
- Evals: `evals/evals.json`, see `docs/evals.md`.
-->

# [Skill Name] (Global)

> Operating rules: `skills/en/references/operating-rules-global.md` (esp. rules 2, 3, 7).

[One or two sentences: the job this skill does and the hard rule it never breaks.]

## Inputs

Read context first: `.agents/product-marketing-context-global.md` (or `.agents/personal-brand-context-global.md`). Do not ask for anything already in it.

Then ask **at most 4 questions**, only for what is still missing:

1. **[Question 1]** — why it is needed
2. **[Question 2]** — why it is needed
3. **[Question 3]** — why it is needed
4. **[Question 4]** — why it is needed

## Principles

- [Rule 1 — the decision rule that matters most]
- [Rule 2 — insight before numbers]
- [Rule 3 — legal duty kept separate from best practice; link the region reference, do not restate statute text]
- [Rule 4 — unverified figures are labelled heuristic with a verify-at note, or removed]

## Output structure

File name: `[skill-name]-[product]-[YYYYMMDD].md`

### 1. [Section name]

[What goes here. Prefer tables.]

| Column 1 | Column 2 | Column 3 |
|---|---|---|
| ... | ... | ... |

### 2. [Section name]

[...]

### 3. Next steps

| Next step | Skill |
|---|---|
| [When X] | `NN-other-skill-global` |

## Quality checklist

- [ ] Context file read; no question repeated what it already answered
- [ ] Every section of the output structure present
- [ ] Numbers consistent across sections; no invented figures (`[REAL DATA NEEDED]` where missing)
- [ ] Region and currency match the user's market
- [ ] Legal points link to the reference instead of restating statute text
- [ ] Cross-references to related skills included
- [ ] No generic AI filler
