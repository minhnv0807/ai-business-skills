# Editorial Mode

Thiết kế ấn phẩm dài hơi — magazine cover, article hero, e-book cover, blog hero, lookbook. Stake trung bình — phục vụ reading hierarchy + brand voice editorial, không phải logo asset lâu dài.

## Khi nào dùng editorial mode

**Right fit**:
- Magazine cover (in giấy hoặc digital) — đầu báo + masthead + tagline tháng
- Article hero image — ảnh đại diện bài viết long-form
- E-book cover — sách điện tử cá nhân hoặc brand
- Blog hero — banner đầu trang blog post
- Lookbook spread — bộ sưu tập sản phẩm theo mùa
- Speaker keynote opening slide có mood editorial

**Wrong mode — chuyển ngay**:
- Logo magazine/publication → `business-logo`
- Layout multi-page e-book full (>2 spread) → `digital-eguide`
- Banner ads conversion-focus → `marketing-day-to-day`
- Social post nhanh → `marketing-day-to-day`
- Quote post chỉ có text trên ảnh → `quote-graphic`

## Brand identity yêu cầu

Editorial cần tone consistent — không gắt như business-logo nhưng cũng không lỏng như personal-brand:

- **Style adjectives** 3-5 từ (vd "warm intellectual", "modern minimalist", "vintage analog")
- **Palette** (optional) — nếu có brand color thì stick, không có thì gợi ý mood-based palette
- **Typography preference** — editorial mặc định ưu tiên serif (Garamond, Caslon, Playfair) cho cảm giác publication; sans cho modern minimalist
- **Publication tone** — academic / lifestyle / business / culture / niche hobby
- **Target audience** 1-line — quyết định visual register (vd "young professional 25-35" vs "C-suite executive 45+")

Thiếu publication tone + target audience → grill trước khi gen.

## Section anti-patterns

- Decorative noise lấn át reading hierarchy — editorial là về content, ảnh phải support text chứ không cạnh tranh
- Stock-photo-looking generic — phải có editorial perspective riêng (góc lạ, lighting đặc trưng, composition có chủ ý)
- Quá nhiều text trong ảnh — masthead + tagline OK qua HTML overlay, không gen trong ảnh để tránh méo chữ
- Mix serif + sans + script trong 1 cover — chọn 1-2 font family max
- Hero image full-bleed quá rực → mất chỗ cho text overlay sau này
- Palette neon / saturate cao cho academic / business publication — phá tone authoritative
- Sai aspect ratio cho format publication (magazine 8.5:11, blog hero 16:9, e-book cover 1600:2560)

## Prompt composition specifics

Cho article hero / magazine cover:
- **Subject**: editorial photography hoặc illustration có conceptual depth (không phải product shot), eye-level hoặc dramatic angle low/high
- **Composition**: rule of thirds, generous negative space top hoặc bottom cho masthead/headline overlay sau
- **Lighting**: editorial photography 35mm/50mm prime lens, warm paper-texture feel; hoặc studio key+fill cho cover formal
- **Palette**: brand color nếu có; muted sophisticated (avoid neon); 2-3 màu chính max cho cover focus
- **Style anchors**: "editorial photography", "magazine-quality", "warm paper texture", "serif typography aesthetic", "long-form journalism feel", "publication-grade"
- **Typography in-frame**: minimal — chỉ render abstract typography texture, KHÔNG render full headline/masthead (để HTML overlay sau)

Negatives bắt buộc: "no stock-photo cliche, no warped text, no spelling errors, no busy background, no neon colors, no extra fingers, no logo placeholders, no clipart aesthetic"

## Examples

- **Magazine cover lifestyle** "Saigon Slow Living" — Vietnamese woman 30s đọc sách ở quán café district 3, golden hour, 50mm shallow DOF, warm sepia palette, generous top space cho masthead → 8.5:11 print
- **Article hero AI essay** — abstract conceptual still life với open book + sun ray + brass compass on linen, overhead flat lay, muted earth palette, editorial 50mm look → 16:9 blog hero
- **E-book cover "Kiếm Tiền với AI"** — minimal symbolic illustration (key + circuit pattern subtle), cream paper texture, serif title space center → 1600:2560 e-book

## Grill questions

1. Publication tone: academic / lifestyle / business / culture / niche hobby?
2. Target audience 1-line (age + role + interest)?
3. 3-5 style adjectives mô tả mood (vd "warm intellectual + modern minimalist")?
4. Có brand palette không (hex), hay để gợi ý mood-based?
5. Format final: magazine cover (8.5:11), article hero (16:9), e-book cover (1600:2560), lookbook spread (16:9)?
6. Cover hierarchy nếu là cover: chỉ headline lớn, hay headline + author byline + date + cover lines (tag bài bên trong)?
