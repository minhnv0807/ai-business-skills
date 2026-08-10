---
name: 43-carousel-brief-global
description: "Use when a multi-slide carousel is needed for Instagram, Facebook, or LinkedIn — a narrative arc with the hook on slide one, value through the middle, CTA on the last, headline, body, visual direction, and background per slide, plus an HTML preview to approve the concept before production. Trigger on 'carousel brief', 'make a carousel', 'turn this into slides', 'LinkedIn carousel', 'slide by slide breakdown', 'preview the carousel first'. Not for — a single static image, see `42-image-brief-global`; the caption posted with it, see `37-social-caption-global`; production steps inside Canva or Figma, see `45-design-tool-brief-global`; scoring the finished slides, see `47-design-review-global`."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "carousel brief"
  - "make a carousel"
  - "turn this into a carousel"
  - "slide brief"
  - "LinkedIn carousel"
  - "render a carousel preview"
  - "create a carousel"
output: "File .md — slide-by-slide brief (headline, body, visual direction, background color) plus HTML preview instructions to approve the concept before the designer starts production."
related:
  - product-marketing-context-global
  - 36-content-brief-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 45-design-tool-brief-global
  - 46-brand-guideline-global
  - 47-design-review-global
  - 01-content-calendar-global
---

# Carousel Brief (Global)

A carousel is not a stack of images — it is a sequence, and every slide has to pull the reader to the next one. Slide 1 decides whether anyone swipes. The final slide must carry a clear CTA. Never invent the content: if something is missing, ask the user first.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the brand guideline, and the source content if available. If the user has not supplied content, ask up to 4 questions:

1. **Topic and source content?** Is this carousel adapted from an existing piece, or written from scratch?
2. **Objective and funnel stage?** Education, proof, offer, tips, story, or comparison — TOFU, MOFU, or BOFU?
3. **Channel and slide count?** Instagram, Facebook, or LinkedIn — how many slides (5-7 recommended)?
4. **Copy and tone?** Is the per-slide copy written already, and should the tone be conversational, professional, bold, or story-led?

## Principles

1. **Slide 1 matters most** — put 40% of the effort into the hook. It decides swipe versus scroll-past.
2. **Approve the copy before opening a design tool.** Never work in the other order.
3. **One idea per slide.** A carousel is not a slide deck — do not pack in text.
4. **5-7 slides is the sweet spot.** Beyond 9, drop-off is heavy. If the content needs more than 7, split it into a two-part series.
5. **Always close with a CTA.** A carousel without a CTA wastes the whole effort.
6. **Text limits:** headline max 8 words, subtext max 15 words, body max 25 words per slide.

## Workflow

### 1. Set the narrative arc

A strong carousel has an explicit arc before content is distributed across slides:

```
Hook -> Problem -> Insight -> Solution -> Proof -> CTA
```

Fix the arc first, then split the content. With existing source material: slide 1 is the strongest hook (pain point, question, or surprising number), the middle slides carry proof and explanation, and the last slide carries a clear action.

### 2. Write the copy slide by slide

Each slide gets a headline (max 8 words), body (max 25 words), and visual direction. Copy is approved before any layout work begins.

### 3. Brief visual direction per slide

Never leave the designer guessing. Background colors come from the brand guideline: the hook and CTA slides use a dark or saturated ground ([primary color], or a gradient from [primary color] to [secondary color]) for contrast, while body slides use a light ground for breathing room.

### 4. Render an HTML preview to approve the concept

Before handing production to the designer, render one HTML preview file:

- Canvas: 1080x1080 per slide (1:1); 900x900 is fine for a lighter preview.
- Fonts: [heading font] / [body font] from the brand guideline (web fonts where available).
- Navigation: previous/next controls plus a "1 / N" counter in the lower right.
- Hook and CTA slides: dark ground, light type. Body slides: light ground, accent-colored eyebrow, bold headline.

The HTML preview approves the concept — it is not a production file. Once approved, the designer builds the real asset in Canva, Figma, or Adobe Express.

## Output structure

File name: `carousel-brief-[name]-[YYYYMMDD].md`

```markdown
# Carousel Brief — [Name]

## Overview
| Item | Detail |
|------|--------|
| Purpose | |
| Channel | |
| Funnel stage | TOFU / MOFU / BOFU |
| Slide count | |
| Dimensions | 1080x1080 (Feed) / 1080x1350 (Portrait) / 1200x1500 (LinkedIn document) |
| Tone | |
| Deadline | |
| Max revision rounds | |

## Brand direction (applies to the whole carousel)
- Dominant ground: [white / primary color / gradient primary to secondary / mixed]
- Heading font: [heading font] Bold — color [...]
- Body font: [body font] Regular — color [...]
- Accent: [secondary color] — used for highlights, figures, and CTA
- Logo: at minimum on slide 1 and the final slide (or every slide if the brand guideline requires it), positioned per the guideline

## Slide 1 — HOOK (decides the swipe)
| Element | Content |
|---------|---------|
| Headline | [strong hook — pain, curiosity, or a surprising number; max 8 words] |
| Subtext | [one supporting line — max 15 words] |
| Visual | [full-color ground / bold typography / emotive image] |
| Micro-CTA | "Swipe" — or drop it if the hook is strong enough |
| Ground | [dark or saturated — [primary color] — maximum contrast] |

## Slide 2 — PROBLEM / SETUP
| Element | Content |
|---------|---------|
| Headline | |
| Body | |
| Visual | [icon / illustration / minimal text layout] |
| Ground | [light — breathing room after slide 1] |

## Slide 3 — INSIGHT / TURNING POINT
| Element | Content |
|---------|---------|
| Headline | |
| Body | |
| Visual | [large figure / quote / simple diagram] |
| Accent | [highlight the figure in [secondary color]] |

## Slide 4 — SOLUTION / VALUE
| Element | Content |
|---------|---------|
| Headline | |
| Body | |
| Visual | |

## Slide 5 — PROOF (if available)
| Element | Content |
|---------|---------|
| Headline | |
| Body | [testimonial / result figure / short case study] |
| Visual | [screenshot / quote card / before-after] |

## Slide N-1 — PRE-CTA / RECAP
| Element | Content |
|---------|---------|
| Headline | [summarize the value in one line] |
| Body | [restate the reason to act] |

## Final slide — CTA
| Element | Content |
|---------|---------|
| Headline | [clear CTA — verb plus a specific benefit] |
| Subtext | [what happens next] |
| CTA button | [text plus link, or "comment [keyword]"] |
| Logo + contact | [full logo, website, handle, or email per campaign] |
| Ground | [dark ground matching slide 1 — closes the visual loop] |

## Do not
- Use colors outside the brand palette
- Overload the frame with text — keep overlay text light and legible
- Substitute fonts other than [heading font] / [body font]
- Put more than one idea on a slide
```

## Channel notes

| Channel | Format | Notes |
|---------|--------|-------|
| Instagram / Facebook | 1080x1080 (1:1) or 1080x1350 (4:5) | 2-10 cards; 4:5 occupies more of the mobile screen |
| LinkedIn document post | 1080x1080 or 1200x1500, exported as PDF | Uploaded as a document; keep type larger — it renders small in feed |
| Pinterest idea pin | 1000x1500 (2:3) | Vertical only; heavier text tolerance than Meta |

## Visual consistency rules

- Number every slide in a corner: "01/07", "02/07", and so on.
- Add a progress bar or dot indicator at the bottom.
- Each slide should pull from the previous one — end each slide with an idea that opens the next.
- No more than three text colors across the whole carousel.
- The hook and CTA slides share the same ground treatment to close the visual loop.

## Deliverables and review

- [ ] Source file (share link, not flattened)
- [ ] Each slide exported separately: PNG 1080x1080
- [ ] All slides exported as a single PDF for easy review (required for LinkedIn document posts)
- [ ] Portrait resize to 1080x1350 if Instagram needs it
- Process: approve copy -> approve HTML preview -> production -> submit draft -> feedback within [X] hours -> max [X] revision rounds -> approved by the lead

## Related skills

- `01-content-calendar-global`: where the carousel sits in the publishing calendar.
- `42-image-brief-global`: use for a single static instead of a slide sequence.
- `41-campaign-asset-list-global`: the carousel's place in the campaign asset list and its deadline.
- `45-design-tool-brief-global`: production direction once the concept is approved.
- `46-brand-guideline-global`: source of colors, fonts, and logo rules.
- `47-design-review-global`: score the carousel after submission.

## Quality checklist

- [ ] Clear narrative arc: hook, value, CTA — one idea per slide
- [ ] Slide 1 hook is genuinely strong (pain, curiosity, or figure)
- [ ] Final slide has a CTA and states the next step
- [ ] 5-7 slides; anything longer is split into a series
- [ ] Headline max 8 words, body max 25 words per slide
- [ ] Per-slide copy approved before production
- [ ] Background color specified per slide, taken from the brand guideline
- [ ] Slide numbering and consistency rules included
- [ ] HTML preview rendered and approved before production
- [ ] Deliverables, revision limit, and approver stated
