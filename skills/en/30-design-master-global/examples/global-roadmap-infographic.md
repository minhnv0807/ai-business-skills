---
title: AI Income Mastery 2026 roadmap infographic
type_artifact: image-generated
mode: infographic
subject: Vertical 9:16 infographic of the AI Income Mastery 2026 product roadmap (4 phases Q1/Q2/Q3/Q4) for launch announcement post on LinkedIn + X (Twitter) — text-minimal strategy (icons + 4 large numbers), full details in the caption
source_brief: none
brand_identity:
  logo_path: assets/brand/ai-income-mastery-logo.svg
  palette: ["#6d28d9", "#2563eb", "#10b981", "#f59e0b", "#f43f5e"]
  typography: Inter (HTML caption only — image text minimal)
  style_adjectives: ["minimalist", "isometric flat", "vector clean", "modern tech", "no shadows"]
format: infographic
aspect_ratio: 9:16
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/ai-income-roadmap-2026.png
  - docs/design/ai-income-roadmap-2026.md
created: 2026-05-20
last_updated: 2026-05-20
---

# AI Income Mastery 2026 roadmap infographic

## Context

AI Income Mastery (Mark Chen's flagship course product, hosted on Lumière Studio) is launching its combined 2026 roadmap across two product surfaces: the **course curriculum** + the **community / cohort platform**. A single hero infographic is needed — vertical 9:16 — for the launch announcement post on LinkedIn + X (Twitter). The image serves as a visual hook at the top of the post; the text-heavy detail (15+ data points: deliverables, deadlines, dependencies) lives in the caption body.

**User decision (locked in)**: generate via gpt-image-2 with a **text-minimal strategy** — accepting that AI-generated text is unreliable. Embed only:
- 4 large numbers (Q1, Q2, Q3, Q4)
- 4 isometric icons (one per phase)
- A subtle connected flow line

Every other piece of detailed text (phase name, deliverable list, dependencies, dates) → goes in the post caption, **NOT forced into the image**.

**Anti-pattern to avoid**: do NOT force the AI to render 15+ data points of text → it will warp letters and misspell ("Q1" becomes "QI", "Q4" becomes "Q4official"). Only accept the 4 quarter labels — short, controlled, easy to verify.

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Logo AI Income Mastery | `assets/brand/ai-income-mastery-logo.svg` (manual overlay in Figma afterwards — NOT in the prompt) |
| Primary palette | violet `#6d28d9` (AI Income Mastery brand color) |
| Per-phase accent palette | blue `#2563eb` (Q1) + emerald `#10b981` (Q2) + amber `#f59e0b` (Q3) + rose `#f43f5e` (Q4) |
| Typography | Inter (HTML caption only — image text minimal) |
| Style adjectives | minimalist isometric flat design, vector clean, modern tech, no shadows, no realistic 3D |

## Prompt composed (5-section structure)

```
[Subject + composition]
Vertical infographic 9:16 portrait, 4 horizontal sections stacked top to bottom representing 4 phases, each section contains one large isometric flat-design icon on left + one huge stylized number (Q1, Q2, Q3, Q4) on right, sections connected with subtle vertical flow line dotted style, generous padding between sections, clean modern grid layout.

[Lighting + mood]
Flat shading no shadows no gradients no depth, even ambient light, mood is forward-looking and confident, tech roadmap presentation feel.

[Palette + textures]
Section 1 (Q1): blue accent #2563eb on cream background; Section 2 (Q2): emerald accent #10b981; Section 3 (Q3): amber accent #f59e0b; Section 4 (Q4): rose accent #f43f5e; all sections share violet #6d28d9 primary for icons + numbers; flat solid colors no textures, paper-white background overall.

[Style + medium]
Minimalist infographic vector-style flat design, isometric icons (slight 30-degree angle for 3D feel without realistic rendering), clean modern tech aesthetic, NO realistic photography, NO illustrations with characters, design system feel similar to Linear/Notion/Figma marketing pages.

[Negatives]
no small text, no detailed text labels, no spelling beyond Q1/Q2/Q3/Q4, no warped letters, no charts with axis labels, no realistic 3D rendering, no shadows or gradients, no AI-slop blurry artifacts, no people or faces, no busy patterns.
```

## Output

- File: `docs/design/ai-income-roadmap-2026.png` — 1024×1792, 9:16 vertical, HD quality
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 1 generation pass. Self-test 3-question PASS — brand fit (AI Income Mastery violet primary + 4 accent palette), voice fit (minimalist tech aligned with thought leadership voice), text accuracy ACCEPTABLE (only 4 quarter labels Q1–Q4, easy to generate correctly). Logo overlay is added manually in Figma at the top-center.

## Workaround note

> ⚠️ Text inside an AI-generated image is unreliable. The detailed roadmap (15+ data points: deliverables per phase, dependencies, dates, milestones) is written in the post caption — NOT forced into the image. If the user genuinely needs a text-heavy version with 100% accurate spelling → recommend the **Canva "Roadmap" template** (`https://canva.com/templates/roadmap`) — fill text via the Canva editor for exact accuracy. This image is ONLY a hero visual for the launch post, not the canonical roadmap reference.

## Next steps

1. **Figma overlay**: import the PNG into Figma, overlay the AI Income Mastery logo top-center + section title text Inter Bold for each phase (e.g. "Q1 — Curriculum v3.0", "Q2 — Cohort platform launch", "Q3 — AI tutoring beta", "Q4 — Certification track") — keep typography in Figma for text accuracy
2. **Post LinkedIn**: caption carries the text-heavy detailed roadmap (15+ data points across deliverable / dependency / date per phase) — the hero image is the visual hook at the top of the post
3. **Cross-post X (Twitter)**: thread of 4 tweets — one per phase, each with a 9:16 crop of that section (X cards support vertical media)
4. **Cross-post `26-thought-leadership-content-global`**: generate narrative reflection posts commentary for each phase — e.g. "Why Q2 cohort platform first?" decision-log content
5. **Track**: impressions + saves rate on the launch post — if it performs, generate a mid-year variant (Q2 close → recap + Q3 preview)
