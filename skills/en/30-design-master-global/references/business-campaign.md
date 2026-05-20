# Business Campaign Mode

Visuals for a specific brand campaign — TVC stills, OOH, hero product, packaging mockups. Driven by an existing campaign brief.

## When to use business-campaign mode

**Right fit**:
- Hero shot for a specific campaign (e.g. "Lattéa Fall Menu 2026 hero")
- TVC still — a single key-visual frame extracted from a TVC concept
- OOH (billboard, outdoor poster) — high impact, readable from distance
- Product launch hero image
- Campaign landing-page hero (above-the-fold)
- Packaging concept mockup (pre-production visualization)

**Wrong fit — switch modes**:
- Permanent logo (long-term asset) → `business-logo`
- Daily marketing social post (high volume, template-driven) → `marketing-day-to-day`
- Editorial article hero (long-form content) → `editorial`
- Full web mockup (UI screen) → `web-mockup`

## Brand identity (REQUIRED — full set)

- **Logo file**: SVG/PNG primary (overlaid later — do NOT bake into the AI image)
- **Palette hex codes**: primary + secondary + accent (e.g. "#2B1810 + #D4A574 + #F5E6D3")
- **Typography**: font family + weight (for the overlay layer, not for rendering inside the AI image)
- **Style direction**: cinematic / editorial / playful / premium / minimalist
- **Campaign brief context** (PRIMARY SOURCE — do not skip): key message, tone/mood, must-have shots, mandatories — sourced from `02-campaign-brief-global/output.md` or `opa-prd --mode=creative` output

If the campaign brief does not exist → STOP generating. Recommend the user create the brief first via `02-campaign-brief-global` or `opa-prd creative` mode. The brief is the backbone of any campaign visual — generating without one means guessing the key message.

## Section anti-patterns

- Visual doesn't match the brief's key message — e.g. brief says "fall warmth", output is a summer beach scene
- Skipping brand colors — output uses a generic palette that ignores the brand guideline
- Stock-photo aesthetic — output must carry brand character, not look like generic Shutterstock
- Multiple subjects competing for attention — pick a single focal point at a rule-of-thirds intersection
- Placing a logo in-frame and getting warped AI text → recommend overlaying the logo via HTML/Photoshop post-processing instead of baking it into the AI image
- Forgetting to specify the medium (lens / texture / light) → output reads flat and characterless
- Aspect ratio mismatched to deployment (e.g. generating 1:1 for a 3:4 billboard → ugly crop or stretch)

## Prompt composition specifics

- **Subject**: one focal point matching the key message (e.g. "Lattéa fall menu" → close-up latte art with an autumn-leaves backdrop, visible steam, cozy mood)
- **Composition**: rule of thirds, focal point at an intersection — avoid center-framing unless the style is minimalist
- **Lighting**: drawn from the brief's tone
  - Cinematic chill → warm soft golden-hour
  - Premium → sharp directional studio + rim light
  - Playful → bright cheerful diffused
  - Editorial → natural window light, slight contrast
  - Minimalist → flat soft even light
- **Palette**: exact brand hex (e.g. "#2B1810 deep brown + #D4A574 cream + warm autumn ambient + #C44E2A leaf accent")
- **Style**: medium + concrete visual reference (e.g. "85mm portrait lens shallow DOF", "muted ochre paper texture with grain", "natural autumn light through window blinds")
- **Negatives**: "no logo in frame (overlay later), no text, no stock-photo aesthetic, no neon colors unless brand, no fingers/text/UI elements, no watermark, no busy background"

## Examples

- **Lattéa Fall Menu 2026 hero (16:9 landing)**:
  - Brief key message: "the warmth of autumn"
  - Prompt: "Close-up latte art with autumn leaf pattern, ceramic mug on rustic wood table, scattered dried maple leaves, warm golden afternoon light through window, visible rising steam, shallow DOF 85mm lens, palette warm browns #2B1810 cream #F5E6D3 burnt orange #C44E2A, cinematic mood with film grain"
  - Negatives: "no logo, no text, no people, no neon, no stock aesthetic"

- **Lumière Studio OOH billboard (3:4 portrait)**:
  - Brief key message: "creative without limits"
  - Prompt: "Bold abstract paint-splash composition, cyan magenta yellow ink on white canvas, dynamic motion frozen, sharp directional studio light, premium editorial style, palette #00FFFF #FF00FF #FFFF00 on pure white, 3:4 vertical composition with focal point in upper-third"
  - Negatives: "no logo (overlay later), no text, no realistic people, no products"

## Grill questions

1. Campaign brief path or link (`.planning/campaigns/[name]/brief.md`)?
2. Key message in a single sentence (what should the audience remember after seeing it)?
3. Must-have shots — 3-5 non-negotiable moments from the brief?
4. Tone/mood (cinematic / editorial / playful / premium / minimalist)?
5. Exact palette hex (from the brand guideline)?
6. Deployment format: hero web (16:9), OOH billboard (3:4 or 4:3), social (1:1 / 9:16)?
