---
title: Avatar founder OPA — Minh Nguyen 2026
type_artifact: image-generated
mode: personal-brand
subject: Portrait 3/4 angle Vietnamese male early 30s — AI marketing strategist OPA founder, warm professional vibe cho LinkedIn-first thought leadership
source_brief: modules/personal-branding/vi/22-personal-brand-context/output.md
brand_identity:
  logo_path: assets/personal/minh-monogram.png
  palette: ["#2B1810", "#F5F1E8", "#D4A574"]
  typography: DM Sans
  style_adjectives: ["warm professional", "tech-savvy", "creative", "approachable", "confident"]
format: poster
aspect_ratio: 1:1
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/personal-minh-avatar-2026.png
  - docs/design/personal-minh-avatar-2026.md
created: 2026-05-20
last_updated: 2026-05-20
---

# Avatar founder OPA — Minh Nguyen 2026

## Context

Minh đang chuyển hướng từ Facebook/Twitter casual sang LinkedIn-first thought leadership cho positioning "AI marketing strategist + OPA founder" (xem `22-personal-brand-context`). Avatar hiện tại là ảnh chụp casual quán cafe — không phù hợp cho LinkedIn audience B2B (CMO, marketing director, business owner) đang đánh giá Minh qua avatar đầu tiên.

Cần avatar mới: chỉn chu hơn nhưng vẫn giữ được hơi thở "ấm áp, đời thường" — không phải corporate stock photo. Style adjectives đã khai: warm professional + tech-savvy + creative. Sẽ dùng làm avatar đồng nhất LinkedIn / Twitter / website OPA + làm base reference cho AI avatar production (`24-ai-avatar-production`) ở các thought leadership videos về sau.

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Reference ảnh thật | `assets/personal/minh-reference-2026.jpg` |
| Logo monogram | `assets/personal/minh-monogram.png` |
| Palette chính | nâu `#2B1810` + kem `#F5F1E8` + gold accent `#D4A574` |
| Typography brand | DM Sans (headings) — không xuất hiện trong avatar, chỉ context |
| Style adjectives | warm professional, tech-savvy, creative, approachable, confident |
| Position statement | "AI marketing strategist + OPA founder" |

## Prompt composed (5-section structure)

```
[Subject + composition]
Portrait 3/4 angle of Vietnamese male early 30s, smart casual attire (linen shirt warm earth tone, no logo), confident eye contact slightly off-camera, gentle smile, holding laptop subtle in foreground blur, head-and-shoulders crop, centered composition with negative space on upper right.

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

- File: `docs/design/personal-minh-avatar-2026.png` (1024×1024, hd quality)
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 1 generation pass, no variant cần thiết (personal brand không multi-variant như logo). Self-test 3-câu PASS (warm professional + tech vibe + nhận ra đúng người).

## Next steps

1. Update LinkedIn / Twitter / OPA website (`bhop.vn`, `opa.business`) — đồng nhất 1 avatar across channels
2. Dùng làm base reference cho `24-ai-avatar-production` cho thought leadership videos (HeyGen / Synthesia avatar clone)
3. Variant 16:9 cho banner LinkedIn — gen lại với format `banner-hero` + crop wider
4. Sau 30 ngày track CTR profile LinkedIn — nếu drop, A/B test thêm 1 variant style adjective khác (vd thêm "playful")
