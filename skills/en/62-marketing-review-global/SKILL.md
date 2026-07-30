---
name: 62-marketing-review-global
description: "Use when a leader needs to review or approve team output before it ships: a checklist for approving content briefs (angle matches insight, correct pillar, clear CTA), a checklist for approving ad copy and creative (claims substantiated, on-brand tone, hook inside the first 125 characters, platform policy pre-check), and an Approve / Revise / Redo verdict with a feedback template. Trigger on 'review the brief', 'approve content', 'review ads', 'approve creative', 'check ads before launch', or 'review team output'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "review the brief"
  - "approve content"
  - "review ads"
  - "approve creative"
  - "check ads before launch"
  - "review team output"
  - "review ad copy"
  - "content approval gate"
output: "File .md — quick verdict, review checklist by type (content brief / ads), point-by-point feedback, verdict Approve / Minor revision / Redo plus next step"
related:
  - 05-ad-copy-global
  - 36-content-brief-global
  - 47-design-review-global
  - 02-campaign-brief-global
  - 64-team-brief-global
  - 41-campaign-asset-list-global
---

# Marketing Review (Global)

> Reviewing a brief before writing means one round of edits. Skipping it means five rounds after writing. Reviewing ads before launch prevents burning budget on the wrong creative — one hour of review saves days of bad CPA. A leader review is not about personal taste; it is about whether the work matches the objective, the audience, and the brand. For visual and design work, use `47-design-review-global`.

## Information gathering

Ask up to 4 questions:

1. **What is being reviewed?** A content brief, or ad copy plus creative? Paste the content or share the file.
2. **Campaign context:** which campaign, which funnel stage (TOFU/MOFU/BOFU), which platform?
3. **Target audience and the primary KPI** for this campaign (CPL / ROAS / CTR)?
4. **Which review round is this?** First pass, or already revised — if it is still wrong after two rounds, the problem is the original brief, not the person.

## Principles

1. **Review against a checklist, not a feeling.** "I like it / I don't like it" is not a criterion.
2. **Feedback must be specific and actionable.** "The hook is weak" is not enough — say "the hook must hit pain [X] within the first 3 seconds / first 125 characters."
3. **Review inside the SLA:** content briefs within 24 hours, ads within 4-8 hours. Do not leave the team waiting.
4. **One revision round maximum after review.** If it is still off, the leader and the maker sit together — no ping-pong.
5. **Approve means ship within 24 hours.** Approved work that sits loses momentum.
6. **Give feedback about the system, not the person.** Repeated misses on the same brief mean the brief is broken.

## Workflow

### 1. Identify the review type

| Output type | Checklist to use | Note |
|-------------|------------------|------|
| Content brief (before the writer writes) | Mode A below | |
| Ad copy + creative (before ads go live) | Mode B below | |
| Visual / design (banner, carousel, landing page) | `47-design-review-global` | Separate skill for visuals |

### 2. Quick verdict (fill this first, details after)

| Item | Assessment | Note |
|------|------------|------|
| Enough information to work with? | Yes / Missing | |
| Correct funnel stage? | OK / Warning / Fail | |
| Correct audience and insight? | OK / Warning / Fail | |
| Message consistent with the campaign? | OK / Warning / Fail | |
| Brand-safe (claims, legal, platform policy)? | OK / Fail | |
| **Verdict** | **Approve / Revise / Redo** | |

### 3A. Mode A — Content brief checklist

**Objective and funnel stage:**
- [ ] Does the brief state TOFU / MOFU / BOFU and the objective (awareness / trust / conversion)?
- [ ] No offer push at TOFU (TOFU educates and agitates only)? Does BOFU carry urgency and a clear CTA?

**Audience and insight:**
- [ ] Is the target audience described specifically — not just "women 25-35"?
- [ ] Does the angle sit on a real insight or pain for this segment, not a generic one?
- [ ] Does the language in the brief match how the audience actually talks?

**Angle and hook:**
- [ ] Is there a clear angle (not "write about product X")? Does it use a content pillar from the plan?
- [ ] Are there at least 2 hook options for the writer to choose from? Is the hook strong enough to stop the scroll?
- [ ] Has this angle been used repeatedly — is it worn out?

**Message and CTA:**
- [ ] Is the core message consistent with the campaign brief? Are there at most 3 key points in one piece?
- [ ] Is the outline logical: Hook > Body > CTA? Is the CTA specific, a single action, with a clear benefit?

**Format and proof:**
- [ ] Is the format explicit: caption / script / carousel / email? Are length, platform, and deadline stated?
- [ ] Are there good references AND anti-references? Is there data, testimonial, or proof to use?
- [ ] Does it state what must NOT be said or promised?

### 3B. Mode B — Ads checklist (copy + creative)

**Brand, claims, and legal (any failure blocks approval):**
- [ ] No false or unsupported claims. Every performance, health, income, or comparative claim has evidence on file before it runs — FTC substantiation requires the advertiser to hold that evidence in advance, not to produce it after a challenge.
- [ ] No vague superlatives ("best", "number one") unless backed by documented, current evidence.
- [ ] If a creator, customer, or employee endorses the product, the material connection is disclosed clearly and conspicuously (#ad / #sponsored / "paid partnership" label), and any testimonial reflects typical results or carries a clear disclaimer.
- [ ] Pricing, subscription terms, and auto-renewal are stated clearly — no hidden recurring charges in the offer copy.
- [ ] On-brand tone of voice (checked against the Brand Hub or brand guideline).
- [ ] Platform policy pre-check before submission: Meta, TikTok, and Google each restrict claims in health, finance, weight loss, crypto, employment, housing, and credit. Restricted categories need the right ad category selected and, where applicable, advertiser verification. No spelling errors, no unlicensed use of a real person's likeness.

**Hook (drives most of the performance):**
- [ ] The first line does not open with the brand name or a greeting.
- [ ] The hook sits fully inside the first 125 characters of primary text (what shows before "See more" on Meta).
- [ ] Video: movement or on-screen text in the first 3 seconds, hitting pain, curiosity, or desire.
- [ ] Image: the main message is above the fold, minimal text on the image, readable on mobile.

**Copy structure:**
- [ ] Body of 2-5 sentences: amplify pain > hint at the solution > social proof.
- [ ] CTA is specific and a single action. The CTA button type matches (Learn More / Shop Now / Sign Up).
- [ ] Length matches the funnel stage: TOFU longer (educate), BOFU short and direct.

**Funnel check:**
- [ ] TOFU: educate or agitate, do not sell. MOFU: social proof and objection handling, soft CTA. BOFU: offer plus real urgency (a genuine deadline or capacity limit) plus a hard CTA.

**Technical:**
- [ ] UTMs complete and following the naming convention. Destination link goes to the right page.
- [ ] Correct ad account and pixel — not running from the wrong account.
- [ ] Landing page and ad make the same promise — a mismatch is both a conversion problem and a policy risk.

### 4. Specific feedback

Strengths of this output: [1-2 points, so the maker knows what to keep]

| # | Issue | Why it needs to change | Suggested fix | Severity |
|---|-------|------------------------|---------------|----------|
| 1 | | | | Blocker / Should fix |
| 2 | | | | |

### 5. Verdict and next step

| Verdict | Meaning | Next step |
|---------|---------|-----------|
| APPROVE | Meets the standard | Writer proceeds / media buyer launches within 24h |
| MINOR REVISION | Fix [X] specific points | Fix and ship without a second review |
| REDO / REBRIEF | Wrong direction, start again | State the reason; if the brief was the problem, rewrite the brief; leader and maker spend 15 minutes together |

## Output structure

File name: `marketing-review-[item-name]-[YYYYMMDD].md`

```markdown
# Review — [Content brief / Ads] — [Campaign name]
Reviewer: [leader] | Date: [date] | Round: [1/2]

## 1. Quick verdict
| Item | Assessment | Note |

## 2. Detailed checklist
[Mode A or Mode B — tick each item, note every failure]

## 3. Feedback
- Strengths:
| # | Issue | Why | Suggested fix | Severity |

## 4. Verdict: APPROVE / MINOR REVISION / REDO
- Next step + deadline:
```

## Related skills

- `05-ad-copy-global`: ad copy produced by that skill is the subject of Mode B review.
- `47-design-review-global`: visuals have their own checklist — do not approve design with this skill.
- `02-campaign-brief-global`: the original campaign brief is the reference for message consistency.
- `41-campaign-asset-list-global`: confirms which assets are in scope for this review round.
- `64-team-brief-global`: on a REDO, use the team brief to reassign the task with a sharper definition of done.

## Quality checklist

- [ ] Correct review type identified (brief / ads / visual goes to another skill)
- [ ] Quick verdict filled for all 6 items
- [ ] Full checklist run — no item skipped as "probably fine"
- [ ] Every claim has documented substantiation — no exceptions in the brand and legal section
- [ ] Endorsement disclosure and restricted-category policy checked before submission
- [ ] Hook tested against the concrete threshold (125 characters / first 3 seconds)
- [ ] Feedback includes strengths, not only faults
- [ ] Every issue has a "why" and a "suggested fix" — no feedback like "make it better"
- [ ] Clear verdict plus next step and deadline
- [ ] Review delivered inside the SLA: briefs 24h, ads 4-8h
