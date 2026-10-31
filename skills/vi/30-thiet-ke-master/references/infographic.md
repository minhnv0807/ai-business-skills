# Infographic Mode

Thiet ke anh data viz / plan summary / process flow / comparison chart bang gpt-image-2. **Da chap nhan risk text accuracy** — phai workaround bang chien luoc icon-heavy + text minimal. Neu user can text-heavy infographic → recommend Canva fallback.

## Khi nao dung infographic mode

**Right fit**:
- Roadmap visual san pham (3-5 milestones, moi milestone 1 icon + 1 short label)
- Process flow don gian 3-7 nodes (don vi: buoc, khong phai UML phuc tap)
- Comparison chart 2-3 cot (vd "AI tu lam vs Hire freelancer vs Hire agency")
- Plan summary 1-page (3-5 key numbers + 3-5 icon-driven sections)
- "How it works" hero — explain workflow trong 1 anh visual metaphor
- Stat highlight post — 1 big number + 2-3 supporting numbers + minimal icons

**Wrong mode — chuyen ngay**:
- Infographic text-heavy >5 data points voi labels chi tiet → recommend Canva template hoac gen HTML/SVG bang skill khac
- Chart voi axis labels chi tiet (bar chart, line chart real data) → recommend gen HTML/SVG infographic
- UML / ERD / network diagram phuc tap → dung diagram-as-code (Mermaid, PlantUML)
- Slide infographic trong deck → dung `html-ppt-*` skills

## Strategy KEY — TEXT MINIMAL, ICON MAXIMUM

AI gen text trong image **khong reliable** — se meo, sai chinh ta, dau tieng Viet vo. Workaround:

- **2-3 numbers max** trong anh — large, bold, isolated, khong paragraph dai
- **Icons thay cho labels** — dung universal symbols (gear, rocket, target, chart up, checkmark, lightbulb)
- **Color-coded sections** — palette branded chia ro vung, khong can text label vi mau da phan biet
- **Text giai thich dat UNDER anh** trong body cua post (caption, blog text) — KHONG dat trong anh — text accuracy 100% qua HTML/plain text

## Section anti-patterns

- Text-heavy infographic (>5 labels, paragraph 2+ dong) — meo chu, sai chinh ta, dau tieng Viet vo
- Small text ben trong anh (font size < 24px tuong duong) — se thanh blur/blob khi gen
- Complex flow >7 nodes — AI gen confuse, ket qua lon xon, arrows khong clear
- Axis labels chi tiet tren chart (X-axis dates, Y-axis numbers) — sai du lieu
- Mix nhieu style icons trong 1 anh (flat + 3D + line + filled) — khong consistent
- Skip palette branded — output roi rac voi brand chinh
- Palette >3 mau — overwhelm, mat focus key numbers
- Background qua detail — canh tranh visual voi icons + numbers

## Prompt composition specifics

- **Subject**: clean isometric illustration HOAC flat vector design voi 3-5 large icons + 2-3 huge numbers — composition organized grid/circle/flow layout
- **Composition**: organized symmetric hoac clear flow direction (left-right, top-bottom), generous whitespace giua elements
- **Lighting**: flat shading (vector look) — KHONG photographic, KHONG dramatic shadow
- **Palette**: brand hex strict (3 mau max — primary + accent + neutral). Neu chua co brand → goi y 1 primary saturated + 1 accent + 1 neutral (white/cream/charcoal)
- **Style anchors**: "minimalist infographic", "vector-style flat design", "isometric icons", "clean modern data visualization", "limited color palette", "organized grid layout"
- **Number rendering**: chi 2-3 numbers max, BIG BOLD format (vd "10x", "85%", "3 phases") — isolated tung so mot

Negatives bat buoc: "no small text, no detailed text labels, no spelling errors, no warped letters, no charts with axis labels, no busy background, no photographic style, no realistic illustration, no extra elements competing with main data"

## Workaround khi user can text-heavy infographic

Neu user yeu cau >5 data points voi labels chi tiet, in warning:

```
[WARNING] Infographic text-heavy >5 labels khong reliable qua AI gen
(text se meo, sai chinh ta, dau tieng Viet vo).

Recommend 2 huong:
  1) Gen HTML/SVG infographic — accuracy 100%, dung skill html-ppt-* hoac
     skill khac co HTML output (text qua CSS, real font, edit de).
  2) Canva template — keo tha nhanh, library icon san, export PNG/PDF.

Van muon gen AI image voi risk text meo? (y/n)
```

Chi proceed neu user confirm y.

## Examples

- **OPA roadmap 4 phases** — isometric illustration 4 milestone steps (rocket → gear → chart-up → trophy icons), 4 BIG numbers "Q1 Q2 Q3 Q4", brand palette teal #00A8A8 + slate #2C3E50 + cream, organized horizontal flow → 16:9 landing hero
- **Comparison "AI vs Human vs Hybrid"** — flat vector 3 columns voi icons (robot / person / handshake), 3 BIG percentage numbers "70% / 95% / 90%", no detailed labels — caption explanation duoi post → 1:1 IG
- **"How OPA works" stat hero** — 1 BIG number "10x faster" center, 3 supporting small icons around (clock + arrow + checkmark), minimal palette brand teal+slate → 1:1 LinkedIn post

## Grill questions

1. Data points count: 2-3 (OK), 4-5 (OK), >5 (recommend Canva/HTML workaround)?
2. Decoration vs accuracy preference: uu tien visual dep (chap nhan text bi gioi han) hay uu tien text chinh xac (recommend HTML/Canva)?
3. Target format: post social (1:1, 4:5), slide deck (16:9), web hero (16:9), story (9:16)?
4. Brand palette co san (hex) hay goi y mood?
5. Style direction: isometric 3D vector / flat 2D vector / line icons minimal?
6. Co specific icons muon dung khong (vd "rocket, gear, chart, target") hay de goi y theo data?
