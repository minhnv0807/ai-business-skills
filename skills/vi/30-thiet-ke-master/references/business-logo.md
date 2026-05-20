# Business Logo Mode

**Cao stake nhất trong 4 modes** — logo là asset lâu dài, dùng nhiều năm trên mọi touchpoint. Cần extra careful + bắt buộc human review disclaimer.

## Khi nào dùng business-logo mode

**Right fit**:
- Brand mới — brainstorm direction (3-5 variants explore trước khi chọn)
- Logo refresh / redesign — explore alternatives so với logo hiện tại
- Sub-brand / product line logo (vd OPA → OPA Academy sub-logo)
- App icon design (square format, scalable đến favicon)

**Wrong mode — chuyển ngay**:
- Logo cá nhân → `personal-brand` monogram
- Logo cho campaign 1-time use → `business-campaign`
- Mascot character (nhân vật phức tạp) → đề xuất hire human designer riêng, AI không handle tốt
- Wordmark đơn thuần (chỉ text) → vẫn dùng mode này nhưng output sẽ flag để human refine text vector

## Human review disclaimer (BẮT BUỘC trong output)

AI-generated logo nên dùng để **brainstorm direction**, KHÔNG ship final. Lý do:
- Text trong AI gen logo thường méo / sai chính tả (đặc biệt tiếng Việt có dấu)
- Không scalable to vector (raster only — không có SVG path clean)
- Không có monochrome version automatic
- Không readable khi shrink small (favicon 32x32, app icon)
- Inconsistent stroke weight + spacing

Output luôn kèm note ở cuối:

> AI-generated logo for brainstorming only. Trước khi ship final, recommend human designer refine vector (Illustrator/Figma) + test scalability từ favicon → billboard + tạo monochrome variants (1 màu, đảo ngược, outline).

## Brand identity yêu cầu (full — không skip)

- **Tên brand**: chính xác characters, có dấu tiếng Việt nếu có (vd "Lumière", "BHOP Cà phê")
- **Ngành kinh doanh**: 1-line (vd "ứng dụng quản lý dự án cho SME", "cafe specialty Saigon district 3")
- **Values** 3-5 từ (vd "đáng tin + đơn giản + ấm áp")
- **Competitor logos**: paths hoặc descriptions — để negative prompt avoid copying (vd "tránh giống Starbucks circle + mermaid")
- **Color palette preference**: 1-3 hex codes nếu có; nếu không, gợi ý dựa trên ngành + values
- **Style direction**: minimalist / illustrative / wordmark / icon-based / abstract

Nếu thiếu BẤT KỲ field nào trong 6 fields trên → BLOCK + grill 5 câu trước khi gen.

## Section anti-patterns

- Generate 1 logo final — luôn 3-5 variants để brainstorm direction (user chọn 1 → human designer refine)
- Skip monochrome consideration — gen toàn full color, không tính được khi in trắng đen
- Logo với detailed illustration nhiều stroke — không scalable, favicon size sẽ thành blob
- Logo copy competitor style — quên negative prompt avoiding similar marks
- Logo với English text khi brand là Vietnamese (vd "BHOP COFFEE" thay vì "BHOP Cà phê")
- Skip human review disclaimer — user nghĩ ship được luôn, sau này khổ
- Gradient phức tạp trong mark — chỉ cho phép gradient trong wordmark, mark phải flat

## Prompt composition (multi-variant strategy)

Gen 3-5 variants với 5 directions khác nhau:

1. **Wordmark**: brand name typography stylized, no symbol, focus on letterform character
2. **Symbol + wordmark**: icon đơn giản bên cạnh hoặc trên text, balanced composition
3. **Mark only**: abstract symbol no text — dùng cho app icon, social avatar
4. **Monogram**: 1-2 initials stylized (vd "OP" cho OPA)
5. **Letterform**: 1 chữ duy nhất as the logo (vd "L" cho Lumière)

Mỗi variant template:
- **Subject**: clean logo design centered, white background, single color or 2-color palette
- **Lighting**: flat, no shadows (logo cần flat cho vector trace later)
- **Style**: minimalist, scalable, modern, geometric precision
- **Negatives**: "no detailed illustration, no shadows, no gradients (unless wordmark), no extra elements, no warped letters, no spelling errors, no 3D effects, no mockup context (just logo on white)"

## Examples

- **OPA — AI marketing platform**: 5 variants — (1) "OPA" wordmark geometric sans, (2) abstract circuit + "OPA", (3) circular mark with hidden A, (4) "O" letterform, (5) "OPA" monogram interlocking — palette teal #00A8A8 + slate #2C3E50
- **BHOP Cà phê**: 5 variants — (1) "BHOP" handwritten warmth, (2) coffee cherry icon + wordmark, (3) abstract bean mark, (4) "B" letterform leaf style, (5) "BHOP Cà phê" full lockup — palette earth brown #2B1810 + cream #F5E6D3

## Grill questions (BLOCK nếu thiếu)

1. Tên brand chính xác (có dấu tiếng Việt nếu có)?
2. Ngành 1-line (vd "ứng dụng quản lý dự án cho SME")?
3. 3-5 values (vd "đáng tin + đơn giản + chuyên nghiệp")?
4. Style direction primary: minimalist / illustrative / abstract / wordmark / monogram?
5. Color palette ưa thích (hex codes nếu có, không thì mô tả mood)?
6. Competitor logos cần AVOID (paste 2-3 link/description để negative prompt)?
