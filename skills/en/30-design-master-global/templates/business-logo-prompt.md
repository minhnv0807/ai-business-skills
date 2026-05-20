# Template: Business Logo Brainstorm

## Mode
business-logo

## Aspect ratio
1:1 transparent background

## Use case
Brand logo brainstorm across 3-5 directions — early-stage concept exploration. This is NOT a final shippable logo.

## 🚨 Human review disclaimer (REQUIRED in output)

> AI-generated logos for brainstorming only. Logo is a long-term asset — a human designer must refine to vector + create monochrome variants + test scalability before final ship. AI output is for locking in a direction, not for delivering production files.

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
2. **Symbol + wordmark** — icon mark beside or above brand name
3. **Mark only** — abstract symbol, no text
4. **Monogram** — initials stylized (L / LT / LTC)
5. **Letterform** — a single letter as the hero mark

## Filled example (Lattéa coffee chain, 5 variants)

```
Lattéa coffee chain logo brainstorm — values "cozy + autumn warmth + slow-life cafe ritual". 5 directions, all on transparent background, scalable minimalist.

Variant 1 — Wordmark: "Lattéa" custom serif lowercase with warm rounded terminals, brown #5C3B1E single color, slight letter-spacing for breathing room, accent over the é preserved.

Variant 2 — Symbol + wordmark: stylized leaf/coffee-bean hybrid mark to the left of the "Lattéa" serif wordmark, brown #5C3B1E + ochre #C9882A 2-color flat.

Variant 3 — Mark only: abstract simplified autumn leaf folded into a coffee-cup silhouette, single brown color flat, geometric minimal.

Variant 4 — Monogram: "LT" letterforms interlocking, serif with hand-drawn warmth, brown single color, optional circular badge.

Variant 5 — Letterform: a single "L" stylized as a coffee-cup silhouette with negative space inside the letter, brown flat color, scalable to favicon.

Negatives across all variants — no detailed illustration, no shadows, no gradients, no extra decorative elements, no warped letterforms, no spelling errors, no realistic photography, no 3D effects, no neon colors.
```

## Output filename pattern
`logo-brainstorm-[variant-1-to-5].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1024"` (post-process transparent bg)
- MJ: `--ar 1:1 --no background`

## Cross-reference
See `references/business-logo.md` for brand values discovery + designer handoff checklist.
