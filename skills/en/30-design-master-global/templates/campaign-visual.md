# Template: Campaign Visual

## Mode
business-campaign

## Aspect ratio
3:4 (OOH/print poster) OR 16:9 (digital banner)

## Use case
TVC still frame, OOH billboard, campaign poster, integrated marketing key visual. Story-driven, mood-setting, brand-cohesive.

## Prompt structure

```
[Subject + composition — editorial campaign visual, hero subject matching key message, story-driven framing]
[Lighting + mood — brand mood-setting light, evokes campaign emotion]
[Palette + textures — brand palette strict, layered depth, no off-brand colors]
[Style + medium — editorial campaign photography OR conceptual art direction, premium quality]
[Negatives — no logo in-frame, no text in-frame, no stock photo aesthetic, no clichés]
```

## Filled example (Lumière Studio Q3 brand campaign)

```
Editorial campaign visual conceptualizing creative team collaboration, abstract composition with 3-4 silhouetted figures gathered around a glowing whiteboard/screen, rule of thirds with subjects anchored in the lower-third, upper two-thirds reserved as atmospheric space for headline overlay.

Cinematic soft studio light, key light from screen glow (suggesting creative spark / idea moment), ambient warm fill, subtle rim separating figures from the charcoal background. Mood — collaborative momentum, creative confidence, premium agency vibe.

Palette charcoal #1A1A1A base, warm gold accent #D4A574 from screen glow, cream #F5EBE0 highlight on figures, deep navy #2C3E50 shadow. Subtle paper texture overlay, layered depth, sophisticated muted tones.

Modern minimalist editorial style, conceptual art direction akin to Pentagram or Wieden+Kennedy campaigns, 35mm cinematic framing.

Negatives — no Lumière logo in-frame (overlay later), no text in-frame, no stock photo office aesthetic, no clichés (no high-five, no laptop closeups), no neon colors, no AI-slop facial detail (silhouettes only).
```

## Output filename pattern
`campaign-visual-[campaign-slug].png`

## Aspect ratio API parameter
- gpt-image-2: `"1024x1792"` (3:4 print) or `"1792x1024"` (16:9 digital)
- MJ: `--ar 3:4` or `--ar 16:9`

## Cross-reference
See `references/business-campaign.md` for campaign brief breakdown + key-message-to-visual mapping.
