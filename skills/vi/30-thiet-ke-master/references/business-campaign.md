# Business Campaign Mode

Visual cho 1 brand campaign cu the — TVC still, OOH, hero product, packaging mockup. Driven boi campaign brief co san.

## Khi nao dung business-campaign mode

**Right fit**:
- Hero shot cho 1 campaign cu the (vd "BHOP Fall Menu 2026 hero")
- TVC still — 1 frame key visual extract tu TVC concept
- OOH (billboard, poster outdoor) — high impact, distance readable
- Product launch hero image
- Campaign landing page hero (above-the-fold)
- Packaging concept mockup (pre-production visualization)

**Wrong mode — chuyen ngay**:
- Logo permanent (asset lau dai) → `business-logo`
- Daily marketing social post (high volume, template) → `marketing-day-to-day`
- Editorial article hero (long-form content) → `editorial`
- Web full mockup (UI screen) → `web-mockup`

## Brand identity (REQUIRED — full set)

- **Logo file**: SVG/PNG primary (se overlay sau, khong bake vao AI image)
- **Palette hex codes**: primary + secondary + accent (vd "#2B1810 + #D4A574 + #F5E6D3")
- **Typography**: font family + weight (cho overlay layer sau, khong phai in AI image)
- **Style direction**: cinematic / editorial / playful / premium / minimalist
- **Campaign brief context** (PRIMARY SOURCE — khong skip): key message, tone/mood, must-have shots, mandatories — tu `02-brief-chien-dich/output.md` hoac `opa-prd --mode=creative` output

Neu campaign brief khong ton tai → STOP gen. Recommend user tao brief truoc qua `02-brief-chien-dich` skill hoac `opa-prd creative` mode. Brief la backbone cua campaign visual — gen ma khong co brief = guessing key message.

## Section anti-patterns

- Visual khong match key message cua brief — vd brief noi "fall warmth", gen ra summer beach scene
- Skip brand color — gen generic palette khong khop brand guideline
- Stock photo aesthetic — phai co brand character, khong giong Shutterstock generic
- Multiple subjects fighting attention — 1 focal point duy nhat (rule of thirds intersection)
- In-frame logo placement nhung AI gen text meo → recommend overlay logo qua HTML/Photoshop post-processing, khong bake vao AI image
- Quen specify medium (lens / texture / light) → output flat, khong co character
- Aspect ratio mismatch voi deployment (vd gen 1:1 cho billboard 3:4 → crop xau hoac stretch)

## Prompt composition specifics

- **Subject**: 1 focal point match key message (vd "BHOP fall menu" → close-up latte art with autumn leaves backdrop, steam visible, cozy)
- **Composition**: rule of thirds, focal point o intersection — khong center-frame tru khi style minimalist
- **Lighting**: theo tone tu brief
  - Cinematic chill → warm soft golden hour
  - Premium → studio sharp directional + rim light
  - Playful → bright cheerful diffused
  - Editorial → natural window light, slight contrast
  - Minimalist → flat soft even
- **Palette**: brand hex chinh xac (vd "#2B1810 nau dam + #D4A574 cream + warm autumn ambient #C44E2A leaf accent")
- **Style**: medium + visual reference cu the (vd "85mm portrait lens shallow DOF", "muted ochre paper texture grain", "natural autumn light through window blinds")
- **Negatives**: "no logo in frame (overlay sau), no text, no stock photo aesthetic, no neon colors unless brand, no fingers/text/UI elements, no watermark, no busy background"

## Examples

- **BHOP Fall Menu 2026 hero (16:9 landing)**:
  - Brief key message: "am ap mua thu Sai Gon"
  - Prompt: "Close-up Vietnamese latte art with autumn leaf pattern, ceramic mug on rustic wood table, scattered dried maple leaves, warm golden afternoon light streaming through window, steam rising visible, shallow DOF 85mm lens, palette warm browns #2B1810 cream #F5E6D3 burnt orange #C44E2A, cinematic mood film grain"
  - Negatives: "no logo, no text, no people, no neon, no stock aesthetic"

- **Lumiere agency OOH billboard (3:4 portrait)**:
  - Brief key message: "creative without limits"
  - Prompt: "Bold abstract paint splash composition cyan magenta yellow ink on white canvas, dynamic motion frozen, studio sharp light directional, premium editorial style, palette #00FFFF #FF00FF #FFFF00 on pure white, 3:4 vertical composition focal upper-third"
  - Negatives: "no logo (overlay sau), no text, no realistic people, no products"

## Grill questions

1. Campaign brief path hoac link (`.planning/campaigns/[name]/brief.md`)?
2. Key message 1 cau duy nhat (audience phai nho dieu gi sau khi xem)?
3. Must-have shots — 3-5 moments non-negotiable tu brief?
4. Tone/mood (cinematic / editorial / playful / premium / minimalist)?
5. Palette hex chinh xac (tu brand guideline)?
6. Format deployment: hero web (16:9), OOH billboard (3:4 hoac 4:3), social (1:1 / 9:16)?
