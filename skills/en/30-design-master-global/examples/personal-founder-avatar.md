---
title: Founder avatar — Mark Chen 2026 LinkedIn refresh
type_artifact: image-generated
mode: personal-brand
subject: Portrait 3/4 angle Asian-American male early 30s — AI marketing strategist + studio founder, warm professional vibe for LinkedIn-first thought leadership across Asia/global B2B audience
source_brief: modules/personal-branding/en/22-personal-brand-context-global/output.md
brand_identity:
  logo_path: assets/personal/mark-chen-monogram.png
  palette: ["#2B1810", "#F5F1E8", "#D4A574"]
  typography: DM Sans
  style_adjectives: ["warm professional", "tech-savvy", "creative", "approachable", "confident"]
format: poster
aspect_ratio: 1:1
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/mark-chen-avatar-2026.png
  - docs/design/mark-chen-avatar-2026.md
created: 2026-05-20
last_updated: 2026-05-20
---

# Founder avatar — Mark Chen 2026 LinkedIn refresh

## Context

Mark is shifting from casual Twitter/Instagram presence to LinkedIn-first thought leadership for his positioning "AI marketing strategist + studio founder" (see `22-personal-brand-context-global`). His current avatar is a casual cafe snapshot — fine for personal channels but mis-signaling for the LinkedIn B2B audience (CMOs, heads of marketing, agency owners across Asia and the US) evaluating him by his profile photo in the first 3 seconds.

He needs a new avatar: more polished, yet still carrying that "warm, human, not corporate" undertone — explicitly NOT a stock-photo corporate headshot. Style adjectives locked in: warm professional + tech-savvy + creative. The output will be used consistently across LinkedIn / X (Twitter) / personal site `markchen.ai` + studio site `lumiere.studio`, and will also serve as the base reference for AI avatar production (`24-ai-avatar-production-global`) for future thought leadership videos (HeyGen / Synthesia avatar clone).

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Reference photo | `assets/personal/mark-chen-reference-2026.jpg` |
| Logo monogram | `assets/personal/mark-chen-monogram.png` |
| Primary palette | brown `#2B1810` + cream `#F5F1E8` + gold accent `#D4A574` |
| Brand typography | DM Sans (headings) — does not appear in avatar, context only |
| Style adjectives | warm professional, tech-savvy, creative, approachable, confident |
| Position statement | "AI marketing strategist + studio founder" |

## Prompt composed (5-section structure)

```
[Subject + composition]
Portrait 3/4 angle of Asian-American male early 30s, smart casual attire (linen shirt warm earth tone, no logo), confident eye contact slightly off-camera, gentle smile, holding laptop subtle in foreground blur, head-and-shoulders crop, centered composition with negative space on upper right.

[Lighting + mood]
Natural daylight from window camera-left, warm golden hour temperature, soft fill from camera-right, rim light separating hair from background, calm and focused mood, magazine editorial feel not corporate stiff.

[Palette + textures]
Warm brown linen shirt with cream cardigan undertone, golden ambient light, muted café-style background blur in soft brown and amber, natural skin texture, no plastic AI-skin.

[Style + medium]
Photographic realistic 85mm portrait lens, shallow depth of field with creamy bokeh, editorial professional photography, magazine-quality, balanced highlights and shadows, color graded warm cinematic.

[Negatives]
no extra fingers, no warped face features, no logo on clothing, no text in frame, no plastic AI-slop skin texture, no overly stylized illustration, no harsh studio flash, no corporate gray background, no glasses unless from reference.
```

## Output

- File: `docs/design/mark-chen-avatar-2026.png` (1024×1024, HD quality)
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 1 generation pass, no variants needed (personal brand avatar isn't a multi-variant exercise like a logo). Self-test 3-question PASS (warm professional vibe + tech-savvy undertone + recognizable as the same person from reference).

## Next steps

1. Update LinkedIn / X / `markchen.ai` / `lumiere.studio` — single consistent avatar across all channels
2. Use as base reference for `24-ai-avatar-production-global` for thought leadership videos (HeyGen / Synthesia avatar clone, with US/EU AI-disclosure compliance per region context)
3. Variant 16:9 for LinkedIn banner — re-gen with `banner-hero` format + wider crop
4. After 30 days track LinkedIn profile CTR — if it drops, A/B test a second variant with a different style adjective (e.g. add "playful")
