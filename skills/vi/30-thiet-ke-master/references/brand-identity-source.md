# Brand Identity Source

Cách auto-detect brand identity từ project context cho các mode `business-*` và editorial/infographic/web-mockup/quote-graphic khi xài cho brand. Mục tiêu: tìm ra logo + palette + typography + style adjectives **trước khi** grill user — chỉ ask khi đã exhaust mọi source.

## Search priority (theo thứ tự, STOP at first hit)

Chạy lần lượt 7 layers, stop ngay khi tìm thấy đủ info. Không skip layer, không nhảy cóc.

### Layer 1 — Brand logo file primary

Search paths theo thứ tự:
- `assets/brand/logo.svg`
- `assets/brand/logo.png`
- `assets/brand/logo.ai`
- `assets/brand/logo-primary.{svg,png}`
- `brand/logo.{svg,png}`
- `static/brand/logo.{svg,png}`

Nếu hit → save path vào frontmatter `brand_identity.logo_path`.

### Layer 2 — Palette structured file

- `assets/brand/palette.json` (structured)
- `assets/brand/colors.json`
- `assets/brand/tokens.json` (design tokens — có thể chứa palette + typography + spacing)

Parse JSON, extract `primary`, `secondary`, `accent` keys hoặc array hex codes.

### Layer 3 — Brand guideline markdown ở root

- `brand-guideline.md`
- `brand-identity.md`
- `BRAND.md`
- `docs/brand.md`
- `docs/brand-guideline.md`

Full guideline thường có sẵn palette + typography + voice tone — đọc parse extract.

### Layer 4 — Campaign brief đã viết

- `02-brief-chien-dich/output.md` Section "Yêu cầu thương hiệu"
- `02-brief-chien-dich/<campaign-slug>.md` Section "Brand mandatories"

Campaign brief thường có brand mandatories (logo, palette, font, do/don't) phục vụ campaign cụ thể.

### Layer 5 — PRD frontmatter + Section 2 + Section 6

- `prd.md` frontmatter `target_user` — persona context cho style adjectives
- `prd.md` Section 2 "User persona" — visual cues + audience preferences
- `prd.md` Section 6 "Features" — visual concept cues từ features

### Layer 6 — package.json / project metadata

- `package.json` field `description` — 1-line basic brand hint
- `package.json` field `name` — project name fallback nếu chưa biết tên brand
- `README.md` first paragraph — tagline + positioning hint

### Layer 7 — Ask user (last resort)

Chỉ ask khi 6 layers trên KHÔNG tìm thấy gì. Grill 4 câu:

1. Tên brand + ngành 1-line?
2. Logo file path có sẵn không? (upload nếu cần)
3. Palette 1-3 màu hex hoặc mô tả mood?
4. Typography preference (serif / sans / display / không biết)?

## Extract logic chi tiết

### Logo path

- Layer 1 trực tiếp → save path raw vào frontmatter
- Nếu Layer 3+ guideline mention logo path bằng text → resolve path absolute từ root project

### Palette (hex codes)

- Layer 2 JSON → parse field `primary` / `secondary` / `accent` hoặc array
- Layer 3 guideline → regex search `#[0-9a-fA-F]{6}` trong text — extract 2-4 hex codes đầu tiên xuất hiện cạnh keyword "primary" / "main" / "brand color"
- Layer 4 campaign brief → tương tự regex
- Validate: hex hợp lệ 6 ký tự, không phải `#ffffff` thuần (trừ khi accent neutral)

### Typography

- Layer 2 tokens.json → field `typography.heading` + `typography.body`
- Layer 3 guideline → search font name pattern (vd "Inter", "DM Sans", "Playfair Display", "Garamond", "Helvetica")
- Common signals: "font family", "typeface", "primary font", "heading font"
- Save dạng `<heading-font> (heading) + <body-font> (body)` hoặc `<single-font>` nếu chỉ 1

### Style adjectives

- Layer 4 campaign brief tone/mood field — extract 3-5 adjectives
- Layer 3 guideline "Brand voice" section — extract 3-5 từ
- Layer 5 PRD persona description — infer adjectives từ persona (vd persona "young creative 25-30 Saigon" → "modern + casual + warm + Vietnamese local")
- Validate: max 5 adjectives, dạng từ đơn hoặc compound (vd "warm professional", "tech minimalist")

## Print format (transparency line)

Sau khi extract xong, ALWAYS in transparency line trước Step 4:

```
[brand identity loaded]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574, #F5E6D3 (3 colors)
  Typography:  Inter (body) + DM Sans (heading)
  Style:       cinematic chill, warm tone, ambient
  Source:      brand-guideline.md + 02-brief-chien-dich/bhop-fall.md
```

Nếu partial (chỉ tìm thấy 2/4 fields):

```
[brand identity partial]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574 (2 colors)
  Typography:  (not found — will ask)
  Style:       (not found — will ask)
  Source:      brand-guideline.md
```

→ grill 2 câu cho 2 fields còn thiếu trước khi gen.

## Section anti-patterns

- Hardcode palette khi đã có `brand-guideline.md` — phải đọc từ source thật
- Skip search, ask user directly waste time — user khó chịu khi đã có brand file mà vẫn bị hỏi
- Use partial identity (vd có logo nhưng skip palette) — output rời rạc, không match brand
- Translate brand identity field names sang tiếng Việt khi save frontmatter — phá AI parsing
- Stop search ở Layer 1 nếu chỉ có logo nhưng chưa có palette — phải tiếp tục Layer 2-6 để tìm đủ
- Tin tưởng palette extract sai (vd extract `#cccccc` placeholder thay vì brand primary thật) — validate hợp lý
- Skip print transparency line — user không biết AI extract từ đâu, không trace được

## Validation checklist trước Step 4

- [ ] Logo path exists (file actually present at path)?
- [ ] Palette ≥1 hex code valid (không phải neutral pure như `#ffffff`)?
- [ ] Typography ≥1 font name identified (hoặc explicit "none → use default")?
- [ ] Style adjectives ≥3 từ (đủ cho prompt composition)?

Nếu fail 2+ checks → grill user trước khi gen.
