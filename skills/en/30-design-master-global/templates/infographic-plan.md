# Template: Infographic Plan

## Mode
infographic

## Aspect ratio
9:16 (vertical long-form data viz)

## Use case
Roadmap infographic, plan summary visual, milestone overview, vertical scrolling content. Visual-first, NOT text-heavy.

## ⚠️ Workaround note

Keep text minimal in AI image gen (text rendering is still unreliable — warped letters and spelling drift are common). If you need more than 5 text-heavy data points, recommend a **Canva template** or an **HTML/SVG infographic** instead of AI generation. This template suits 3-5 large icons + 2-3 huge numbers in a visual layout.

## Prompt structure

```
[Subject + composition — clean isometric or flat illustration, 3-5 LARGE ICONS instead of text labels, vertical 9:16]
[Style + medium — minimalist isometric OR flat illustration, color-coded sections]
[Palette + textures — branded palette, color-coded for each section/phase]
[Background — clean cream OR gradient, ample padding between sections]
[Negatives — no small text, no detailed labels, no spelling, no warped letters, no axis labels]
```

## Filled example (OPA Roadmap 2026 infographic)

```
Vertical 9:16 infographic for the "OPA Roadmap 2026" plan summary, 4 phase sections stacked vertically with an isometric icon for each — Phase 1 (compass icon), Phase 2 (building blocks icon), Phase 3 (network nodes icon), Phase 4 (rocket trajectory icon). Each section has 1 LARGE number (Q1/Q2/Q3/Q4) and 1 hero icon, NO small text labels. Generous padding between sections.

Minimalist isometric flat illustration style, geometric clean shapes with subtle dimension, color-coded sections — each phase a distinct accent color while maintaining brand cohesion.

Palette warm cream #F5EBE0 base, brand purple #6B4E9F primary, gold accent #D4A574 highlight, muted brown #5C3B1E section dividers, soft gradient transitions between phases.

Clean cream background with a subtle paper texture, ample padding (15% top, 15% bottom, 10% sides), section dividers as thin horizontal lines.

Negatives — no small text, no detailed labels, no axis labels, no spelling words in frame (HTML overlay handles labels), no warped letterforms, no busy decorative elements, no neon colors, no chart/graph axes.
```

## Output filename pattern
`infographic-plan-[plan-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1792"`
- MJ: `--ar 9:16`

## Cross-reference
See `references/infographic.md` for text-rendering limitations + Canva fallback workflow.
