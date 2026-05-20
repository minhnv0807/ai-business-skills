# Template: Business Logo Brainstorm

## Mode
business-logo

## Aspect ratio
1:1 transparent background

## Use case
Brand logo brainstorm 3-5 directions — concept exploration giai đoạn đầu. KHÔNG phải final shippable logo.

## 🚨 Human review disclaimer (BẮT BUỘC ở output)

> AI-generated logos for brainstorming only. Logo là asset lâu dài — human designer phải refine vector + monochrome variants + scalability test trước khi ship production. AI output dùng để chốt direction, không phải file deliverable.

## Prompt structure

```
[Subject + composition — clean logo design centered, scalable mark, ample padding]
[Style + medium — minimalist flat, no gradients no shadows, single color OR 2-color]
[Palette — brand color flat, no decorative effects]
[Background — pure white OR transparent]
[Negatives — no detailed illustration, no extra elements, no warped letterforms, no spelling errors]
```

## 5 Variant directions

1. **Wordmark** — brand name typography stylized, no symbol
2. **Symbol + wordmark** — icon mark beside/above brand name
3. **Mark only** — abstract symbol, no text
4. **Monogram** — initials stylized (B / BH / BHC)
5. **Letterform** — 1 letter as hero mark

## Filled example (BHOP cafe, 5 variants)

```
BHOP cafe logo brainstorm — values "cozy + autumn warmth + reading-spot vibe". 5 directions, all on transparent background, scalable minimalist.

Variant 1 — Wordmark: "BHOP" custom serif lowercase with warm rounded terminals, brown #5C3B1E single color, slight letter-spacing for breathing room.

Variant 2 — Symbol + wordmark: stylized leaf/coffee-bean hybrid mark left of "BHOP" serif wordmark, brown #5C3B1E + ochre #C9882A 2-color flat.

Variant 3 — Mark only: abstract simplified autumn leaf folded into coffee-cup silhouette, single brown color flat, geometric minimal.

Variant 4 — Monogram: "BH" letterform interlocking, serif with hand-drawn warmth, brown single color, circular badge optional.

Variant 5 — Letterform: single "B" stylized as coffee cup silhouette negative-space inside the letter, brown flat color, scalable to favicon.

Negatives all variants — no detailed illustration, no shadows, no gradients, no extra decorative elements, no warped letterforms, no spelling errors, no realistic photography, no 3D effects, no neon colors.
```

## Output filename pattern
`logo-brainstorm-[variant-1-to-5].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1024"` (post-process transparent bg)
- MJ: `--ar 1:1 --no background`

## Cross-reference
Xem `references/business-logo.md` cho brand values discovery + designer handoff checklist.
