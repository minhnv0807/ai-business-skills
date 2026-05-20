# Infographic Mode

Data viz / plan summary / process flow / comparison chart designed through gpt-image-2. **Text-accuracy risk accepted upfront** — work around it with an icon-heavy, text-minimal strategy. If the user truly needs a text-heavy infographic, recommend the Canva fallback.

## When to use infographic mode

**Right fit**:
- Product roadmap visual (3-5 milestones, each with one icon + one short label)
- Simple process flow with 3-7 nodes (a step diagram, not full UML)
- Comparison chart with 2-3 columns (e.g. "DIY with AI vs Hire freelancer vs Hire agency")
- One-page plan summary (3-5 key numbers + 3-5 icon-driven sections)
- "How it works" hero — explain a workflow with one visual metaphor
- Stat-highlight post — one big number + 2-3 supporting numbers + minimal icons

**Wrong mode — switch immediately**:
- Text-heavy infographic with >5 data points and detailed labels → recommend a Canva template, or generate HTML/SVG via a different skill
- Charts that need detailed axis labels (bar chart, line chart, real data) → recommend an HTML/SVG infographic
- UML / ERD / complex network diagrams → use diagram-as-code (Mermaid, PlantUML)
- Infographic slide in a deck → use the `html-ppt-*` skills

## KEY strategy — TEXT MINIMAL, ICON MAXIMUM

AI-generated text inside images is **not reliable** — letters warp, spelling breaks, diacritics shatter. Work around it:

- **2-3 numbers max** in the image — large, bold, isolated, no long paragraphs
- **Icons instead of labels** — use universal symbols (gear, rocket, target, chart-up, checkmark, lightbulb)
- **Color-coded sections** — branded palette segments the regions so you don't need text labels (color carries the meaning)
- **Explanation text lives UNDER the image** in the post body (caption, blog text) — NEVER inside the image — text accuracy is 100% via HTML/plain text

## Section anti-patterns

- Text-heavy infographic (>5 labels, paragraphs of 2+ lines) — warped letters, misspellings, broken diacritics
- Small text inside the image (font size below ~24px equivalent) — blurs into a blob
- Complex flow with >7 nodes — the model gets confused, layout turns into a mess, arrows lose clarity
- Detailed axis labels on charts (X-axis dates, Y-axis numbers) — data goes wrong
- Mixing icon styles in one image (flat + 3D + line + filled) — feels inconsistent
- Skipping the branded palette — output drifts away from the parent brand
- Palette with >3 colors — overwhelms the eye, kills the focus on key numbers
- Background too detailed — competes visually with the icons and numbers

## Prompt composition specifics

- **Subject**: clean isometric illustration OR flat-vector design with 3-5 large icons + 2-3 huge numbers — composition organized as grid / circle / flow layout
- **Composition**: organized symmetric layout OR clear flow direction (left→right, top→bottom), generous whitespace between elements
- **Lighting**: flat shading (vector look) — NEVER photographic, NEVER dramatic shadows
- **Palette**: strict brand hex (3 colors max — primary + accent + neutral). No brand yet → propose 1 saturated primary + 1 accent + 1 neutral (white/cream/charcoal)
- **Style anchors**: "minimalist infographic", "vector-style flat design", "isometric icons", "clean modern data visualization", "limited color palette", "organized grid layout"
- **Number rendering**: only 2-3 numbers max, BIG BOLD format (e.g. "10x", "85%", "3 phases") — isolated one number at a time

Required negatives: "no small text, no detailed text labels, no spelling errors, no warped letters, no charts with axis labels, no busy background, no photographic style, no realistic illustration, no extra elements competing with main data"

## Workaround when the user needs a text-heavy infographic

If the user demands >5 data points with detailed labels, print the warning:

```
[WARNING] Infographic with >5 text labels is not reliable through AI image gen
(text will warp, spelling will break, diacritics shatter).

Two recommended paths:
  1) Generate HTML/SVG infographic — 100% text accuracy, use the html-ppt-*
     skills or any other skill with HTML output (CSS, real fonts, easy edits).
  2) Canva template — quick drag-and-drop, built-in icon library, export PNG/PDF.

Still want to generate the AI image with text-warp risk? (y/n)
```

Only proceed if the user confirms y.

## Examples

- **AI Income Mastery 4-phase roadmap** — isometric illustration of 4 milestone steps (rocket → gear → chart-up → trophy icons), 4 BIG numbers "Q1 Q2 Q3 Q4", brand palette teal #00A8A8 + slate #2C3E50 + cream, organized horizontal flow → 16:9 landing hero
- **Comparison "AI vs Human vs Hybrid"** — flat vector with 3 columns, icons (robot / person / handshake), 3 BIG percentage numbers "70% / 95% / 90%", no detailed labels — explanation in the post caption → 1:1 IG
- **"How our system works" stat hero** — one BIG number "10x faster" center, 3 supporting small icons around it (clock + arrow + checkmark), minimal brand palette teal+slate → 1:1 LinkedIn post

## Grill questions

1. Data-point count: 2-3 (OK), 4-5 (OK), >5 (recommend Canva/HTML workaround)?
2. Decoration vs accuracy preference: prioritize beautiful visual (accept limited text) or prioritize precise text (recommend HTML/Canva)?
3. Target format: social post (1:1, 4:5), slide deck (16:9), web hero (16:9), story (9:16)?
4. Brand palette in hex available, or suggest by mood?
5. Style direction: isometric 3D vector / flat 2D vector / minimal line icons?
6. Specific icons in mind (e.g. "rocket, gear, chart, target"), or suggest based on the data?
