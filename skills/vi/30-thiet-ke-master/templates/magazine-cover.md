# Template: Magazine Cover

## Mode
editorial

## Aspect ratio
3:4 (standard magazine portrait ratio)

## Use case
Magazine cover, e-book cover, long-form article hero, quarterly report cover. Editorial photography quality, mostly negative space for HTML title overlay.

## Prompt structure

```
[Subject + composition — editorial hero (photography OR illustration), centered or rule of thirds, large negative space top for title overlay]
[Lighting + mood — editorial mood-setting, magazine-quality light]
[Palette + textures — warm paper texture feel, sophisticated muted, brand palette]
[Style + medium — editorial photography 35mm/50mm OR magazine illustration, premium quality]
[Negatives — no text in frame (HTML overlay handles title), no faces unless intentional, no busy detail]
```

## Filled example (OPA Quarterly Q3 2026 cover)

```
Editorial magazine cover for OPA Quarterly Q3 2026 issue, minimalist hero illustration of an abstract compass/navigation concept rendered as paper-cut layered shapes, centered composition with rule of thirds — focal middle-third, top-third reserved as negative space for masthead + issue title overlay, bottom-third minimal with subtle issue meta line.

Editorial mood lighting, soft diffused light from upper-left like museum gallery, subtle paper-cut shadow depth, magazine-photographed quality. Mood — quarterly reflection, intentional direction, sophisticated editorial.

Palette ink #1A1A1A deep blacks, cream #F5EBE0 paper base, ochre #C9882A accent on compass needle, muted brown #5C3B1E shadow layers. Warm paper texture overlay, subtle grain, magazine-stock feel.

Editorial illustration style with photography realism, paper-cut layered art direction like Monocle or Kinfolk Quarterly cover, 3:4 portrait composition optimized for print + digital cover.

Negatives — no text in frame (masthead + title overlay handled via HTML/InDesign), no faces, no busy detail, no neon colors, no AI-slop illustration patterns, no warped compass geometry, no decorative ornament.
```

## Output filename pattern
`magazine-cover-[issue-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1792"` (closest to 3:4, accept slight crop)
- MJ: `--ar 3:4`

## Cross-reference
Xem `references/editorial.md` cho editorial cover composition rules + masthead overlay safe zones.
