# Template: Banner Hero

## Mode
marketing-day-to-day

## Aspect ratio
16:9 (web hero, YouTube thumbnail) HOẶC 21:9 (ultra-wide hero)

## Use case
Website hero section, YouTube thumbnail, email header, blog featured image, podcast cover wide.

## Prompt structure

```
[Subject + composition — wide cinematic, focal off-center (left side typically, reserve right for text overlay)]
[Lighting + mood — cinematic mood-setting, brand-appropriate emotion]
[Palette + textures — brand palette strict, layered depth]
[Style + medium — cinematic editorial photography OR conceptual digital art]
[Negatives — no text in frame, no centered composition (off-center for overlay), no logo in-frame]
```

## Filled example (AI Kiếm Tiền course landing hero)

```
Wide cinematic hero for AI Kiếm Tiền course landing page, abstract digital workspace concept — laptop with glowing screen + notebook + pen arrangement on warm wood desk, focal composition anchored left-third with rule of thirds, right two-thirds reserved as soft-blur atmospheric space for headline overlay.

Cinematic warm afternoon light from window-left, golden hour quality, soft fill from right ambient, subtle screen-glow on laptop surface suggesting active learning moment. Mood — focused momentum, aspirational, premium course vibe.

Palette warm cream #F5EBE0 desk surface + paper, deep brown #2B1810 laptop shadow + ink, gold accent #D4A574 screen glow + pen detail, muted ochre #C9882A notebook cover. Layered depth, subtle paper texture.

Cinematic editorial photography, 35mm lens, f/4 medium DOF, warm color grade like Bloomberg or Monocle, web-hero aesthetic.

Negatives — no text in frame, no centered composition (off-center left for text overlay right), no AI Kiếm Tiền logo in-frame (overlay sau via HTML), no faces, no neon colors, no stock photo aesthetic, no busy clutter on desk.
```

## Output filename pattern
`banner-hero-[page-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1792x1024"`
- MJ: `--ar 16:9` (standard) hoặc `--ar 21:9` (ultra-wide)

## Cross-reference
Xem `references/marketing-day-to-day.md` cho hero composition rules + text overlay safe zones.
