# Brand Identity Source

How to auto-detect brand identity from the project context for the `business-*` modes and editorial/infographic/web-mockup/quote-graphic when they target a brand. Goal: find the logo + palette + typography + style adjectives **before** grilling the user — only ask when every other source has been exhausted.

## Search priority (in order, STOP at first hit)

Run all seven layers in sequence, stop as soon as you've found enough info. Don't skip a layer, don't jump ahead.

### Layer 1 — Primary brand logo file

Search paths in this order:
- `assets/brand/logo.svg`
- `assets/brand/logo.png`
- `assets/brand/logo.ai`
- `assets/brand/logo-primary.{svg,png}`
- `brand/logo.{svg,png}`
- `static/brand/logo.{svg,png}`

If you hit one → save the path into frontmatter as `brand_identity.logo_path`.

### Layer 2 — Structured palette file

- `assets/brand/palette.json` (structured)
- `assets/brand/colors.json`
- `assets/brand/tokens.json` (design tokens — may contain palette + typography + spacing)

Parse the JSON, extract `primary`, `secondary`, `accent` keys or a hex-code array.

### Layer 3 — Brand guideline markdown at the project root

- `brand-guideline.md`
- `brand-identity.md`
- `BRAND.md`
- `docs/brand.md`
- `docs/brand-guideline.md`

A full guideline usually contains the palette + typography + voice tone — read, parse, extract.

### Layer 4 — Existing campaign brief

- `02-campaign-brief-global/output.md` Section "Brand mandatories"
- `02-campaign-brief-global/<campaign-slug>.md` Section "Brand mandatories"

A campaign brief almost always carries brand mandatories (logo, palette, font, do/don't) tuned to that specific campaign.

### Layer 5 — PRD frontmatter + Section 2 + Section 6

- `prd.md` frontmatter `target_user` — persona context for style adjectives
- `prd.md` Section 2 "User persona" — visual cues + audience preferences
- `prd.md` Section 6 "Features" — visual concept cues from features

### Layer 6 — package.json / project metadata

- `package.json` field `description` — one-line basic brand hint
- `package.json` field `name` — project name fallback when the brand name is unknown
- `README.md` first paragraph — tagline + positioning hint

### Layer 7 — Ask the user (last resort)

Only ask when all six layers above turn up nothing. Grill four questions:

1. Brand name + industry, one line?
2. Logo file path available? (upload if needed)
3. Palette — 1-3 hex colors or a mood description?
4. Typography preference (serif / sans / display / no idea)?

## Detailed extract logic

### Logo path

- Layer 1 hit → save the raw path directly into frontmatter
- Layer 3+ guideline mentions a logo path in text → resolve it to an absolute path from the project root

### Palette (hex codes)

- Layer 2 JSON → parse the `primary` / `secondary` / `accent` field or array
- Layer 3 guideline → regex-search for `#[0-9a-fA-F]{6}` in the text — extract the first 2-4 hex codes that appear near keywords like "primary" / "main" / "brand color"
- Layer 4 campaign brief → same regex approach
- Validate: valid 6-character hex, not pure `#ffffff` (unless it's a neutral accent)

### Typography

- Layer 2 `tokens.json` → fields `typography.heading` + `typography.body`
- Layer 3 guideline → search for font name patterns (e.g. "Inter", "DM Sans", "Playfair Display", "Garamond", "Helvetica")
- Common signals: "font family", "typeface", "primary font", "heading font"
- Save as `<heading-font> (heading) + <body-font> (body)` or just `<single-font>` if only one

### Style adjectives

- Layer 4 campaign brief tone/mood field — extract 3-5 adjectives
- Layer 3 guideline "Brand voice" section — extract 3-5 words
- Layer 5 PRD persona description — infer adjectives from the persona (e.g. persona "young creative 25-30 urban" → "modern + casual + warm + local-flavored")
- Validate: max 5 adjectives, single words or compounds (e.g. "warm professional", "tech minimalist")

## Print format (transparency line)

After extraction, ALWAYS print the transparency line before Step 4:

```
[brand identity loaded]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574, #F5E6D3 (3 colors)
  Typography:  Inter (body) + DM Sans (heading)
  Style:       cinematic chill, warm tone, ambient
  Source:      brand-guideline.md + 02-campaign-brief-global/lattea-fall.md
```

If partial (only 2 of 4 fields found):

```
[brand identity partial]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574 (2 colors)
  Typography:  (not found — will ask)
  Style:       (not found — will ask)
  Source:      brand-guideline.md
```

→ grill two questions for the two missing fields before generating.

## Section anti-patterns

- Hardcoding the palette when `brand-guideline.md` exists — you must read from the real source
- Skipping the search and asking the user directly — wastes their time when a brand file already exists
- Using partial identity (e.g. logo found, palette skipped) — output drifts and doesn't match the brand
- Translating brand identity field names into another language when saving frontmatter — breaks AI parsing
- Stopping the search at Layer 1 because the logo was found but the palette is still missing — keep going through Layers 2-6 until you have enough
- Trusting an obviously wrong palette extract (e.g. `#cccccc` placeholder instead of the real brand primary) — validate reasonably
- Skipping the transparency line — the user can't see where the AI pulled its data from, no way to trace

## Validation checklist before Step 4

- [ ] Logo path exists (file actually present at the path)?
- [ ] Palette has ≥1 valid hex code (not a pure neutral like `#ffffff`)?
- [ ] Typography has ≥1 identified font name (or an explicit "none → use default")?
- [ ] Style adjectives has ≥3 words (enough for prompt composition)?

If two or more checks fail → grill the user before generating.
