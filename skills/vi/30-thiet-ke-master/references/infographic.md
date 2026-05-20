# Infographic Mode

Thiết kế ảnh data viz / plan summary / process flow / comparison chart bằng gpt-image-2. **Đã chấp nhận risk text accuracy** — phải workaround bằng chiến lược icon-heavy + text minimal. Nếu user cần text-heavy infographic → recommend Canva fallback.

## Khi nào dùng infographic mode

**Right fit**:
- Roadmap visual sản phẩm (3-5 milestones, mỗi milestone 1 icon + 1 short label)
- Process flow đơn giản 3-7 nodes (đơn vị: bước, không phải UML phức tạp)
- Comparison chart 2-3 cột (vd "AI tự làm vs Hire freelancer vs Hire agency")
- Plan summary 1-page (3-5 key numbers + 3-5 icon-driven sections)
- "How it works" hero — explain workflow trong 1 ảnh visual metaphor
- Stat highlight post — 1 big number + 2-3 supporting numbers + minimal icons

**Wrong mode — chuyển ngay**:
- Infographic text-heavy >5 data points với labels chi tiết → recommend Canva template hoặc gen HTML/SVG bằng skill khác
- Chart với axis labels chi tiết (bar chart, line chart real data) → recommend gen HTML/SVG infographic
- UML / ERD / network diagram phức tạp → dùng diagram-as-code (Mermaid, PlantUML)
- Slide infographic trong deck → dùng `html-ppt-*` skills

## Strategy KEY — TEXT MINIMAL, ICON MAXIMUM

AI gen text trong image **không reliable** — sẽ méo, sai chính tả, dấu tiếng Việt vỡ. Workaround:

- **2-3 numbers max** trong ảnh — large, bold, isolated, không paragraph dài
- **Icons thay cho labels** — dùng universal symbols (gear, rocket, target, chart up, checkmark, lightbulb)
- **Color-coded sections** — palette branded chia rõ vùng, không cần text label vì màu đã phân biệt
- **Text giải thích đặt UNDER ảnh** trong body của post (caption, blog text) — KHÔNG đặt trong ảnh — text accuracy 100% qua HTML/plain text

## Section anti-patterns

- Text-heavy infographic (>5 labels, paragraph 2+ dòng) — méo chữ, sai chính tả, dấu tiếng Việt vỡ
- Small text bên trong ảnh (font size < 24px tương đương) — sẽ thành blur/blob khi gen
- Complex flow >7 nodes — AI gen confuse, kết quả lộn xộn, arrows không clear
- Axis labels chi tiết trên chart (X-axis dates, Y-axis numbers) — sai dữ liệu
- Mix nhiều style icons trong 1 ảnh (flat + 3D + line + filled) — không consistent
- Skip palette branded — output rời rạc với brand chính
- Palette >3 màu — overwhelm, mất focus key numbers
- Background quá detail — cạnh tranh visual với icons + numbers

## Prompt composition specifics

- **Subject**: clean isometric illustration HOẶC flat vector design với 3-5 large icons + 2-3 huge numbers — composition organized grid/circle/flow layout
- **Composition**: organized symmetric hoặc clear flow direction (left-right, top-bottom), generous whitespace giữa elements
- **Lighting**: flat shading (vector look) — KHÔNG photographic, KHÔNG dramatic shadow
- **Palette**: brand hex strict (3 màu max — primary + accent + neutral). Nếu chưa có brand → gợi ý 1 primary saturated + 1 accent + 1 neutral (white/cream/charcoal)
- **Style anchors**: "minimalist infographic", "vector-style flat design", "isometric icons", "clean modern data visualization", "limited color palette", "organized grid layout"
- **Number rendering**: chỉ 2-3 numbers max, BIG BOLD format (vd "10x", "85%", "3 phases") — isolated từng số một

Negatives bắt buộc: "no small text, no detailed text labels, no spelling errors, no warped letters, no charts with axis labels, no busy background, no photographic style, no realistic illustration, no extra elements competing with main data"

## Workaround khi user cần text-heavy infographic

Nếu user yêu cầu >5 data points với labels chi tiết, in warning:

```
[WARNING] Infographic text-heavy >5 labels không reliable qua AI gen
(text sẽ méo, sai chính tả, dấu tiếng Việt vỡ).

Recommend 2 hướng:
  1) Gen HTML/SVG infographic — accuracy 100%, dùng skill html-ppt-* hoặc
     skill khác có HTML output (text qua CSS, real font, edit dễ).
  2) Canva template — kéo thả nhanh, library icon sẵn, export PNG/PDF.

Vẫn muốn gen AI image với risk text méo? (y/n)
```

Chỉ proceed nếu user confirm y.

## Examples

- **OPA roadmap 4 phases** — isometric illustration 4 milestone steps (rocket → gear → chart-up → trophy icons), 4 BIG numbers "Q1 Q2 Q3 Q4", brand palette teal #00A8A8 + slate #2C3E50 + cream, organized horizontal flow → 16:9 landing hero
- **Comparison "AI vs Human vs Hybrid"** — flat vector 3 columns với icons (robot / person / handshake), 3 BIG percentage numbers "70% / 95% / 90%", no detailed labels — caption explanation dưới post → 1:1 IG
- **"How OPA works" stat hero** — 1 BIG number "10x faster" center, 3 supporting small icons around (clock + arrow + checkmark), minimal palette brand teal+slate → 1:1 LinkedIn post

## Grill questions

1. Data points count: 2-3 (OK), 4-5 (OK), >5 (recommend Canva/HTML workaround)?
2. Decoration vs accuracy preference: ưu tiên visual đẹp (chấp nhận text bị giới hạn) hay ưu tiên text chính xác (recommend HTML/Canva)?
3. Target format: post social (1:1, 4:5), slide deck (16:9), web hero (16:9), story (9:16)?
4. Brand palette có sẵn (hex) hay gợi ý mood?
5. Style direction: isometric 3D vector / flat 2D vector / line icons minimal?
6. Có specific icons muốn dùng không (vd "rocket, gear, chart, target") hay để gợi ý theo data?
