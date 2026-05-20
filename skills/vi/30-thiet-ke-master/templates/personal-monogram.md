# Template: Personal Monogram

## Mode
personal-brand

## Aspect ratio
1:1 + transparent background recommended

## Use case
Personal initials/symbol cho stationery, email signature, watermark, brand mark cá nhân scalable.

## Prompt structure

```
[Subject + composition — clean monogram design centered, 2-3 character letterform stylized, ample padding]
[Style + medium — minimalist scalable mark, single color OR 2-color max, no illustration no detail]
[Palette — 1 brand color flat OR 2-color flat, no gradients no shadows]
[Background — solid white OR transparent]
[Negatives — no detail elements, no decorative ornament, no warped letters, no spelling drift]
```

## Filled example

```
Clean monogram design centered on canvas, interlocking serif letterforms "MN" (Minh Nguyen), 2 characters stylized as personal brand mark, ample negative space padding around mark.

Minimalist scalable vector-style logo mark, single solid color flat fill, no illustration, no decorative elements, scalable from 16px favicon to billboard size.

Palette warm brown #2B1810 single color, flat solid fill, no gradients, no shadows, no outlines unless integral to letterform.

Background pure white #FFFFFF clean, generous padding around mark for crop flexibility.

Negatives — no decorative ornament, no warped letterforms, no spelling drift, no extra characters, no illustration elements, no gradient fills, no drop shadows, no 3D effects.
```

## Variant suggestions

1. **Stacked** — M trên N, vertical compact
2. **Horizontal** — MN inline ngang, side-by-side
3. **Circular badge** — MN inside circle border seal-style
4. **Interlocking** — M và N overlap creative ligature
5. **Wordmark style** — "Minh Nguyen" full name stylized typography

## Output filename pattern
`personal-monogram-[variant].png` (transparent PNG)

## Aspect ratio API parameter
- gpt-image-2: `"1024x1024"` (export với transparent bg post-processing)
- MJ: `--ar 1:1 --no background`

## Cross-reference
Xem `references/personal-brand.md` cho brand archetype + values trước khi chọn letterform style.
