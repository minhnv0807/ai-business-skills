---
name: 48-quick-visual-brief-global
description: "Use when a LIVE campaign needs a new asset the same day — creative fatigue, CTR decay, climbing frequency, or a new angle to test: stripped-down input, duplicate the winning creative and change only what is listed, a one-page template, and a hard SLA so the designer ships in 2-4 hours. Trigger on 'quick brief', 'need an asset fast', 'creative fatigue', 'swap the creative today', 'frequency is too high', 'the ad is dying and we need a new one'. Not for — planning assets before launch, see `41-campaign-asset-list-global`; a full concept brief with time to spare, see `42-image-brief-global`; resizing an existing master, see `50-asset-resize-global`; raising budget on a winner, see `55-scaling-ads-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "quick brief"
  - "need an asset fast"
  - "creative fatigue"
  - "urgent creative"
  - "asset today"
  - "new creative fast"
  - "swap the creative"
output: "File .md, one page — quick brief: base from the winning creative, only the changes listed, sizes required, hard deadline, 30-minute review SLA. The designer ships in 2-4 hours."
related:
  - product-marketing-context-global
  - 21-ads-audit-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 19-ab-test-setup-global
  - 47-design-review-global
  - 50-asset-resize-global
---

# Quick Visual Brief (Global)

Use this when a campaign is live and an asset is needed urgently: speed beats perfection. A variant running in four hours beats a perfect asset delivered in two days. The brief needs to be enough to build, not enough to be beautiful.

## When to use and when not to

| Situation | Use |
|-----------|-----|
| Creative fatigue, CTR decay, high frequency, variant needed today | This skill (48) |
| Testing a new angle on a creative that already works | This skill (48) |
| Entirely new asset, new concept | `42-image-brief-global` (full brief) |
| Landing page, video, email | `12`, `44`, `49` — these cannot be rushed |
| No winning creative to build from | `42-image-brief-global` |

## Information gathering

Ask once, in a single message, up to 4 questions:

1. **What asset and what size?** Static, carousel, or story — for which channel?
2. **Which creative is the base?** The highest-CTR creative currently running (file or share link). If unknown, pull the data from `21-ads-audit-global`.
3. **What is the new angle or message?** What changes versus the running creative? Is the copy written or does it need writing now?
4. **Deadline?** The exact hour it must be delivered — hard, not flexible.

## Principles

1. **Duplicate, do not create.** Find the creative that works and change one element. Cloning a winner is faster than inventing.
2. **One main change per variant** — not five at once, so the data still explains why it won or lost.
3. **Brief only what is DIFFERENT** from the base creative. Everything else stays.
4. **The deadline is hard.** If it will slip, say so immediately — silence is not an option.
5. **The lead or media buyer commits to feedback within 30 minutes** of submission. No feedback within one hour counts as approved.
6. **Fast approval checks three things only:** right message, right size, CTA present.

## Workflow

### 1. Identify the base (5 minutes)

Which live creative has the highest CTR? That is the base. Get the link to the source file (Canva, Figma, Adobe Express) — always duplicate the source, never an exported file.

### 2. Write the one-page quick brief (15-30 minutes)

Use the template below. Fill in only the "specific changes" table — everything else inherits from the base.

### 3. Designer builds in 2-4 hours

Duplicate the base, change exactly the listed elements, export at the stated sizes, submit.

### 4. Review in 30 minutes on 3 points

Right message? Right size? CTA present? If yes, push it live. No feedback within one hour means the designer treats it as approved and submits the final file.

## Output structure

File name: `quick-brief-[campaign]-[YYYYMMDD].md`

```markdown
# QUICK BRIEF — [Asset name] — [date]

Deadline: [HH:MM on date] (not flexible)
Build time: 2-4 hours
Base: [link to source file — the highest-CTR creative]

## Base template
- Duplicate from: [link]
- Keep unchanged: [layout / background / logo / fonts]
- Change only: [copy / color / image / CTA — pick one main change]

## Specific changes
| Element | Current | New |
|---------|---------|-----|
| Headline | | |
| Subtext | | |
| CTA | | |
| Visual / image | | |

## Sizes required
- [ ] 1080x1080 — Meta Feed
- [ ] 1080x1920 — Story / Reels (if needed)
- [ ] 1200x628 — link banner (if needed)

## Export and submission
- Format: JPG
- Submit via: [Slack channel / shared Drive folder]
- File name: QUICK_[Campaign]_[Date]_v1.jpg

## Review
- Three checks only: right message / right size / CTA present
- Feedback within: 30 minutes of submission
- No feedback within one hour = approved

## Context (1-2 sentences)
[CTR has decayed from X% / frequency has passed the threshold / testing a new angle: ...]
```

## Overall SLA

| Step | Owner | Time |
|------|-------|------|
| Write the quick brief | Lead / media buyer | 30 minutes from spotting the problem |
| Build the asset | Designer | 2-4 hours |
| Review | Lead / media buyer | 30 minutes after submission |
| No feedback | — | After one hour, treat as approved |
| Launch-day standby | Designer | Respond to requests within 2 hours |

## Triggers that justify a quick brief

| Signal | Typical threshold | Action |
|--------|-------------------|--------|
| CTR decay | Down 25-30% or more from the creative's own first-week baseline | New variant on the same offer, new hook |
| Frequency climbing | Above roughly 2.5-3.0 in a 7-day window on a prospecting set | Refresh the creative, not the audience |
| CPA drifting up | Materially above the campaign's own target, with stable CVR | Test a new angle before touching bids |
| A new angle worth testing | Any time a hypothesis emerges from comments or support tickets | One variable changed, per `19-ab-test-setup-global` |

Use the account's own trailing baseline as the reference, not an external benchmark — decay is relative to how the creative started.

## Related skills

- `21-ads-audit-global`: the data source for creative fatigue (frequency, CTR) and for identifying the winner to clone.
- `19-ab-test-setup-global`: quick variants should still fit a clean test frame — one change equals one variable.
- `41-campaign-asset-list-global`: add the new asset row and update its status.
- `42-image-brief-global`: fallback when there is no winner to clone — write the full brief.
- `50-asset-resize-global`: once a variant wins, resize it into the remaining sizes.
- `47-design-review-global`: urgent assets get the 3-point check, not the full 40-point review.

## Quality checklist

- [ ] A concrete base exists (link to the winning creative's source file)
- [ ] Exactly one main change — every other element stays
- [ ] The change table states current versus new
- [ ] The deadline names an hour, and the designer has confirmed it is achievable
- [ ] Sizes, format, and submission location are stated
- [ ] One or two sentences of context so the designer knows why it is urgent
- [ ] The 30-minute review SLA is committed by the approver
- [ ] After the variant runs, its result (win/lose) is recorded in the asset list
