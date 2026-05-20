---
title: OPA Kit + ai-business-skills 2026 roadmap infographic
type_artifact: image-generated
mode: infographic
subject: Vertical 9:16 infographic 2026 roadmap OPA Kit + ai-business-skills (4 phase Q1/Q2/Q3/Q4) cho launch announcement post LinkedIn + Twitter — text-minimal strategy (icons + 4 large numbers), chi tiết viết trong caption
source_brief: none
brand_identity:
  logo_path: assets/brand/opa-logo.svg
  palette: ["#6d28d9", "#2563eb", "#10b981", "#f59e0b", "#f43f5e"]
  typography: Inter (HTML caption only — image text minimal)
  style_adjectives: ["minimalist", "isometric flat", "vector clean", "modern tech", "no shadows"]
format: infographic
aspect_ratio: 9:16
gen_mode: api-direct
model: gpt-image-2
output_files:
  - docs/design/opa-roadmap-2026.png
  - docs/design/opa-roadmap-2026.md
created: 2026-05-20
last_updated: 2026-05-20
---

# OPA Kit + ai-business-skills 2026 roadmap infographic

## Context

OPA launching combined 2026 roadmap cho 2 sản phẩm chính: OPA Kit (Claude Code plugin) + ai-business-skills (skills marketplace). Cần 1 hero infographic vertical 9:16 cho launch announcement post LinkedIn + Twitter — visual hook đầu post, chi tiết roadmap text-heavy (15+ data points: deliverable, deadline, dependency) viết trong caption.

**User decision (đã chốt)**: gen via gpt-image-2 với strategy text-minimal — chấp nhận AI gen text unreliable. Chỉ embed:
- 4 large numbers (Q1, Q2, Q3, Q4)
- 4 icons isometric mỗi phase
- Connected flow line subtle

Mọi text chi tiết (phase name, deliverable list, dependencies, dates) → viết caption post, KHÔNG ép AI vẽ.

**Anti-pattern tránh**: KHÔNG ép AI gen 15+ data point text → sẽ méo chữ, sai chính tả "Q1" thành "QI", "Q4" thành "Q4official". Chỉ chấp nhận 4 number text dễ kiểm soát.

## Brand identity loaded

| Asset | Path / Value |
|-------|--------------|
| Logo OPA | `assets/brand/opa-logo.svg` (overlay manual sau qua Figma, KHÔNG đưa vào prompt) |
| Palette primary | violet `#6d28d9` (OPA brand color) |
| Palette accent per phase | blue `#2563eb` (Q1) + emerald `#10b981` (Q2) + amber `#f59e0b` (Q3) + rose `#f43f5e` (Q4) |
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

- File: `docs/design/opa-roadmap-2026.png` — 1024×1792, 9:16 vertical, hd quality
- Tier 2 Pro (`OPENAI_API_KEY` available)
- Model: gpt-image-2
- Render notes: 1 generation pass. Self-test 3-câu PASS — brand fit (OPA violet primary + 4 accent palette), voice fit (minimalist tech aligned thought leadership voice), text accuracy ACCEPTABLE (chỉ 4 quarter labels Q1-Q4 dễ gen đúng). Logo OPA sẽ overlay manual qua Figma góc top-center.

## Workaround note

> ⚠️ Text trong AI gen image unreliable. Roadmap chi tiết (15+ data points: deliverable per phase, dependencies, dates, milestones) sẽ viết trong caption post — KHÔNG ép vào image. Nếu user thực sự cần version text-heavy có spelling chính xác → recommend dùng **Canva template "Roadmap"** (`https://canva.com/templates/roadmap`) — fill text qua Canva interface chính xác 100%. Image này CHỈ dùng làm hero visual cho launch post, không phải reference roadmap chi tiết.

## Next steps

1. **Figma overlay**: import PNG vào Figma, overlay logo OPA top-center + section title text Inter Bold mỗi phase (vd "Q1 — OPA Kit v3.0", "Q2 — Skills marketplace v3.0") — overlay Figma cho text accuracy
2. **Post LinkedIn**: caption text-heavy detail roadmap 15+ data point (deliverable / dependency / date per phase) — hero image làm visual hook đầu post
3. **Cross-post Twitter**: thread 4 tweet — mỗi tweet 1 phase với crop ảnh 9:16 section đó (Twitter card hỗ trợ vertical)
4. **Cross-post `26-thought-leadership-content`**: gen narrative post commentary cho mỗi phase — "Why Q2 focus marketplace?" reflection content
5. **Track**: impressions + saves rate launch post — nếu work, gen variant cho mid-year update (Q2 close → recap + Q3 preview)
