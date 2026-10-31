# Brand Identity Source

Cach auto-detect brand identity tu project context cho cac mode `business-*` va editorial/infographic/web-mockup/quote-graphic khi xai cho brand. Muc tieu: tim ra logo + palette + typography + style adjectives **truoc khi** grill user — chi ask khi da exhaust moi source.

## Search priority (theo thu tu, STOP at first hit)

Chay lan luot 7 layers, stop ngay khi tim thay du info. Khong skip layer, khong nhay coc.

### Layer 1 — Brand logo file primary

Search paths theo thu tu:
- `assets/brand/logo.svg`
- `assets/brand/logo.png`
- `assets/brand/logo.ai`
- `assets/brand/logo-primary.{svg,png}`
- `brand/logo.{svg,png}`
- `static/brand/logo.{svg,png}`

Neu hit → save path vao frontmatter `brand_identity.logo_path`.

### Layer 2 — Palette structured file

- `assets/brand/palette.json` (structured)
- `assets/brand/colors.json`
- `assets/brand/tokens.json` (design tokens — co the chua palette + typography + spacing)

Parse JSON, extract `primary`, `secondary`, `accent` keys hoac array hex codes.

### Layer 3 — Brand guideline markdown o root

- `brand-guideline.md`
- `brand-identity.md`
- `BRAND.md`
- `docs/brand.md`
- `docs/brand-guideline.md`

Full guideline thuong co san palette + typography + voice tone — doc parse extract.

### Layer 4 — Campaign brief da viet

- `02-brief-chien-dich/output.md` Section "Yeu cau thuong hieu"
- `02-brief-chien-dich/<campaign-slug>.md` Section "Brand mandatories"

Campaign brief thuong co brand mandatories (logo, palette, font, do/don't) phuc vu campaign cu the.

### Layer 5 — PRD frontmatter + Section 2 + Section 6

- `prd.md` frontmatter `target_user` — persona context cho style adjectives
- `prd.md` Section 2 "User persona" — visual cues + audience preferences
- `prd.md` Section 6 "Features" — visual concept cues tu features

### Layer 6 — package.json / project metadata

- `package.json` field `description` — 1-line basic brand hint
- `package.json` field `name` — project name fallback neu chua biet ten brand
- `README.md` first paragraph — tagline + positioning hint

### Layer 7 — Ask user (last resort)

Chi ask khi 6 layers tren KHONG tim thay gi. Grill 4 cau:

1. Ten brand + nganh 1-line?
2. Logo file path co san khong? (upload neu can)
3. Palette 1-3 mau hex hoac mo ta mood?
4. Typography preference (serif / sans / display / khong biet)?

## Extract logic chi tiet

### Logo path

- Layer 1 truc tiep → save path raw vao frontmatter
- Neu Layer 3+ guideline mention logo path bang text → resolve path absolute tu root project

### Palette (hex codes)

- Layer 2 JSON → parse field `primary` / `secondary` / `accent` hoac array
- Layer 3 guideline → regex search `#[0-9a-fA-F]{6}` trong text — extract 2-4 hex codes dau tien xuat hien canh keyword "primary" / "main" / "brand color"
- Layer 4 campaign brief → tuong tu regex
- Validate: hex hop le 6 ky tu, khong phai `#ffffff` thuan (tru khi accent neutral)

### Typography

- Layer 2 tokens.json → field `typography.heading` + `typography.body`
- Layer 3 guideline → search font name pattern (vd "Inter", "DM Sans", "Playfair Display", "Garamond", "Helvetica")
- Common signals: "font family", "typeface", "primary font", "heading font"
- Save dang `<heading-font> (heading) + <body-font> (body)` hoac `<single-font>` neu chi 1

### Style adjectives

- Layer 4 campaign brief tone/mood field — extract 3-5 adjectives
- Layer 3 guideline "Brand voice" section — extract 3-5 tu
- Layer 5 PRD persona description — infer adjectives tu persona (vd persona "young creative 25-30 Saigon" → "modern + casual + warm + Vietnamese local")
- Validate: max 5 adjectives, dang tu don hoac compound (vd "warm professional", "tech minimalist")

## Print format (transparency line)

Sau khi extract xong, ALWAYS in transparency line truoc Step 4:

```
[brand identity loaded]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574, #F5E6D3 (3 colors)
  Typography:  Inter (body) + DM Sans (heading)
  Style:       cinematic chill, warm tone, ambient
  Source:      brand-guideline.md + 02-brief-chien-dich/bhop-fall.md
```

Neu partial (chi tim thay 2/4 fields):

```
[brand identity partial]
  Logo:        assets/brand/logo.svg
  Palette:     #2B1810, #D4A574 (2 colors)
  Typography:  (not found — will ask)
  Style:       (not found — will ask)
  Source:      brand-guideline.md
```

→ grill 2 cau cho 2 fields con thieu truoc khi gen.

## Section anti-patterns

- Hardcode palette khi da co `brand-guideline.md` — phai doc tu source that
- Skip search, ask user directly waste time — user kho chiu khi da co brand file ma van bi hoi
- Use partial identity (vd co logo nhung skip palette) — output roi rac, khong match brand
- Translate brand identity field names sang tieng Viet khi save frontmatter — pha AI parsing
- Stop search o Layer 1 neu chi co logo nhung chua co palette — phai tiep tuc Layer 2-6 de tim du
- Tin tuong palette extract sai (vd extract `#cccccc` placeholder thay vi brand primary that) — validate hop ly
- Skip print transparency line — user khong biet AI extract tu dau, khong trace duoc

## Validation checklist truoc Step 4

- [ ] Logo path exists (file actually present at path)?
- [ ] Palette ≥1 hex code valid (khong phai neutral pure nhu `#ffffff`)?
- [ ] Typography ≥1 font name identified (hoac explicit "none → use default")?
- [ ] Style adjectives ≥3 tu (du cho prompt composition)?

Neu fail 2+ checks → grill user truoc khi gen.
