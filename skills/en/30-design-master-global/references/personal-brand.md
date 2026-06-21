# Personal Brand Mode

Visual identity for individuals — founders, creators, freelancers, coaches. Lower stakes than business-logo, but still demands clear character and positioning cues.

## When to use personal-brand mode

**Right fit**:
- Profile avatar (LinkedIn, Twitter, IG) — professional and recognizable
- Personal monogram — simple initials or symbol
- Speaker keynote slide cover
- Personal website hero image
- Quote graphic for a personal "guru post" (visual layer only — text comes from `quote-graphic` mode)
- Static AI avatar (a single still image — NOT video; for video use a dedicated AI avatar production skill)
- Reference-to-avatar prompt — the user provides style/mood references and wants a personalized avatar using their face, colors, or logo

**Wrong fit — switch modes**:
- Company logo → `business-logo`
- Brand campaign visual → `business-campaign`
- Video avatar / talking head → dedicated AI avatar production skill
- Full personal website mockup → `web-mockup`

## Brand identity required (lighter than business)

At least 3 of the 4 inputs below:

- **Style adjectives** — 3-5 words (e.g. "warm professional", "creative casual", "tech minimalist")
- **Color preference** — 1-3 colors or a neutral palette (b/w + one accent)
- **Personal photo path** (optional — only if you want high resemblance, e.g. an avatar that matches the real founder)
- **Position keyword** — industry or role (e.g. "AI marketing strategist", "fitness coach", "indie developer")

If the user gives no style hints, grill 3 questions before generating: role/industry, 3 adjectives, and preferred colors.

## Reference Image Intake

When the user provides images, classify every image before drafting the prompt:

| Image type | Use it for | Clear requirement |
|------------|------------|-------------------|
| **Style reference** | Composition, lighting, mood, palette, lens | Can be any image; do not preserve its face unless requested |
| **Face reference** | Face replacement / identity preservation | 1-3 clear face images, good lighting, no filter, preferably front + 3/4 angle |
| **Logo/mark** | Personal brand mark, monogram, watermark | Transparent PNG/SVG; if unavailable, use a text placeholder |
| **Palette reference** | Personal brand colors | Hex codes preferred; if only an image is available, extract main colors and ask user to confirm |
| **Environment reference** | Room, stage, office, location | State where the subject should sit/stand within the scene |

If the user uploads multiple images:
- Create **Flow A/B/C** when each image is a separate style direction.
- Group images when they serve different roles for one output: style ref + face ref + logo + palette.
- For each flow, state: `which image is style`, `which image is face`, `missing assets`, `separate prompt`, `separate negative prompt`.

## Personal Brand Prompt Director Output

```markdown
## Personal Brand Flows

| Flow | Style ref | Face ref | Brand asset | Output |
|------|-----------|----------|-------------|--------|
| A | [path/none] | [path/needed] | [logo/palette/needed] | avatar/profile visual |

## Copy-Paste Prompt — Flow A
[English prompt preserving the referenced subject identity and applying the selected style]

## Upload Next
- Face reference:
- Logo/monogram:
- Brand colors:
- Outfit/background:
```

## Section anti-patterns

- Generic stock-photo-looking avatar — output must carry character and positioning cues (a coach should read as a coach; a developer should read as a developer)
- Overly detailed monogram (>3 elements) — a simple monogram scales cleanly from favicon to billboard
- Quote graphic with text rendered inside the AI image — always use an HTML overlay for text accuracy (see `quote-graphic` mode)
- Skipping the "position keyword" — the model has no cue for which industry to render and falls back to a generic avatar
- Avatar facing away or with face obscured — recognizable means a clear 3/4 or front-facing view

## Prompt composition specifics

For a personal avatar:
- **Subject**: close-up portrait or 3/4 angle, eye-level, character matched to the position keyword (e.g. "AI marketing strategist" → smart-casual blazer, holding laptop, modern workspace background)
- **Lighting**: warm natural daylight (approachable) or studio key + rim (professional / authoritative)
- **Palette**: sophisticated muted tones (avoid neon, garish colors) — unless the position is explicitly "creative bold"
- **Style**: photographic realistic 85mm portrait shallow DOF — or editorial illustration if the personal brand leans creative / artistic

Required negatives: "no extra fingers, no warped face, no logo placeholders, no text in frame, no AI-slop typography, no plastic skin"

## Examples

- **Mark Chen — OPA founder**: "AI marketing strategist, male early-30s, smart-casual navy blazer, modern co-working background with soft bokeh, warm natural daylight, 85mm portrait shallow DOF, sophisticated muted palette" → 1:1 LinkedIn avatar
- **Coach Lana — fitness coach**: "Female fitness coach late-20s, athletic wear, blurred gym background, confident smile, golden-hour studio light, energetic warm tones" → 9:16 IG story cover

## Grill questions

1. Role + industry, one line (e.g. "AI marketing strategist", "fitness coach", "indie developer")?
2. 3-5 adjectives describing the personal brand voice (e.g. "warm + analytical + bold")?
3. Color preference — neutral b/w + 1 accent, or 2-3 brand colors in hex?
4. Any reference images? Label them as style ref, face ref, logo, palette, or background.
5. Format needed: profile avatar (1:1), keynote cover (16:9), quote post (1:1), or story (9:16)?
