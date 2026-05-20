# Template: Infographic Process

## Mode
infographic

## Aspect ratio
9:16 (vertical) OR 1:1 (square)

## Use case
Process flow diagram, comparison chart, step-by-step visual, framework breakdown. Icons-only (no text labels in the image), arrows clear.

## ⚠️ Workaround note

Text labels are handled via HTML/Canva overlay after image generation. AI image gen is unreliable for rendering small text — warped letters are common. This template focuses on visual structure only (icons + arrows + colors). If a layout needs more than 5 text-heavy data points, recommend a Canva template instead.

## Prompt structure

```
[Subject + composition — flow diagram with 3-7 nodes connected, icons-only (no text labels), arrows clear directional]
[Style + medium — flat illustration OR minimalist isometric, color-coded steps]
[Palette + textures — branded palette with gradient progression through steps]
[Background — clean, allows text overlay later]
[Negatives — no text in frame, no small labels, no warped letters, no axis/data labels]
```

## Filled example (CRISPE prompt framework 6-step visual)

```
Square 1:1 infographic visualizing the "CRISPE prompt framework" — 6 connected nodes arranged in a circular flow OR hexagonal layout, each node a distinct icon (C = capacity/role icon, R = request/target icon, I = insight/context icon, S = statement/action icon, P = personality/style icon, E = experiment/iteration icon). Curved arrows connecting nodes in sequence, central focal of a "prompt" hub element.

Minimalist flat illustration style, geometric clean shapes, color-coded steps with gradient progression — first step lightest, last step deepest brand color.

Palette gradient progression — start cream #F5EBE0 (C), ochre #C9882A (R), warm brown #5C3B1E (I), deeper brown #2B1810 (S), purple accent #6B4E9F (P), gold finale #D4A574 (E). Cohesive brand gradient flow.

Clean cream background with a subtle paper texture, ample padding around nodes (12% each side), arrows as clear thin lines with subtle directional arrowheads.

Negatives — no text in frame (CRISPE letters overlay via HTML later), no small labels, no axis labels, no warped letterforms in frame, no busy decorative elements, no neon colors, no realistic photography.
```

## Output filename pattern
`infographic-process-[framework-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1024"` (1:1) or `"1024x1792"` (9:16)
- MJ: `--ar 1:1` or `--ar 9:16`

## Cross-reference
See `references/infographic.md` for process diagram patterns + icon-to-step mapping strategy.
