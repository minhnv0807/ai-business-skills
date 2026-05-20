# Template: Speaker Keynote Cover

## Mode
personal-brand

## Aspect ratio
16:9 (slide standard cho keynote, pitch deck, webinar)

## Use case
Pitch deck cover, keynote intro slide, webinar splash screen, course teaser cover — title overlay sẽ lo bằng HTML/slide tool, image cung cấp mood + concept background.

## Prompt structure

```
[Subject + composition — cinematic editorial cover, abstract concept matching talk topic, large negative space left or right for title overlay]
[Lighting + mood — mood-setting cinematic, NOT busy, allow text breathing room]
[Palette + textures — brand palette strict, sophisticated, layered depth]
[Style + medium — cinematic editorial photography OR abstract digital art, magazine-quality]
[Negatives — no text in frame, no faces competing for attention, no busy details]
```

## Filled example

```
Cinematic editorial keynote cover, abstract digital wave flowing diagonally across frame, concept of "AI Kiếm Tiền 2026" — momentum + opportunity + sophistication. Composition rule of thirds with subject anchored bottom-right, top-left 40% reserved as negative space for title overlay.

Cinematic mood lighting, warm golden hour rim light from upper-right, subtle ambient warm fill, dramatic but not dark. Mood — aspirational, premium, momentum building.

Palette warm cream #F5EBE0 base, deep brown #2B1810 shadow, gold accent #D4A574 highlight on wave. Subtle paper texture overlay, layered depth without busy detail.

Cinematic editorial style, abstract digital art with photographic realism, 16:9 widescreen composition, magazine-cover aesthetic like Bloomberg Businessweek or Monocle.

Negatives — no text in frame, no faces, no detailed subjects competing for attention, no busy decorative elements, no logo placeholders, no AI-slop typography, no neon colors.
```

## Output filename pattern
`keynote-cover-[talk-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1792x1024"`
- MJ: `--ar 16:9`

## Cross-reference
Xem `references/personal-brand.md` cho talk archetype mapping. Title overlay nên xử lý qua HTML/Keynote/PPT — image chỉ là background.
