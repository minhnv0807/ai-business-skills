---
title: AI Kiếm Tiền — quote graphic "Output > Input"
type_artifact: image-generated
mode: quote-graphic
subject: Quote graphic LinkedIn 1:1 promoting prompt engineering lesson từ course "AI Kiếm Tiền" Buổi 3 — hybrid approach (gen background qua gpt-image-2 + HTML overlay text cho accuracy)
source_brief: none
brand_identity:
  logo_path: assets/personal/minh-monogram.png
  palette: ["#F5F1E8", "#2B1810", "#D4A574"]
  typography: DM Sans Bold
  style_adjectives: ["warm minimal", "editorial", "cream paper", "thoughtful", "founder voice"]
format: quote
aspect_ratio: 1:1
gen_mode: hybrid
model: gpt-image-2
output_files:
  - docs/design/quote-output-input-bg.png
  - docs/design/quote-output-input.html
  - docs/design/quote-output-input.png
  - docs/design/quote-output-input.md
created: 2026-05-20
last_updated: 2026-05-20
---

# AI Kiếm Tiền — quote graphic "Output > Input"

## Context

Minh sharing quote từ Buổi 3 của course "AI Kiếm Tiền" về prompt engineering — message "Output > Input" (kết quả quan trọng hơn nguyên liệu đầu vào, ý là biết hỏi đúng quan trọng hơn là có công cụ xịn). Format LinkedIn quote post 1:1 — đăng lên LinkedIn cá nhân + repost OPA page.

**Hybrid approach** (không gen text trong image):
- Gen background image qua gpt-image-2 — minimalist warm paper texture, KHÔNG có text (AI gen text Việt dấu vỡ + AI gen text Anh cũng méo)
- HTML overlay text qua DM Sans Bold — accuracy 100%, font đúng brand, dễ chỉnh sửa
- Export PNG cuối qua Puppeteer screenshot HTML — output 1024×1024 đăng được luôn

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Logo monogram | `assets/personal/minh-monogram.png` (chèn góc bottom-right HTML overlay) |
| Palette | cream `#F5F1E8` base + nâu `#2B1810` text + gold `#D4A574` accent |
| Typography | DM Sans Bold cho quote text, DM Sans Regular cho byline |
| Author handle | `@minhnv_opa` |
| Style adjectives | warm minimal, editorial, cream paper, thoughtful, founder voice |

## Prompt composed (background only — NO text in-image)

```
[Subject + composition]
Abstract textural background, soft warm gradient corner-to-corner, subtle paper texture overlay, minimalist composition with strong negative space center for text overlay later, no specific focal subject.

[Lighting + mood]
Soft diffused ambient lighting, gentle warm-to-cool contrast across the canvas, mood is thoughtful and contemplative, editorial publication feel not flashy.

[Palette + textures]
Cream #F5F1E8 dominant base (80%) + brown #2B1810 subtle corner shadow (15%) + warm gold dust #D4A574 accents (5%); cream paper grain texture, slight ink-on-paper feel, subtle vignetting at corners.

[Style + medium]
Paper texture overlay, abstract gradient, minimalist editorial design, magazine quality paper print feel, no illustrations no characters, pure textural background.

[Negatives]
no text, no letters, no typography, no faces, no detailed subjects, no logos, no UI elements, no patterns or stripes, no busy details, no oversaturated colors, no neon, no AI-slop digital gradients.
```

## HTML overlay template

```html
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Quote — Output > Input</title>
  <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;700&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      width: 1024px;
      height: 1024px;
      background: url('quote-output-input-bg.png') no-repeat center / cover;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      font-family: 'DM Sans', sans-serif;
      position: relative;
    }
    .quote {
      font-size: 96px;
      font-weight: 700;
      color: #2B1810;
      text-align: center;
      line-height: 1.1;
      letter-spacing: -0.02em;
    }
    .accent { color: #D4A574; }
    .author {
      margin-top: 48px;
      font-size: 20px;
      color: #2B1810;
      opacity: 0.7;
      letter-spacing: 0.05em;
    }
    .brand-mark {
      position: absolute;
      bottom: 32px;
      right: 32px;
      width: 48px;
      height: 48px;
      opacity: 0.8;
    }
  </style>
</head>
<body>
  <div class="quote">Output <span class="accent">&gt;</span> Input</div>
  <div class="author">— Minh Nguyen · AI Kiếm Tiền Buổi 3</div>
  <img class="brand-mark" src="minh-monogram.png" alt="Minh monogram">
</body>
</html>
```

## Output

- Background: `docs/design/quote-output-input-bg.png` — 1024×1024, standard quality (background không cần hd)
- HTML overlay: `docs/design/quote-output-input.html` — editable cho variant text khác
- Final PNG: `docs/design/quote-output-input.png` — 1024×1024 export qua `npx puppeteer-screenshot quote-output-input.html` hoặc Chrome DevTools "Capture full size screenshot"
- Tier 2 Pro (background gen qua gpt-image-2)
- Model: gpt-image-2 (background) + manual HTML (text)
- Render notes: Self-test 3-câu PASS — brand fit (palette + DM Sans match), voice fit (founder thoughtful tone), usability fit (text accuracy 100% qua HTML, dấu tiếng Việt sai 0 lần)

## Next steps

1. **Post LinkedIn**: dùng caption từ `26-thought-leadership-content` — expand quote thành thread 4 câu giải thích "output > input" trong prompt engineering
2. **Cross-post OPA page**: cùng caption + tag course "AI Kiếm Tiền" Buổi 3 link đăng ký
3. **Track engagement**: Like + comment + share rate sau 48h — nếu engagement >5x baseline → variant nhiều quote khác cùng format (mỗi tuần 1 quote)
4. **Iterate format**: nếu format quote-graphic này work tốt, tạo template HTML reusable trong `templates/quote-graphic.md` để gen nhanh hơn lần sau (chỉ thay text + background)
5. **Tránh anti-pattern**: KHÔNG embed text vào AI gen image — luôn hybrid HTML overlay
