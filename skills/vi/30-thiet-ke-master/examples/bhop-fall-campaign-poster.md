---
title: BHOP fall menu launch — campaign hero poster
type_artifact: image-generated
mode: business-campaign
subject: Hero poster cho BHOP cafe fall menu launch — close-up latte pour, key message "BHOP là góc thu Hà Nội của bạn", dùng cho landing page bhop.vn/menu-thu + OOH billboard
source_brief: 02-brief-chien-dich/bhop-fall.md
brand_identity:
  logo_path: assets/brand/bhop-logo.svg
  palette: ["#2B1810", "#F5F1E8", "#D4A574"]
  typography: DM Sans + Inter
  style_adjectives: ["cinematic chill", "warm tone", "ambient sound", "slow pacing", "editorial cozy"]
format: banner-hero
aspect_ratio: 16:9
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/bhop-fall-hero.png
  - docs/design/bhop-fall-hero-ooh.png
  - docs/design/bhop-fall-hero.md
created: 2026-05-20
last_updated: 2026-05-20
---

# BHOP fall menu launch — campaign hero poster

## Context

BHOP cafe đang launch fall seasonal menu — 4 drink mới (Caramel Latte Mùa Thu, Cinnamon Matcha, Pumpkin Spice Vietnamese Coffee, Maple Cold Brew). Brief campaign từ `02-brief-chien-dich/bhop-fall.md` đã chốt key message "BHOP là góc thu Hà Nội của bạn" — gợi cảm giác cozy, slow, ambient — không phải product-pushy.

Can 2 deliverable hero image:
1. Landing page hero `bhop.vn/menu-thu` — format 16:9
2. Variant OOH billboard — format 3:4 vertical (gen rieng pass thu 2 cung prompt logic, crop khac)

Logo BHOP se overlay sau qua Figma — KHONG dua logo vao prompt (AI gen logo de meo). Text key message cung overlay sau, KHONG embed vao image.

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Logo primary | `assets/brand/bhop-logo.svg` |
| Palette | nau `#2B1810` + kem `#F5F1E8` + warm autumn `#D4A574` |
| Typography | DM Sans (headings) + Inter (body) |
| Style adjectives | cinematic chill, warm tone, ambient sound, slow pacing, editorial cozy |
| Brand source | `02-brief-chien-dich/bhop-fall.md` Section "Yeu cau thuong hieu" + `brand-guideline.md` root project |
| Mandatory | giu DOF shallow, warm color grade, "ambient sound vibe", KHONG dung stock photo aesthetic |

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

- File 1: `docs/design/bhop-fall-hero.png` — 1792×1024, 16:9, hd quality
- File 2: `docs/design/bhop-fall-hero-ooh.png` — 1024×1792, 9:16 vertical (gen rieng pass 2 voi same prompt + composition flipped vertical, crop OOH)
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 2 generation passes (1 landscape + 1 vertical OOH). Self-test 3-cau PASS — brand fit (warm earth palette match BHOP guideline), voice fit (cinematic chill match brief), no text in-image (logo + slogan overlay handoff sang Figma).

## Next steps

1. **Figma overlay**: import 2 PNG vào Figma, overlay logo BHOP góc trái dưới + headline DM Sans Bold "BHOP là góc thu Hà Nội của bạn" + CTA "Khám phá menu thu →" link `bhop.vn/menu-thu`
2. **A/B test 2 variant**: hero crop (16:9 landing) vs OOH crop (3:4 billboard) — track CTR landing 7 ngay, chon winner cho variant social
3. **Handoff `05-copy-quang-cao`**: gen caption Facebook/Instagram cho post launch (3 variant tone — emotional / FOMO / educational)
4. **Handoff `01-lich-noi-dung`**: schedule post launch tren FB + IG + TikTok Shop trong tuan 1 launch (xem content calendar fall 2026)
5. **Track metric**: CTR landing page + add-to-cart rate menu thu — feed lai `03-danh-gia-hieu-suat` sau 14 ngay
