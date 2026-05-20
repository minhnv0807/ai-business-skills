# Template: Web Hero Mockup

## Mode
web-mockup (hybrid — image only, NOT full interactive)

## Aspect ratio
16:9 (desktop hero standard)

## Use case
Hero section image cho landing page concept exploration, mood-board hero visual. **KHÔNG phải full interactive mockup.**

## 🚨 CRITICAL NOTE

Đây là **hero image only** — không phải HTML mockup. Cho **full interactive mockup**:
- Landing page → invoke skill `web-prototype` hoặc `saas-landing`
- Mobile app → invoke `mobile-app`
- Dashboard → invoke `dashboard`
- Custom frontend → invoke `frontend-design:frontend-design`

Template này chỉ generate hero background image để designer paste vào HTML mockup tools.

## Prompt structure

```
[Subject + composition — hero section visual, 1 strong concept, focal off-center for text overlay]
[Lighting + mood — cinematic mood-setting, brand-appropriate emotion]
[Palette + textures — brand palette strict, layered depth]
[Style + medium — cinematic editorial OR abstract digital art, web-hero quality]
[Negatives — no UI buttons, no nav bars, no text overlays, no UI elements, no faces (avoid distraction)]
```

## Filled example (AI Kiếm Tiền course landing hero image)

```
Wide cinematic 16:9 hero image for AI Kiếm Tiền course landing page background, abstract digital learning workspace concept — floating geometric shapes suggesting data + ideas + flow, focal composition anchored right-third with rule of thirds, left two-thirds reserved as soft-gradient atmospheric space for headline + CTA overlay.

Cinematic warm golden hour light from upper-right, soft gradient transition to cream left, subtle glow on floating shapes suggesting momentum + opportunity. Mood — aspirational momentum, premium course vibe, focused clarity.

Palette warm cream #F5EBE0 left half base, gold accent #D4A574 floating shapes highlight, deep brown #2B1810 shape shadows, muted ochre #C9882A subtle gradient transitions. Layered depth, subtle paper texture overlay.

Cinematic abstract digital art with photographic realism, 16:9 widescreen web-hero aesthetic like Stripe or Linear landing pages, premium SaaS quality.

Negatives — no UI buttons, no nav bars, no text overlays, no UI elements (no laptop frames no browser windows), no faces, no neon colors, no AI-slop floating particles, no clichéd "AI hands reaching" tropes, no stock photo aesthetic.
```

## Output filename pattern
`web-hero-[page-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1792x1024"`
- MJ: `--ar 16:9`

## Cross-reference
Xem `references/web-mockup.md` cho hero image vs full mockup decision tree + handoff to frontend skills.
