---
name: 46-brand-guideline-global
description: "Use when the user wants to create or update a brand guideline: brand personality, color system, typography, logo usage, imagery and visual tone, component rules, accessibility contrast standards, standard asset sizes, naming and file organization. The output is the foundation document every design skill and the Brand Hub reads from. Trigger on 'brand guideline', 'brand book', 'brand identity', 'style guide', 'brand standards', 'brand palette', or 'update the brand guide'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "brand guideline"
  - "brand book"
  - "brand identity"
  - "style guide"
  - "brand standards"
  - "brand palette"
  - "update the brand guide"
output: "File .md — brand guideline in 8 parts: foundation, color, typography, logo, visual style, components, standard sizes, naming. It is the source of truth for skills 42-50 and for the Brand Hub in 34-ai-marketing-os-global."
related:
  - product-marketing-context-global
  - 34-ai-marketing-os-global
  - 30-design-master-global
  - 42-image-brief-global
  - 45-design-tool-brief-global
  - 47-design-review-global
  - 49-html-email-template-global
---

# Brand Guideline (Global)

A brand guideline is not a beautiful document to archive — it is a daily working tool. A good one lets everyone produce on-brand work without asking the lead. This is the foundation document: every design skill (42-50) and the Brand Hub read from it.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the logo files, and any existing brand material. If information is missing, ask up to 4 questions:

1. **New or an update?** If an update: what changed recently (new logo, new palette, new tone)?
2. **Scope?** Digital only, print, or both — and which platforms must it cover (Meta, TikTok, LinkedIn, website, email, design tools)?
3. **Who uses it?** Designers only, or content and the wider team?
4. **What assets exist?** Logo files (SVG/PNG), confirmed color values, chosen fonts — send everything available. If colors or fonts are not settled, this skill will propose 2-3 directions with rationale.

## Principles

1. **A guideline is a living document** — update it whenever a brand decision changes, and stamp the last-updated date.
2. **Every rule states when to use it and when not to.** A rule without context gets ignored.
3. **Conflicts between the guideline and a brief go to the lead,** never resolved unilaterally.
4. **New designers read it before touching any asset.**
5. **Every exception is documented.** There are no silent exceptions.
6. **The guideline feeds the Brand Hub:** once approved, push this file into the Brand Hub (`34-ai-marketing-os-global`) so every role and agent reads one source.
7. **Accessibility is part of the brand, not an afterthought.** In the US and EU it is frequently a legal requirement, not a preference.

## Workflow

### 1. Lock the brand foundation

Three precise adjectives plus three adjectives to avoid, and the feeling a viewer should have when they see the work. If positioning is not settled, read `09-customer-insight-global` and the existing positioning first.

### 2. Lock the color system and typography

From the logo and the personality, set the palette (primary, secondary, background, text) and the fonts ([heading font], [body font], plus a fallback). Every color carries usage rules and a contrast check.

### 3. Define logo, visual style, and components

Logo versions and don'ts; photography, icon, and background style; components (button, card, tag, divider) so every asset stays consistent.

### 4. Standardize sizes, naming, and file organization

Asset size table by channel, naming convention, folder tree. Then set up the brand kit in the team's design tool.

## Output structure

File name: `brand-guideline-[brand-name]-[YYYYMMDD].md`. Bracketed values are placeholders — fill them with the brand's real colors and fonts. The illustrative palette below is a neutral EXAMPLE only; replace it.

```markdown
# Brand Guideline — [Brand name]
Last updated: [date] | Owner: [name] | Version: [x.y]

## Part 1 — Brand foundation
Brand personality: [Brand] is [three precise adjectives] — not [three adjectives to avoid].
(Example only: "Sharp, Practical, Empowering — not Corporate, Fluffy, Generic")

Brand voice in visual work:
- Seeing our design, a viewer should feel: [...]
- A viewer should never feel: [...]

## Part 2 — Color system
Primary palette:
| Name | Hex | RGB | Use when | Do not use when |
|------|-----|-----|----------|-----------------|
| [primary color] | [hex] | [rgb] | Headings, CTAs, dominant grounds | Ground for long-form body text |
| [secondary color] | [hex] | [rgb] | Accents, highlights, figures, icons | Large-area backgrounds |
| [background color] | [hex] | [rgb] | White ground, cards, content areas | — |

Secondary palette:
| Name | Hex | Use when |
|------|-----|----------|
| [strong text color] | [hex] | Body text and headings on light grounds |
| [muted text color] | [hex] | Subtext, captions, metadata |
| [light background color] | [hex] | Light section grounds, cards, tags |
| [gradient] | [primary] to [secondary] | Hero, CTA section, covers |

(Illustrative example only — replace with the real brand values: primary navy #0F4C81, secondary amber #F2A104.)

Approved combinations:
- [primary color] ground + light text
- Light ground + [primary color] heading + [secondary color] accent
- Gradient [primary to secondary] + light text
- [light background color] + [primary color] text

Forbidden combinations:
- [secondary color] as a large-area background
- Light text on [light background color] (insufficient contrast)
- Three or more dominant colors in one asset
- Any color outside the palette without approval
- Neon or oversaturated colors that break the brand tone

## Part 3 — Typography
Primary fonts: [heading font] (headings) / [body font] (body). Fallback: [fallback font], sans-serif.

| Style | Weight | Size range | Used for |
|-------|--------|-----------|----------|
| Display | Black 900 | 48-72px | Hero headline, large figures |
| H1 | Bold 700 | 36-48px | Page or post headline |
| H2 | Bold 700 | 24-32px | Section heading |
| H3 | SemiBold 600 | 18-22px | Card heading |
| Body | Regular 400 | 14-16px | Paragraphs |
| Caption | Regular 400 | 11-13px | Metadata, timestamps |
| CTA | Bold 700 | 14-16px | Button text |

Typography don'ts:
- No fonts outside [heading font] / [body font] / fallback
- No ALL CAPS for long paragraphs
- No justified text
- No body text below 13px (print) or 14px (mobile)
- One typeface family, many weights — do not mix families

## Part 4 — Logo usage
| Version | Use when | File |
|---------|----------|------|
| Full logo (color) | Header, cover, first slide, landing page | SVG + PNG @2x |
| Full logo (light/reversed) | On dark grounds or [primary color] | SVG + PNG @2x |
| Icon only (color) | Watermark, favicon, story, avatar | SVG + PNG @2x |
| Icon only (light) | Dark grounds, small sizes | SVG + PNG @2x |

Rules:
- Minimum clear space 16px on every side — never crop tight
- Minimum width 80px (below that it loses definition)
- Place on a light ground or [light background color] — never on a busy photograph

Logo don'ts: no rotation, no stretching or squashing, no added shadow/outline/glow, no colors outside the approved versions, no placement that muddies the mark.

## Part 5 — Imagery and visual style
- Photography: [tone — for example warm, natural, candid but professional] — no filters that fight the brand tone
- Prefer real people; avoid generic stock that dilutes the brand
- Never use images carrying another source's watermark
- Icons: [line / filled rounded] — single-color in [primary color] or [secondary color]
- Backgrounds: [approved grounds] — no busy patterns; keep flat, maximum two blended colors
- Watermark logo stays subtle in a corner

## Part 6 — Component rules
Primary button: fill [primary color], light bold 15px text, radius [x]px, padding 12x24px, hover ~10% darker
Secondary button: transparent, 1.5px border [primary color], text [primary color], hover fill [light background color]
Card: light ground, 1px soft border, radius 12px, soft shadow, padding 24px
Tag/badge: ground [light background color], text [primary color] 12px medium, pill radius, padding 4x12px
Divider: 1px soft neutral (roughly 8% black)

## Part 7 — Standard asset sizes
Social: square feed 1080x1080 (1:1), portrait feed 1080x1350 (4:5), story/reels/TikTok 1080x1920 (9:16), Facebook cover 820x312, LinkedIn post 1200x627, Pinterest pin 1000x1500, YouTube thumbnail 1280x720
Meta ads: feed 1080x1080, story 1080x1920 (keep content ~14% off the top and bottom edges), carousel 1080x1080 (2-10 cards), link banner 1200x628
Documents: slide 16:9 1920x1080, A4 portrait/landscape, email width 600px
(Full table with safe zones and resize strategy: read `50-asset-resize-global`.)

## Part 8 — Accessibility, dos and don'ts, file organization
Accessibility (WCAG 2.2 Level AA):
- Body text contrast at least 4.5:1 against its background
- Large text (18pt / 24px, or 14pt / 18.66px bold and above) at least 3:1
- UI components, icons, and graphical objects carrying meaning at least 3:1
- Never convey meaning by color alone — pair it with a label, icon, or pattern
- Minimum 14px display type on mobile; captions on all video
- Note: accessibility is legally enforced in many markets (ADA and Section 508 in the US, the European Accessibility Act in the EU) — treat AA as the floor, not the goal

DO:
- Use generous whitespace — do not fill every gap
- Keep hierarchy obvious: H1 dominant, supporting text smaller and lighter
- Keep text legible on a phone (>=14px)
- Keep spacing consistent on an 8px grid
- Pick one alignment and hold it
- Preview on mobile before sending for approval
- Put the logo on every asset

DON'T:
- More than three colors in one asset
- Text over busy imagery with no overlay
- Fonts or colors outside the guideline without approval
- JPG exports below 85% quality

Naming: [Brand]_[Campaign]_[AssetType]_[Size]_[Version]_[Status]
Status tags: _DRAFT / _REVIEW / _APPROVED / _ARCHIVED
Folders:
/[Brand]/Brand Assets/ (logo, fonts, icons)
/[Brand]/Campaigns/[CampaignName]/Assets/Working|Final|Archived/
```

## Setting up the design tool brand kit

Once the guideline is approved, load it into whichever tool the team uses:

1. Add the palette values (Canva Brand Kit / Figma color variables / Adobe Express brand).
2. Upload [heading font] and [body font], or add them directly if they are available as web fonts.
3. Save every logo version into the brand kit.
4. Save the component styles (button, card, tag) as reusable components or styles.

## Standard design process in the system

```
Brief from the lead
  -> Designer confirms objective, audience, platform, mood
  -> Concept MVP (HTML or fast draft — 30 minutes max)
  -> Lead approves the concept
  -> Production in Canva / Figma / Adobe Express against this guideline
  -> Export at the correct sizes, named to convention
  -> Save the source link into the asset library, files into shared storage
```

## Related skills

- `product-marketing-context-global` and `34-ai-marketing-os-global`: this guideline is a core Brand Hub file.
- `42-image-brief-global`, `43-carousel-brief-global`, `44-video-editor-brief-global`, `45-design-tool-brief-global`: every design brief reads colors, fonts, and logo rules from here.
- `47-design-review-global`: brand consistency is scored against this document.
- `49-html-email-template-global` and `12-landing-page-brief-global`: email and landing page design tokens come from here.
- `50-asset-resize-global`: full size matrix and safe zones.
- `30-design-master-global`: AI image generation reads brand identity from this guideline.

## Quality checklist

- [ ] All 8 parts present: foundation, color, typography, logo, visual style, components, sizes, naming
- [ ] Every color has a value plus "use when" and "do not use when"
- [ ] Approved and forbidden combinations are listed
- [ ] Typography has a full scale plus don'ts
- [ ] Logo has all versions, clear space, minimum size, and don'ts
- [ ] Component rules cover button, card, tag, and divider
- [ ] WCAG AA contrast ratios stated (4.5:1 body, 3:1 large text and UI)
- [ ] Naming convention, status tags, and folder tree written down
- [ ] Last-updated date, owner, and version at the top of the file
- [ ] Pushed into the Brand Hub and loaded into the design tool brand kit
- [ ] No placeholder left unfilled when delivered to a client
