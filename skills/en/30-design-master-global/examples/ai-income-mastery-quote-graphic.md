---
title: AI Income Mastery — quote graphic "Output > Input"
type_artifact: image-generated
mode: quote-graphic
subject: LinkedIn quote graphic 1:1 promoting the prompt engineering lesson from "AI Income Mastery" Lesson 3 — hybrid approach (gen background via gpt-image-2 + HTML text overlay for typographic accuracy)
source_brief: none
brand_identity:
  logo_path: assets/personal/mark-chen-monogram.png
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

# AI Income Mastery — quote graphic "Output > Input"

## Context

Mark is sharing a quote from Lesson 3 of his course **"AI Income Mastery"** on prompt engineering — the message **"Output > Input"** (results matter more than raw inputs, i.e. asking the right question matters more than owning the fanciest tool). Format: LinkedIn quote post 1:1 — published on his personal LinkedIn + reposted on the Lumière Studio company page.

**Hybrid approach** (no text inside the AI image):
- Generate the background image via gpt-image-2 — minimalist warm paper texture, **NO text** (AI-generated text is unreliable, especially with em-dashes, smart quotes, and the ">" character)
- HTML overlay text in DM Sans Bold — 100% accuracy, correct brand font, easy to edit for variants
- Final PNG export via Puppeteer screenshot of the HTML — output 1024×1024 ready to post

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Logo monogram | `assets/personal/mark-chen-monogram.png` (placed in bottom-right via HTML overlay) |
| Palette | cream `#F5F1E8` base + brown `#2B1810` text + gold `#D4A574` accent |
| Typography | DM Sans Bold for the quote, DM Sans Regular for byline |
| Author handle | `@markchen_ai` |
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
<html lang="en">
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
  <div class="author">— Mark Chen · AI Income Mastery Lesson 3</div>
  <img class="brand-mark" src="mark-chen-monogram.png" alt="Mark Chen monogram">
</body>
</html>
```

## Output

- Background: `docs/design/quote-output-input-bg.png` — 1024×1024, standard quality (background doesn't need HD)
- HTML overlay: `docs/design/quote-output-input.html` — editable for future text variants
- Final PNG: `docs/design/quote-output-input.png` — 1024×1024 exported via `npx puppeteer-screenshot quote-output-input.html` or Chrome DevTools "Capture full size screenshot"
- Tier 2 Pro (background generated via gpt-image-2)
- Model: gpt-image-2 (background) + manual HTML (text)
- Render notes: Self-test 3-question PASS — brand fit (palette + DM Sans match), voice fit (founder thoughtful tone), usability fit (text accuracy 100% via HTML, zero typographic errors including the ">" character)

## Next steps

1. **Post LinkedIn**: use caption from `26-thought-leadership-content-global` — expand the quote into a 4-sentence thread explaining "output > input" in prompt engineering
2. **Cross-post Lumière Studio page**: same caption + tag "AI Income Mastery" Lesson 3 enrollment link
3. **Track engagement**: like + comment + share rate after 48h — if engagement >5× baseline → roll out a weekly quote series on the same format
4. **Iterate format**: if this quote-graphic format performs, formalize the reusable HTML template in `templates/quote-graphic.md` to generate faster next time (just swap text + background)
5. **Anti-pattern to avoid**: NEVER embed text into the AI-generated image — always go hybrid HTML overlay
