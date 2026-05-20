# Template: Web Hero Mockup

## Mode
web-mockup (hybrid — image only, NOT full interactive)

## Aspect ratio
16:9 (desktop hero standard)

## Use case
Hero section image for landing page concept exploration, mood-board hero visual. **This is NOT a full interactive mockup.**

## 🚨 CRITICAL NOTE

This is a **hero image only** — not an HTML mockup. For a **full interactive mockup**:
- Landing page → invoke skill `web-prototype` or `saas-landing`
- Mobile app → invoke `mobile-app`
- Dashboard → invoke `dashboard`
- Custom frontend → invoke `frontend-design:frontend-design`

This template only generates a hero background image for designers to paste into HTML mockup tools.

## Prompt structure

```
[Subject + composition — hero section visual, 1 strong concept, focal off-center for text overlay]
[Lighting + mood — cinematic mood-setting, brand-appropriate emotion]
[Palette + textures — brand palette strict, layered depth]
[Style + medium — cinematic editorial OR abstract digital art, web-hero quality]
[Negatives — no UI buttons, no nav bars, no text overlays, no UI elements, no faces (avoid distraction)]
```

## Filled example (AI Income Mastery course landing hero image)

```
Wide cinematic 16:9 hero image for the AI Income Mastery course landing page background, abstract digital learning workspace concept — floating geometric shapes suggesting data + ideas + flow, focal composition anchored in the right-third with rule of thirds, left two-thirds reserved as soft-gradient atmospheric space for headline + CTA overlay.

Cinematic warm golden-hour light from upper-right, soft gradient transitioning to cream on the left, subtle glow on the floating shapes suggesting momentum + opportunity. Mood — aspirational momentum, premium course vibe, focused clarity.

Palette warm cream #F5EBE0 left half base, gold accent #D4A574 floating shapes highlight, deep brown #2B1810 shape shadows, muted ochre #C9882A subtle gradient transitions. Layered depth, subtle paper texture overlay.

Cinematic abstract digital art with photographic realism, 16:9 widescreen web-hero aesthetic akin to Stripe or Linear landing pages, premium SaaS quality.

Negatives — no UI buttons, no nav bars, no text overlays, no UI elements (no laptop frames, no browser windows), no faces, no neon colors, no AI-slop floating particles, no clichéd "AI hands reaching" tropes, no stock photo aesthetic.
```

## Output filename pattern
`web-hero-[page-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1792x1024"`
- MJ: `--ar 16:9`

## Cross-reference
See `references/web-mockup.md` for the hero-image vs full-mockup decision tree + handoff to frontend skills.
