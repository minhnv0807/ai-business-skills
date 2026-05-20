---
title: Lattéa fall menu launch — campaign hero poster
type_artifact: image-generated
mode: business-campaign
subject: Hero poster for Lattéa coffee chain fall menu launch — close-up latte pour, key message "Lattéa is your weekend autumn corner", used on landing page lattea.co/fall + OOH billboard variant
source_brief: 02-campaign-brief-global/lattea-fall.md
brand_identity:
  logo_path: assets/brand/lattea-logo.svg
  palette: ["#2B1810", "#F5F1E8", "#D4A574"]
  typography: DM Sans + Inter
  style_adjectives: ["cinematic chill", "warm tone", "ambient", "slow pacing", "editorial cozy"]
format: banner-hero
aspect_ratio: 16:9
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/lattea-fall-hero.png
  - docs/design/lattea-fall-hero-ooh.png
  - docs/design/lattea-fall-hero.md
created: 2026-05-20
last_updated: 2026-05-20
---

# Lattéa fall menu launch — campaign hero poster

## Context

Lattéa, a 12-location specialty coffee chain (US Pacific Northwest + Singapore flagship), is launching its fall seasonal menu — 4 new drinks (Maple Caramel Latte, Cinnamon Matcha, Pumpkin Spice Cold Brew, Spiced Maple Cortado). The campaign brief in `02-campaign-brief-global/lattea-fall.md` locked the key message: **"Lattéa is your weekend autumn corner"** — evoking cozy, slow, ambient — explicitly NOT product-pushy.

Two deliverables needed:
1. Landing page hero `lattea.co/fall` — format 16:9
2. OOH billboard variant — format 9:16 vertical (separate generation pass, same prompt logic, different crop)

The Lattéa logo will be overlaid afterwards in Figma — **DO NOT** include the logo in the prompt (AI-generated logos warp easily). The key message text is also overlaid afterwards, **NOT embedded** into the image.

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Primary logo | `assets/brand/lattea-logo.svg` |
| Palette | brown `#2B1810` + cream `#F5F1E8` + warm autumn `#D4A574` |
| Typography | DM Sans (headings) + Inter (body) |
| Style adjectives | cinematic chill, warm tone, ambient, slow pacing, editorial cozy |
| Brand source | `02-campaign-brief-global/lattea-fall.md` Section "Brand Requirements" + project root `brand-guideline.md` |
| Mandatory | keep shallow DOF, warm color grade, "ambient sound" vibe, NO stock-photo aesthetic |

## Prompt composed (5-section structure)

```
[Subject + composition]
Close-up of female hand pouring latte art into ceramic cup on warm wooden cafe table, autumn leaves softly blurred through cafe window background, cozy interior partially visible (wooden chair edge, hanging plant blur), composition rule-of-thirds with cup at right-third intersection, generous negative space upper-left for text overlay later.

[Lighting + mood]
Golden hour warm sunlight streaming through cafe window camera-left, soft natural ambient light, gentle rim light on cup steam rising, warm interior lamp glow at far background, mood is calm and contemplative not energetic, slow cinema feel.

[Palette + textures]
Brown wooden table tones + cream ceramic cup + warm autumn ochre and amber + soft golden backlight; tactile wood grain texture, smooth ceramic, slight paper grain overall.

[Style + medium]
Cinematic photography 85mm portrait lens, shallow depth of field with strong bokeh, editorial Saatchi-Saatchi feel, slightly grainy paper texture overlay (subtle), warm color grade lifted shadows, no oversaturated colors.

[Negatives]
no logo in frame, no text overlay, no neon or saturated colors, no stock photo aesthetic, no fingers with wrong count, no UI elements, no QR code, no watermark, no AI-slop plasticky surfaces, no harsh shadows.
```

## Output

- File 1: `docs/design/lattea-fall-hero.png` — 1792×1024, 16:9, HD quality
- File 2: `docs/design/lattea-fall-hero-ooh.png` — 1024×1792, 9:16 vertical (second pass, same prompt with composition flipped vertical, OOH crop)
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 2 generation passes (1 landscape + 1 vertical OOH). Self-test 3-question PASS — brand fit (warm earth palette matches Lattéa guideline), voice fit (cinematic chill matches brief), no text in-image (logo + tagline overlay handed off to Figma).

## Next steps

1. **Figma overlay**: import both PNGs into Figma, overlay Lattéa logo bottom-left + headline DM Sans Bold "Lattéa is your weekend autumn corner" + CTA "Discover the fall menu →" linking `lattea.co/fall`
2. **A/B test 2 variants**: hero crop (16:9 landing) vs OOH crop (9:16 billboard) — track landing CTR for 7 days, pick winner for social variant
3. **Handoff `05-ad-copy-global`**: generate Instagram/TikTok captions for launch post (3 tone variants — emotional / FOMO / educational)
4. **Handoff `01-content-calendar-global`**: schedule launch post on Instagram + TikTok + LinkedIn in launch week 1 (see fall 2026 content calendar)
5. **Track metric**: landing CTR + add-to-cart rate on the fall menu — feed back to `03-performance-eval-global` after 14 days
