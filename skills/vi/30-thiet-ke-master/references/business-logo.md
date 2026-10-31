# Business Logo Mode

**Cao stake nhat trong 4 modes** — logo la asset lau dai, dung nhieu nam tren moi touchpoint. Can extra careful + bat buoc human review disclaimer.

## Khi nao dung business-logo mode

**Right fit**:
- Brand moi — brainstorm direction (3-5 variants explore truoc khi chon)
- Logo refresh / redesign — explore alternatives so voi logo hien tai
- Sub-brand / product line logo (vd OPA → OPA Academy sub-logo)
- App icon design (square format, scalable den favicon)

**Wrong mode — chuyen ngay**:
- Logo ca nhan → `personal-brand` monogram
- Logo cho campaign 1-time use → `business-campaign`
- Mascot character (nhan vat phuc tap) → de xuat hire human designer rieng, AI khong handle tot
- Wordmark don thuan (chi text) → van dung mode nay nhung output se flag de human refine text vector

## Human review disclaimer (BAT BUOC trong output)

AI-generated logo nen dung de **brainstorm direction**, KHONG ship final. Ly do:
- Text trong AI gen logo thuong meo / sai chinh ta (dac biet tieng Viet co dau)
- Khong scalable to vector (raster only — khong co SVG path clean)
- Khong co monochrome version automatic
- Khong readable khi shrink small (favicon 32x32, app icon)
- Inconsistent stroke weight + spacing

Output luon kem note o cuoi:

> AI-generated logo for brainstorming only. Truoc khi ship final, recommend human designer refine vector (Illustrator/Figma) + test scalability tu favicon → billboard + tao monochrome variants (1 mau, dao nguoc, outline).

## Brand identity yeu cau (full — khong skip)

- **Tên brand**: chính xác characters, có dấu tiếng Việt nếu có (vd "Lumière", "BHOP Cà phê")
- **Nganh kinh doanh**: 1-line (vd "ung dung quan ly du an cho SME", "cafe specialty Saigon district 3")
- **Values** 3-5 tu (vd "dang tin + don gian + am ap")
- **Competitor logos**: paths hoac descriptions — de negative prompt avoid copying (vd "tranh giong Starbucks circle + mermaid")
- **Color palette preference**: 1-3 hex codes neu co; neu khong, goi y dua tren nganh + values
- **Style direction**: minimalist / illustrative / wordmark / icon-based / abstract

Neu thieu BAT KY field nao trong 6 fields tren → BLOCK + grill 5 cau truoc khi gen.

## Section anti-patterns

- Generate 1 logo final — luon 3-5 variants de brainstorm direction (user chon 1 → human designer refine)
- Skip monochrome consideration — gen toan full color, khong tinh duoc khi in trang den
- Logo voi detailed illustration nhieu stroke — khong scalable, favicon size se thanh blob
- Logo copy competitor style — quen negative prompt avoiding similar marks
- Logo với English text khi brand là Vietnamese (vd "BHOP COFFEE" thay vì "BHOP Cà phê")
- Skip human review disclaimer — user nghi ship duoc luon, sau nay kho
- Gradient phuc tap trong mark — chi cho phep gradient trong wordmark, mark phai flat

## Prompt composition (multi-variant strategy)

Gen 3-5 variants voi 5 directions khac nhau:

1. **Wordmark**: brand name typography stylized, no symbol, focus on letterform character
2. **Symbol + wordmark**: icon don gian ben canh hoac tren text, balanced composition
3. **Mark only**: abstract symbol no text — dung cho app icon, social avatar
4. **Monogram**: 1-2 initials stylized (vd "OP" cho OPA)
5. **Letterform**: 1 chu duy nhat as the logo (vd "L" cho Lumiere)

Moi variant template:
- **Subject**: clean logo design centered, white background, single color or 2-color palette
- **Lighting**: flat, no shadows (logo can flat cho vector trace later)
- **Style**: minimalist, scalable, modern, geometric precision
- **Negatives**: "no detailed illustration, no shadows, no gradients (unless wordmark), no extra elements, no warped letters, no spelling errors, no 3D effects, no mockup context (just logo on white)"

## Examples

- **OPA — AI marketing platform**: 5 variants — (1) "OPA" wordmark geometric sans, (2) abstract circuit + "OPA", (3) circular mark with hidden A, (4) "O" letterform, (5) "OPA" monogram interlocking — palette teal #00A8A8 + slate #2C3E50
- **BHOP Cà phê**: 5 variants — (1) "BHOP" handwritten warmth, (2) coffee cherry icon + wordmark, (3) abstract bean mark, (4) "B" letterform leaf style, (5) "BHOP Cà phê" full lockup — palette earth brown #2B1810 + cream #F5E6D3

## Grill questions (BLOCK neu thieu)

1. Ten brand chinh xac (co dau tieng Viet neu co)?
2. Nganh 1-line (vd "ung dung quan ly du an cho SME")?
3. 3-5 values (vd "dang tin + don gian + chuyen nghiep")?
4. Style direction primary: minimalist / illustrative / abstract / wordmark / monogram?
5. Color palette ua thich (hex codes neu co, khong thi mo ta mood)?
6. Competitor logos can AVOID (paste 2-3 link/description de negative prompt)?
