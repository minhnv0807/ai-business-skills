---
name: 36-content-brief-global
description: "Use when ONE specific piece of content needs a brief before anyone writes — placement, angle plus the source insight behind it, key message, three hook options, CTA, format, brand voice reference, visual direction, and distribution. Trigger on 'content brief', 'brief for this post', 'brief a writer', 'what angle should this take', 'brief for the LinkedIn post', 'give the freelancer something to work from'. Also use when the user has a topic and no idea what to actually say about it. Not for — the month schedule of what posts when, see `01-content-calendar-global`; the finished caption text, see `37-social-caption-global`; a spoken video script, see `04-script-video-global`; the image spec, see `42-image-brief-global`."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "content brief"
  - "brief for this post"
  - "brief a writer"
  - "angle for this piece"
  - "brief for the LinkedIn post"
  - "brief for a TikTok"
  - "post brief"
  - "brief today's content"
output: "File .md — single-piece brief: placement, angle plus source insight, 3 hook options, key message, CTA, brand voice reference, visual direction, distribution. A writer can start immediately from it"
related:
  - product-marketing-context-global
  - 35-brand-voice-global
  - 09-customer-insight-global
  - 01-content-calendar-global
  - 37-social-caption-global
  - 04-script-video-global
  - 42-image-brief-global
  - 43-carousel-brief-global
  - 44-video-editor-brief-global
---

# Content Brief (Global)

One brief per piece. This is the link between the calendar (`01-content-calendar-global`) and production (`37-social-caption-global`, `04-script-video-global`, `05-ad-copy-global`, `14-email-marketing-global`). The brief is good enough when the writer finishes without asking the lead a single question.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the Brand Voice Document (`35-brand-voice-global`), and the calendar (`01-content-calendar-global`) first. If something is missing, ask up to 4 questions:

1. **Where does this piece sit in the funnel (TOFU / MOFU / BOFU), and which campaign or weekly theme does it belong to?**
2. **Which channel and format?** (Instagram / LinkedIn / TikTok / Facebook / X / YouTube / email — video / carousel / static / text / newsletter)
3. **What is the intended CTA?** (comment / click / DM / book a demo / subscribe / buy)
4. **When is approval due, and who is writing it?**

## Principles

1. **One brief = one piece = one angle = one CTA.** Do not stack messages. If several points are needed, split into a carousel or a series.
2. **An angle is a specific point of view, not a topic.** "Skincare routines" is a topic. "Three morning habits that quietly make your skin worse — and everyone thinks they help" is an angle.
3. **The hook must stand alone.** Reading the first line should tell you what the piece is about without any context.
4. **The source insight must be quoted verbatim with its source.** Pull it from `09-customer-insight-global`: which internal monologue, pain, or objection is this piece aimed at.
5. **Evidence goes in the brief, not on the writer's to-do list.** Numbers, testimonials, and case studies are supplied here, already sourced.
6. **Maximum 3 body points.** More than that means it should be a different piece.
7. **Every claim must be substantiable.** If evidence cannot be cited, the claim does not go in the brief.

## Workflow

### 1. Place the piece in the system

Take from the calendar (`01-content-calendar-global`): publish date, channel, format, funnel stage, pillar. Then set one — and only one — objective: reach / trust / conversion / engagement.

### 2. Lock the angle and the source insight

- Read the insight file (`09-customer-insight-global`): where is the reader in the journey — unaware of the problem, evaluating solutions, or close to buying.
- Pick one insight (an internal monologue, a pain, or an objection) as the anchor and quote it verbatim in the brief.
- Write the angle: the specific point of view that works that insight, and that does not repeat a recently published angle.

### 3. Write 3 hook options

- **Hook A — Pain**: opens on the reader's frustration.
- **Hook B — Curiosity**: a question or statement that creates an open loop.
- **Hook C — Contrarian / surprise**: contradicts the category's default belief.

Recommend one with a short reason. The writer may choose differently if they can justify it.

### 4. Set the key message and body structure

- Key message: exactly one sentence — the single thing this piece must land.
- Body: at most 3 points, one line each in the brief.
- Evidence and social proof: the specific number, testimonial, or case study to use, with its source noted.

### 5. Define CTA and distribution

- Primary CTA: a specific, performable action — not "get in touch".
- Micro-CTA (optional): comment a keyword, save, share to a colleague.
- Publish time by channel (see the calendar), hashtags per platform norms (Instagram 3-5 targeted, LinkedIn 3, TikTok 3-5 trend plus niche, Facebook 0-2, X 1-2), cross-post plan and what changes when cross-posting, and whether the post gets paid amplification afterwards.
- If the piece is a paid partnership or contains affiliate links, state the disclosure wording here — FTC endorsement rules apply to organic posts.

### 6. Visual direction and handoff

- Visual concept in 1-2 sentences, dominant colors taken from the brand guideline (`[primary color]`, `[secondary color]` placeholders resolved from `.agents/product-marketing-context-global.md`), and any text overlay needed (a pulled quote or a number).
- For a detailed visual brief, hand off to `42-image-brief-global`, `43-carousel-brief-global`, or `44-video-editor-brief-global`.
- Only brief visuals after the copy is approved. Briefing both in parallel means reworking both.

## Output structure

File name: `content-brief-[piece-name]-[YYYYMMDD].md`

```markdown
# Content Brief — [Internal title]

## Placement
| Item | Detail |
|------|--------|
| Internal title | |
| Channel | |
| Format | video / carousel / static / text / email |
| Funnel stage | TOFU / MOFU / BOFU |
| Pillar | |
| Target publish date | |
| Approval deadline | |
| Writer | |

## Angle and objective
- **Source insight (from 09):** "[internal monologue / pain / objection — verbatim]"
- **Angle:** [specific point of view — not a topic]
- **Objective:** [exactly one — reach / trust / conversion / engagement]
- **Reader's stage:** [unaware / evaluating / close to buying]

## Hooks — 3 options
- **Hook A — Pain:** [...]
- **Hook B — Curiosity:** [...]
- **Hook C — Contrarian / surprise:** [...]
- **Recommended:** [which one + short reason]

## Core content
- **Key message (one sentence):** [...]
- **Body (max 3 points):**
  1. [Point 1]
  2. [Point 2]
  3. [Point 3]
- **Evidence / social proof:** [specific number, testimonial, or case study + source]

## CTA
- **Primary CTA:** [specific, performable]
- **Micro-CTA (optional):** [comment keyword / save / share]
- **Disclosure required:** [none / paid partnership / affiliate — exact wording]

## Brand voice
- Tone: [reference Brand Voice Document, section II]
- Banned words to avoid: [reference section III]

## Visual direction
- **Concept:** [1-2 sentences]
- **Dominant colors:** [from brand guideline]
- **Text overlay:** [quote or number to place on the asset]
- **Detailed visual brief:** hand off to `42-image-brief-global` / `43-carousel-brief-global` / `44-video-editor-brief-global`

## Distribution
- **Publish time:** [per-channel peak]
- **Hashtags:** [per platform norm]
- **Cross-post:** [which channels, what changes]
- **Paid amplification after publish:** Yes / No
```

## Related skills

- `01-content-calendar-global`: supplies placement (date, channel, format, pillar) — runs before the brief.
- `09-customer-insight-global`: supplies the source insight, quoted verbatim into the brief.
- `35-brand-voice-global`: every brief cites tone and banned words from it.
- `37-social-caption-global`, `04-script-video-global`, `05-ad-copy-global`, `14-email-marketing-global`: production skills that take this brief as input.
- `42-image-brief-global`, `43-carousel-brief-global`, `44-video-editor-brief-global`: detailed visual briefs, after copy approval.

## Quality checklist

- One piece = one angle = one CTA — no stacked messages.
- Source insight quoted verbatim with its source noted.
- All 3 hooks are genuinely different directions (pain / curiosity / contrarian).
- Key message is exactly one sentence.
- Body has at most 3 points.
- Evidence is specific and sourced — nothing left as "writer to find".
- CTA is specific and performable, not generic.
- Brand voice referenced (tone plus banned words).
- Visual direction present, with the correct downstream visual brief named.
- Disclosure requirement stated where a material connection exists.
- A writer could start immediately without asking a follow-up question.
