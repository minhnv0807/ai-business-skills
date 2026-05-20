# Template: Product Hero

## Mode
business-campaign

## Aspect ratio
16:9 (web hero) HOẶC 1:1 (social hero) — config theo platform target

## Use case
Hero shot product launch / campaign landing page / featured product showcase. Một focal point, cinematic, mood-setting.

## Prompt structure

```
[Subject + composition — 1 focal product, rule of thirds, cinematic framing, shallow DOF]
[Lighting + mood — cinematic editorial light matching campaign tone, premium feel]
[Palette + textures — brand palette strict, no off-brand colors, realistic texture]
[Style + medium — cinematic photography 85mm OR product editorial, magazine-quality]
[Negatives — no logo in-frame, no text overlay in-frame, no stock photo aesthetic, no neon]
```

## Filled example (BHOP fall menu launch)

```
Close-up product hero of pumpkin spice latte in BHOP signature ceramic mug, top-down 45-degree angle, focal point upper-third with autumn leaves blurred backdrop bottom-third. Rule of thirds — mug anchored left-center, leaves trailing bottom-right, negative space upper-right for headline overlay.

Cinematic warm afternoon light from window-left, golden hour quality, soft fill bouncing off warm wood table surface, subtle steam wisps rising from latte. Mood — cozy autumn warmth, premium hand-crafted, slow-life vibe.

Palette ochre #C9882A latte foam art, warm brown #5C3B1E coffee, cream #F5EBE0 ceramic, deep red-brown #8B3A1F autumn leaves accent. Realistic ceramic texture, frothed milk surface, paper-thin leaf veins.

Cinematic editorial photography, 85mm lens, f/2.8 shallow DOF, warm color grade like Kinfolk Magazine, product-hero aesthetic.

Negatives — no BHOP logo in-frame (overlay sau via HTML), no text in-frame, no stock photo aesthetic, no neon colors, no oversaturated colors, no AI-slop steam patterns, no warped mug proportions.
```

## Output filename pattern
`product-hero-[campaign-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1792x1024"` (web hero) hoặc `"1024x1024"` (social)
- MJ: `--ar 16:9` hoặc `--ar 1:1`

## Cross-reference
Xem `references/business-campaign.md` cho campaign tone discovery + product hero composition patterns.
