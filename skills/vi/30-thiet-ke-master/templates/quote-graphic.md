# Template: Quote Graphic

## Mode
quote-graphic (hybrid — AI generates background, HTML overlays text)

## Aspect ratio
1:1 HOẶC 4:5

## Use case
Quote post IG/LinkedIn/FB, motivational social post, personal brand inspiration. Strategy hybrid — AI gen background, HTML/Canva overlay text.

## Strategy

1. **AI gen background image** — abstract/textural, NO focal subject competing với text
2. **HTML overlay text** — quote + author handle + brand logo via HTML/CSS hoặc Canva

## Prompt structure (BACKGROUND only)

```
[Subject + composition — abstract/textural background, NO focal subject, allows text overlay center]
[Lighting + mood — soft moody lighting, contrast appropriate for text color]
[Palette + textures — brand secondary palette, paper/gradient/abstract texture]
[Style + medium — textural background art, NOT illustration NOT photography with subject]
[Negatives — no text, no faces, no detailed subject, no logos in background]
```

## Filled example (BACKGROUND for "Output > Input" personal brand quote)

```
Square 1:1 background image for quote graphic post, abstract warm gradient texture — diagonal gradient flowing from upper-left cream to lower-right warm brown, subtle paper-grain texture overlay, NO focal subject competing for attention. Composition allows centered text overlay with breathing room all sides.

Soft moody warm lighting, ambient golden tone, slight vignette darkening corners for depth, mood — reflective contemplative momentum, personal brand quote vibe.

Palette warm cream #F5EBE0 upper-left base, muted brown #5C3B1E lower-right deep, subtle ochre #C9882A gradient midpoint. Paper texture overlay subtle, layered depth without busy detail.

Textural background art style, abstract gradient + paper texture, NOT illustration with subject, NOT photography with focal point — purely atmospheric backdrop for text.

Negatives — no text, no faces, no detailed subject, no illustrations, no logos in background (logo overlay via HTML corner sau), no neon colors, no busy patterns, no warped texture artifacts.
```

## HTML overlay template

```html
<div class="quote-card">
  <div class="quote-text">Output &gt; Input</div>
  <div class="quote-author">— @minhnguyen</div>
  <div class="brand-logo">[logo svg corner]</div>
  <div class="accent-line"></div>
</div>

<style>
.quote-card { position: relative; aspect-ratio: 1/1; padding: 8%; }
.quote-text { font-family: 'Playfair Display', serif; font-size: 4rem;
  color: #2B1810; line-height: 1.2; max-width: 80%; }
.quote-author { font-family: 'Inter', sans-serif; font-size: 1rem;
  color: #5C3B1E; margin-top: 2rem; opacity: 0.7; }
.brand-logo { position: absolute; bottom: 5%; right: 5%;
  width: 8%; opacity: 0.6; }
.accent-line { width: 60px; height: 2px; background: #D4A574;
  margin: 1.5rem 0; }
</style>
```

## Output filename pattern
`quote-bg-[quote-slug].png` (background) + `quote-final-[quote-slug].png` (HTML render)

## Aspect ratio API parameter
- gpt-image-2: `"1024x1024"` (1:1) hoặc `"1024x1792"` (4:5 manual crop)
- MJ: `--ar 1:1` hoặc `--ar 4:5`

## Cross-reference
Xem `references/quote-graphic.md` cho HTML overlay variants + typography pairing.
