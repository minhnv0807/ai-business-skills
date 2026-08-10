---
name: 47-design-review-global
description: "Use when a finished DESIGN needs scoring and feedback — brand consistency, hierarchy plus readability plus accessibility, conversion elements, and platform fit, 10 points each, with per-issue feedback in issue, why, and how-to-fix form and a verdict of approve, minor fix, or redo. Trigger on 'design review', 'review this design', 'score this creative', 'is this design good', 'brand check on this banner', 'can we ship this or not'. Also use when the user just sends an image and asks for thoughts. Not for — reviewing copy and briefs, see `62-marketing-review-global`; writing the brief before production, see `42-image-brief-global`; the brand rules being checked against, see `46-brand-guideline-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "design review"
  - "review this design"
  - "design feedback"
  - "score this design"
  - "brand check"
  - "is this design good"
  - "approve this design"
  - "visual check"
output: "File .md or in-chat feedback — quick verdict, 4-group score out of 40, detailed checklist, feedback in issue - why - how to fix format, action summary. The designer can act on it immediately."
related:
  - product-marketing-context-global
  - 46-brand-guideline-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 43-carousel-brief-global
  - 45-design-tool-brief-global
  - 49-html-email-template-global
  - 62-marketing-review-global
  - 12-landing-page-brief-global
---

# Design Review (Global)

Reviewing design is not about liking it. It is checking whether the design does its job. Beautiful work that does not convert has failed. Converting work that breaks the brand has also failed. Feedback must be specific enough for the designer to act without asking.

## Information gathering

Read the brand guideline (`46-brand-guideline-global`) and the originating brief. If information is missing, ask up to 4 questions:

1. **What is being reviewed?** File, screenshot, or share link — and what type (social post, ad banner, carousel, landing page, email)?
2. **Objective and funnel stage?** Awareness, trust, or conversion — TOFU, MOFU, or BOFU?
3. **Which channel does it run on?** Meta, TikTok, Instagram, LinkedIn, Pinterest, email, or website?
4. **Which brand guideline applies?** If none exists, the brand section can only be scored loosely — propose running `46-brand-guideline-global` first.

## Principles

1. **Feedback specific enough to fix without a follow-up.** "It doesn't feel right" is not feedback.
2. **Separate must-fix (blocker) from should-fix (suggestion).**
3. **Never reject on personal taste** — every deduction cites a checklist item.
4. **Review within 24 hours.** Do not let a designer wait and block the workflow.
5. **Once approved, do not reopen** after the designer exports.
6. **If more than 50% needs rebuilding, rewrite the brief** instead of looping revisions.

## Workflow

### 1. Look at the whole thing first (3 seconds)

View it as a real user would — do not zoom into detail yet. Answer two questions: within three seconds, is it clear what this design is saying? Where does the eye land first?

### 2. Score the 4 criteria groups

Each group is worth 10 points, 40 total. Score against the checklist below; deduct in proportion to the impact of each failure.

### 3. Write feedback in the standard format

Every issue is written as **[Issue] -> [Why it is wrong] -> [Exactly how to fix it]**.

### 4. Give a verdict and an action summary

State the verdict, list fixes in priority order, and name the condition for approval.

## Output structure

```markdown
# Design Review — [Asset name] — [date]

## Quick verdict
| Criterion | Assessment | Note |
|-----------|-----------|------|
| On brand? | OK / Warning / Fail | |
| Clear hierarchy? | OK / Warning / Fail | |
| Readable on mobile? | OK / Warning / Fail | |
| Meets the objective? | OK / Warning / Fail | |

## Total: [X/40]
| Group | Score | Assessment |
|-------|-------|-----------|
| A. Brand consistency | /10 | |
| B. Hierarchy, readability, accessibility | /10 | |
| C. Conversion elements | /10 | |
| D. Platform fit | /10 | |

Verdict: APPROVE / MINOR FIX (fix per notes, no re-review needed) / REDO [section] (reason)

## A. Brand consistency [/10]
- [ ] Logo uses the right version, position, and clear space
- [ ] Colors match the brand palette exactly (not a near-match with the wrong value)
- [ ] Fonts are [heading font] / [body font]
- [ ] Visual tone matches the brand personality
- [ ] No element violates a guideline do or don't
- [ ] No generic stock imagery diluting the brand
Issue: [issue] -> [why] -> [how to fix]

## B. Hierarchy, readability, accessibility [/10]
- [ ] One clear focal point — no competing centers of attention
- [ ] Logical reading order: headline -> subhead -> body -> CTA
- [ ] The most important element carries enough visual weight (size, color, contrast)
- [ ] The headline is readable in three seconds
- [ ] Body type is at least 14px and readable on a phone
- [ ] Text contrast meets WCAG AA: 4.5:1 for body, 3:1 for large text (24px+, or 18.66px+ bold)
- [ ] Icons and meaningful graphics meet 3:1 contrast; meaning is never carried by color alone
- [ ] Alt text is drafted and ready for the post or email; video has captions
- [ ] Not overloaded — three messages maximum, enough negative space
- [ ] Spacing is consistent (8px grid); no typos, broken glyphs, or missing characters
Issue: [issue] -> [why] -> [how to fix]

## C. Conversion elements [/10]
- [ ] CTA stands out, contrasts with its ground, uses a verb plus a benefit
- [ ] USP or offer is explicit (at BOFU the viewer knows exactly what they get)
- [ ] Trust elements present where needed: figures, testimonial, badge
- [ ] Urgency or scarcity present if the campaign requires it, and genuinely true
- [ ] The hook is strong enough (at TOFU, it stops the scroll in about 1.5 seconds)
- [ ] Claims are substantiated; disclosures present where required
Issue: [issue] -> [why] -> [how to fix]

## D. Platform fit [/10]
- [ ] Dimensions match the channel spec
- [ ] Safe zones respected — text and CTA are not covered by UI or cropped
- [ ] Mobile-friendly (readable at 375px width)
- [ ] File size and format correct (JPG/PNG/MP4/PDF)
- [ ] Overlay text kept light enough not to crowd the frame
- [ ] Email: 600px width, CTA button at least 44px tall
Issue: [issue] -> [why] -> [how to fix]

## Action summary
Keep: [element] — [why it works]
Fix now (must fix):
1. [issue] -> [fix] -> [deadline]
Consider (should fix):
1. [suggestion] -> [reason]
Approve when: [specific condition]
```

## Platform spec quick reference

| Channel | Dimensions | Safe zone |
|---------|-----------|-----------|
| Meta Feed (FB/IG) | 1080x1080 (1:1) / 1080x1350 (4:5) | 20px each edge |
| Meta Story / Reels | 1080x1920 (9:16) | 250px top / 250px bottom |
| TikTok / Reels | 1080x1920 (9:16) | 150px top / 300px bottom, ~140px right |
| LinkedIn | 1200x627 (1.91:1) | 40px each edge |
| Pinterest | 1000x1500 (2:3) | 60px each edge |
| YouTube thumbnail | 1280x720 (16:9) | avoid the bottom-right timestamp overlay |
| Email header | 600x200 | 10px each edge |
| Landing page hero | 1440px desktop / 375px mobile | headline and CTA visible without scrolling |

## Decision rules

- Any group below 5/10 means REDO that group — do not approve overall.
- Brand failures (group A) are blockers: a high total does not rescue an off-brand asset.
- Accessibility failures at body-text contrast are must-fix, not suggestions.
- REDO covering more than 50% of the work means going back to the originating brief (`42`, `43`, `45`) and rewriting it before rebuilding.
- MINOR FIX means the designer applies the notes and exports without another approval round.
- The reviewer commits to feedback within 24 hours. For urgent in-flight assets, the SLA in `48-quick-visual-brief-global` applies (30 minutes).

## Related skills

- `46-brand-guideline-global`: the basis for group A — read it before reviewing.
- `42-image-brief-global`, `43-carousel-brief-global`, `45-design-tool-brief-global`, `12-landing-page-brief-global`: the originating brief to check the design against.
- `49-html-email-template-global`: email-specific rendering and client checks before sending.
- `41-campaign-asset-list-global`: after approval, update the asset status (REVIEW to APPROVED).
- `48-quick-visual-brief-global`: urgent in-flight assets get a 3-point check, not the full 40-point review.

## Quality checklist

- [ ] Whole-design look before zooming into detail
- [ ] All 4 groups scored, each with a score and checklist evidence
- [ ] Every issue written as issue -> why -> how to fix
- [ ] Must-fix clearly separated from should-fix
- [ ] Accessibility contrast and text size explicitly checked
- [ ] Clear verdict plus a specific approval condition
- [ ] A "keep" section recognizing what works — not criticism only
- [ ] Feedback returned within 24 hours
- [ ] Asset status updated in the asset list after review
