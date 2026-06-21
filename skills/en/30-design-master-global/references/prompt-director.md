# Prompt Director Reference

Use this file when the user provides reference images, asks for a master prompt, needs face/color/logo replacement, uploads multiple images, or gives feedback that a generated result is wrong.

## Intent Priority

Pick the primary intent in this order:

1. **prompt-diagnosis** — the user says the output is wrong, too AI-looking, wrong color, wrong angle, unreadable, or unlike the reference.
2. **reference-to-master-prompt** — the user provides an image and wants the same style, composition, or aesthetic as a reusable prompt.
3. **realistic-human** — the request includes a face, avatar, UGC creator, selfie, portrait, or realistic person.
4. **brand-adaptation** — change brand colors, add logo, or match a brand guideline.
5. **video/storyboard** — motion, camera movement, shot list, or scene sequence.
6. **product/design-standard** — product shot, poster, social post, logo, infographic.

When multiple intents match, keep the highest-priority intent as primary and activate the others as submodules.

## Prompt Layers

Include these layers when useful, but only ask for missing layers that materially affect the result:

- **subject:** who or what is central.
- **identity_preservation:** face, hair, skin tone, body shape, outfit, silhouette, accessories to preserve.
- **environment:** setting, place, background.
- **composition:** crop, angle, framing, subject position, aspect ratio.
- **camera_lens:** smartphone, 35mm, 85mm, macro, wide, fisheye.
- **lighting:** window light, flash, studio, neon, cinematic, flat office.
- **color_palette:** dominant colors, brand colors, colors to replace.
- **style_mood:** realistic, UGC, editorial, premium, playful, futuristic.
- **typography_graphics:** headline, badge, logo, label, UI element; avoid long text inside AI images.
- **output_use:** Facebook post, Reels/TikTok, LinkedIn avatar, deck cover, landing hero.

## Reference Image Workflow

When the user uploads one image:

1. Identify the image role: **style/composition reference**, **face reference**, **logo/brand asset**, **product reference**, or **background/location reference**.
2. If the user is unclear, default to style/composition reference.
3. Write the master prompt using "the referenced subject" or "the provided face reference"; do not assign a real name unless provided by the user.
4. For face/color/logo replacement, explicitly say "use the uploaded face/logo/brand palette" instead of inventing details.
5. End with the exact assets still needed.

When the user uploads multiple images:

```markdown
## Image Flows

| Flow | Image | Role | Task |
|------|-------|------|------|
| A | ref-01 | style/composition | create master prompt |
| B | face-01 | face identity | preserve identity |
| C | logo-01 | brand asset | place logo correctly |
```

- If each image is a different style direction, create a separate Flow A/B/C prompt.
- If images combine into one output, group them by role: style reference + face reference + logo + product.
- If several images serve the same role, choose the strongest primary image and mark the others as secondary cues.

## Asset Request Taxonomy

Ask for the exact asset type instead of saying "send more images":

| Need | Clear request |
|------|---------------|
| Face/avatar replacement | "Upload 1-3 clear face images, good lighting, no filter, preferably front and 3/4 angle." |
| Brand colors | "Send 2-4 hex codes or the brand guideline; if unavailable, name the preferred colors." |
| Logo placement | "Upload a transparent PNG logo or SVG; if unavailable, use a text placeholder." |
| Product accuracy | "Upload front and 45-degree product photos with clear label/packaging." |
| Background/location | "Upload the desired place/background or describe where the subject should be placed." |
| Exact text | "Send exact headline/subheadline/CTA; for long text, generate the background and add text in Canva/HTML." |

## Output Template

```markdown
## Clearly Defined

- Intent:
- Reference role:
- Output use:
- Style/composition:
- Brand/personalization:

## Copy-Paste Prompt

[English prompt]

## Negative Prompt / Avoid

[English avoid list]

## Upload Next To Personalize

- Face reference:
- Brand colors:
- Logo:
- Product/background:
- Exact text:
```

## Realistic Human Rules

Activate when the user wants a real-looking person, UGC, selfie, portrait, or personal avatar:

- Prefer smartphone/photo realism when natural authenticity matters.
- Keep skin texture, slight asymmetry, imperfect crop, and ordinary background details.
- If a face reference exists, preserve facial structure, hairstyle, skin tone, body proportions, and outfit cues.
- Required negatives: plastic skin, glossy AI look, fake bokeh, over-retouched face, warped anatomy, extra fingers, over-sharpened eyes.

## Brand Adaptation Rules

- Never invent a random logo. If no logo is available, use a clean text placeholder with the brand name.
- Follow user-provided hex colors; if the user says OPA and gives no color, use `#155EEF`.
- Priority order: official guideline > uploaded logo > user-provided palette > colors inferred from reference.
- Specify logo placement: top-left badge, bottom-right subtle watermark, packaging label, or hero lockup.

## Diagnosis Mapping

| Feedback | Layer to fix |
|----------|--------------|
| Too AI-looking | realism, skin texture, camera/lens, lighting, background |
| Unlike the reference | identity preservation, reference adherence, composition |
| Wrong brand color | color_palette, brand adaptation |
| Text/font broken | typography, layout, contrast; recommend overlay tool |
| Cluttered layout | composition, graphic_elements, hierarchy |
| Too dark / not premium | lighting, exposure, contrast, material finish |

For diagnosis, revise the affected layer first; do not rewrite the whole prompt unless the concept changed.

## Guardrails

- Do not claim an image has been generated/rendered when only writing a prompt.
- Do not promise exact duplication of copyrighted style or a real person's identity; use "inspired by composition/aesthetic" and require consent for real face/voice assets.
- Do not ask more than 4 questions before giving value; if the input is usable, generate the prompt first.
- Final prompts for image/video models default to English; preserve any exact text that must appear in the image.
