# Business Campaign Mode

Visual cho 1 brand campaign cụ thể — TVC still, OOH, hero product, packaging mockup. Driven bởi campaign brief có sẵn.

## Khi nào dùng business-campaign mode

**Right fit**:
- Hero shot cho 1 campaign cụ thể (vd "BHOP Fall Menu 2026 hero")
- TVC still — 1 frame key visual extract từ TVC concept
- OOH (billboard, poster outdoor) — high impact, distance readable
- Product launch hero image
- Campaign landing page hero (above-the-fold)
- Packaging concept mockup (pre-production visualization)

**Wrong mode — chuyển ngay**:
- Logo permanent (asset lâu dài) → `business-logo`
- Daily marketing social post (high volume, template) → `marketing-day-to-day`
- Editorial article hero (long-form content) → `editorial`
- Web full mockup (UI screen) → `web-mockup`

## Brand identity (REQUIRED — full set)

- **Logo file**: SVG/PNG primary (sẽ overlay sau, không bake vào AI image)
- **Palette hex codes**: primary + secondary + accent (vd "#2B1810 + #D4A574 + #F5E6D3")
- **Typography**: font family + weight (cho overlay layer sau, không phải in AI image)
- **Style direction**: cinematic / editorial / playful / premium / minimalist
- **Campaign brief context** (PRIMARY SOURCE — không skip): key message, tone/mood, must-have shots, mandatories — từ `02-brief-chien-dich/output.md` hoặc `opa-prd --mode=creative` output

Nếu campaign brief không tồn tại → STOP gen. Recommend user tạo brief trước qua `02-brief-chien-dich` skill hoặc `opa-prd creative` mode. Brief là backbone của campaign visual — gen mà không có brief = guessing key message.

## Section anti-patterns

- Visual không match key message của brief — vd brief nói "fall warmth", gen ra summer beach scene
- Skip brand color — gen generic palette không khớp brand guideline
- Stock photo aesthetic — phải có brand character, không giống Shutterstock generic
- Multiple subjects fighting attention — 1 focal point duy nhất (rule of thirds intersection)
- In-frame logo placement nhưng AI gen text méo → recommend overlay logo qua HTML/Photoshop post-processing, không bake vào AI image
- Quên specify medium (lens / texture / light) → output flat, không có character
- Aspect ratio mismatch với deployment (vd gen 1:1 cho billboard 3:4 → crop xấu hoặc stretch)

## Prompt composition specifics

- **Subject**: 1 focal point match key message (vd "BHOP fall menu" → close-up latte art with autumn leaves backdrop, steam visible, cozy)
- **Composition**: rule of thirds, focal point ở intersection — không center-frame trừ khi style minimalist
- **Lighting**: theo tone từ brief
  - Cinematic chill → warm soft golden hour
  - Premium → studio sharp directional + rim light
  - Playful → bright cheerful diffused
  - Editorial → natural window light, slight contrast
  - Minimalist → flat soft even
- **Palette**: brand hex chính xác (vd "#2B1810 nâu đậm + #D4A574 cream + warm autumn ambient #C44E2A leaf accent")
- **Style**: medium + visual reference cụ thể (vd "85mm portrait lens shallow DOF", "muted ochre paper texture grain", "natural autumn light through window blinds")
- **Negatives**: "no logo in frame (overlay sau), no text, no stock photo aesthetic, no neon colors unless brand, no fingers/text/UI elements, no watermark, no busy background"

## Examples

- **BHOP Fall Menu 2026 hero (16:9 landing)**:
  - Brief key message: "ấm áp mùa thu Sài Gòn"
  - Prompt: "Close-up Vietnamese latte art with autumn leaf pattern, ceramic mug on rustic wood table, scattered dried maple leaves, warm golden afternoon light streaming through window, steam rising visible, shallow DOF 85mm lens, palette warm browns #2B1810 cream #F5E6D3 burnt orange #C44E2A, cinematic mood film grain"
  - Negatives: "no logo, no text, no people, no neon, no stock aesthetic"

- **Lumière agency OOH billboard (3:4 portrait)**:
  - Brief key message: "creative without limits"
  - Prompt: "Bold abstract paint splash composition cyan magenta yellow ink on white canvas, dynamic motion frozen, studio sharp light directional, premium editorial style, palette #00FFFF #FF00FF #FFFF00 on pure white, 3:4 vertical composition focal upper-third"
  - Negatives: "no logo (overlay sau), no text, no realistic people, no products"

## Grill questions

1. Campaign brief path hoặc link (`.planning/campaigns/[name]/brief.md`)?
2. Key message 1 câu duy nhất (audience phải nhớ điều gì sau khi xem)?
3. Must-have shots — 3-5 moments non-negotiable từ brief?
4. Tone/mood (cinematic / editorial / playful / premium / minimalist)?
5. Palette hex chính xác (từ brand guideline)?
6. Format deployment: hero web (16:9), OOH billboard (3:4 hoặc 4:3), social (1:1 / 9:16)?
