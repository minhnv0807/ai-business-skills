---
name: 42-image-brief-global
description: "Use when the user needs a complete static image brief for a designer or photographer: visual objective, concept, mood, composition, overlay copy, colors and fonts read from the brand guideline, channel dimensions, and approval criteria. Trigger on 'image brief', 'visual brief', 'banner brief', 'thumbnail brief', 'static brief', 'brief for the designer', or 'how should this graphic look'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "image brief"
  - "visual brief"
  - "banner brief"
  - "thumbnail brief"
  - "static brief"
  - "brief for the designer"
  - "graphic brief"
  - "photo brief"
output: "File .md — full image brief: overview, concept and mood, composition, overlay copy, platform specs, deliverables, review process. The designer can execute without a follow-up call."
related:
  - product-marketing-context-global
  - 36-content-brief-global
  - 41-campaign-asset-list-global
  - 43-carousel-brief-global
  - 45-design-tool-brief-global
  - 46-brand-guideline-global
  - 47-design-review-global
  - 50-asset-resize-global
  - 30-design-master-global
---

# Image Brief (Global)

A good image brief means the designer finishes without a single clarifying call. Communicate the feeling you want, not just "make it look good". Colors, fonts, and logo usage come from the brand guideline (`46-brand-guideline-global`), never invented here.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the brand guideline, and the asset list (`41-campaign-asset-list-global`) if available. If information is missing, ask up to 4 questions:

1. **Image type and subject?** Social post, ad banner, thumbnail, product shot, lifestyle, or infographic — attached to which campaign or content piece?
2. **Channel and dimensions?** Meta, TikTok, LinkedIn, Pinterest, website, or email — ratio 1:1, 4:5, 9:16, 16:9, 2:3, or custom?
3. **Visual objective and copy?** Stop the scroll, build trust, or drive the click — is the headline, subtext, and CTA written and approved?
4. **Constraints?** Reference images (link or file), deadline, maximum number of revision rounds?

## Principles

1. **Complete enough that nobody has to ask.** Any blank field means the brief is not finished. If a decision is genuinely open, write "designer's call, per brand guideline".
2. **Copy is approved before it is set.** Do not rewrite copy after the layout exists.
3. **References are mandatory.** One reference image replaces a thousand words. "Make it look clean and professional" is not a brief.
4. **One image, one visual objective.** Do not stack three messages into one frame.
5. **More than two revision rounds usually means the brief was unclear,** not that the designer is weak.
6. **If multiple sizes are needed, state the adaptation rules** for each one (see `50-asset-resize-global`).

## Workflow

### 1. Define the visual objective

Before briefing the concept, decide what this image must accomplish in the first three seconds of attention.

| Objective | Visual direction |
|-----------|------------------|
| Stop the scroll | Strong hook, high contrast, pattern interrupt |
| Build trust | Clean, professional, visible social proof |
| Drive the click | Prominent CTA, explicit offer, urgency if it is real |

### 2. Write the full brief

Fill every section of the template below. Leave nothing blank.

### 3. Attach references

Always include 2-3 specific reference images, each annotated with what to learn from it (color? composition? mood?) and what not to copy.

## Output structure

File name: `image-brief-[asset-name]-[YYYYMMDD].md`

```markdown
# Image Brief — [Asset name]

## Overview
| Item | Detail |
|------|--------|
| Project / campaign | |
| Image type | |
| Channel / placement | |
| Dimensions (px) + ratio | |
| Visual objective | Stop the scroll / Build trust / Drive the click |
| Export format | JPG / PNG / WebP |
| Number of deliverables | |
| Designer | |
| Deadline | |
| Max revision rounds | |

## Concept and mood
- One-sentence idea: [what this image is about — readable in one pass]
- Feeling to convey: [Professional / Warm / Playful / Urgent / Minimal / Bold]
- Mood board references:
  - Ref 1: [link or file — learn: color? layout? photographic style?]
  - Ref 2: [...]
  - Ref 3: [...] — do not copy: [...]
- Colors (from the brand guideline):
  - Primary: [primary color]
  - Secondary / accent: [secondary color]
  - Background: [white / solid / gradient / photographic]
  - Text: [dark text on light ground / light text on dark ground]
- Avoid entirely: color [...], style [...], element [...]

## Composition
- Main subject: [real person / product / abstract / type-led / illustration]
- Background: [white / solid / lifestyle scene / studio / blur / texture]
- Focal point: [centered / rule of thirds left or right / full bleed]
- Clear space for text overlay: [yes/no — which corner, roughly which third]
- Visual hierarchy:
  1. [most important element — where the eye lands first]
  2. [second element]
  3. [third element — CTA / logo]

## Overlay copy (approved before it is set)
| Element | Content | Font | Size | Color | Position |
|---------|---------|------|------|-------|----------|
| Headline | | [heading font] Bold | | | |
| Subtext | | [body font] Regular | | | |
| CTA button | | [heading font] Bold | | | |
| Logo | [version: horizontal / stacked / icon only] | — | — | — | [per brand guideline] |

Copy limits: headline max [X] characters, subtext max [X] characters, no more than three text colors in one image.

## Deliverables
- [ ] Source file (share link, not a flattened export)
- [ ] Export [format] — [exact dimensions]
- [ ] Variants if needed: [light/dark version, alternate crop]
- [ ] Remaining sizes per the asset list

## Review process
- Draft 1 due: [date] — feedback within [X] hours
- Max revision rounds: [X] — final approval by: [lead]
- Final deadline: [date]
```

## Platform specs

| Channel | Dimensions | Safe zone | Export | Max file size |
|---------|-----------|-----------|--------|---------------|
| Meta Feed (FB/IG) | 1080x1080 (1:1) or 1080x1350 (4:5) | 20px each edge | JPG, RGB | 30MB |
| Meta Story / Reels | 1080x1920 (9:16) | 250px top / 250px bottom | JPG, RGB | 30MB |
| Meta link/landscape | 1200x628 (1.91:1) | 40px each edge | JPG, RGB | 30MB |
| TikTok cover | 1080x1920 (9:16) | 150px top / 300px bottom | JPG | 10MB |
| LinkedIn single image | 1200x627 (1.91:1) | 40px each edge | JPG/PNG | 5MB |
| Pinterest pin | 1000x1500 (2:3) | 60px each edge | JPG/PNG | 20MB |
| YouTube thumbnail | 1280x720 (16:9) | 60px each edge, avoid bottom-right timestamp | JPG/PNG | 2MB |
| Email header | 600x200 | 10px each edge | JPG | 1MB |
| Website banner | 1440x500 | 100px each edge | JPG/PNG/WebP | 500KB |

> Full size matrix, crop behavior, and resize strategy: read `50-asset-resize-global`.

## Condensed example brief

```
Image brief — Meta Feed 1080x1080 — TOFU, Q3 course launch
Type: single-image ad | Channel: Meta Feed | Objective: stop the scroll within 1.5 seconds
Feeling: bold, mild urgency, professional but not corporate
Subject: type-led, gradient background from [primary color] to [secondary color]
Headline: "[core message — max 60 characters]"
Subtext: "[product name + date window]"
CTA: "Enroll now"
Ref: [link to a bold type-led example — learn contrast and typography, do not copy the palette]
Deadline: [date] | Max revisions: 2
```

## Related skills

- `41-campaign-asset-list-global`: where this image sits in the asset list and its deadline.
- `46-brand-guideline-global`: source of colors, fonts, and logo rules — read before writing the brief.
- `45-design-tool-brief-global`: add step-by-step production direction when the designer works in Canva, Figma, or Adobe Express.
- `43-carousel-brief-global`: use instead when the deliverable is a slide sequence rather than a single frame.
- `47-design-review-global`: score the result once the designer submits.
- `50-asset-resize-global`: adaptation rules when the same master runs at several sizes.
- `30-design-master-global`: when the image should be AI-generated instead of designed by hand.

## Quality checklist

- [ ] One clear visual objective (stop the scroll / build trust / drive the click)
- [ ] Concept has a one-sentence idea plus the feeling to convey
- [ ] 2-3 references included, each annotated with what to learn and what not to copy
- [ ] Colors and fonts read from the brand guideline — no invented hex values
- [ ] Overlay copy approved before handoff
- [ ] Visual hierarchy stated in 1-2-3 order
- [ ] Dimensions, safe zone, and export format match the channel spec
- [ ] Text is legible on mobile; no more than three text colors
- [ ] Deadline and maximum revision rounds stated
- [ ] No section left blank
