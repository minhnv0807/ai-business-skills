---
name: 45-design-tool-brief-global
description: "Use when the user needs hands-on production direction for a designer working in a design tool (Canva, Figma, or Adobe Express): which template to start from, the operating order, element-by-element mapping, grid and spacing, export checklist, and dos and don'ts. Colors and fonts come from the brand kit. Trigger on 'design tool brief', 'Canva brief', 'Figma brief', 'production direction', 'layout direction', 'template direction', or 'how do I build this in Canva'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "design tool brief"
  - "Canva brief"
  - "Figma brief"
  - "production direction"
  - "layout direction"
  - "template direction"
  - "how do I build this in Canva"
output: "File .md — full production direction: base template, brand system quick reference, element-by-element direction, export checklist. The designer opens the tool and executes on brand."
related:
  - product-marketing-context-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 43-carousel-brief-global
  - 46-brand-guideline-global
  - 47-design-review-global
  - 50-asset-resize-global
---

# Design Tool Brief (Global)

A good production brief means the designer opens the right template, uses the right elements, and never hunts around. Colors, fonts, and logos come from the brand kit inside the tool or from the brand guideline (`46-brand-guideline-global`) — never chosen ad hoc.

This skill is tool-agnostic. The workflow is the same in **Canva**, **Figma**, or **Adobe Express** — only the terminology differs (Canva Brand Kit / Figma styles and variables / Adobe Express brand). State which tool the team uses at the top of the brief.

## Information gathering

Read the brand guideline and the originating brief (`42-image-brief-global` or `43-carousel-brief-global`) if available. If information is missing, ask up to 4 questions:

1. **Design type, tool, and canvas size?** Post, story, carousel, presentation, or email banner — in which tool, at how many pixels?
2. **Where does the designer start?** New file from blank, edit an existing template, or duplicate a previous design (link)?
3. **Is the content ready?** Is the copy approved, and how many variants or sizes are needed?
4. **Deadline and approver?**

## Principles

1. **No fonts or colors outside the brand kit** unless the lead approves in writing.
2. **No AI-generated imagery in brand content without approval** — use real photography or pre-approved stock.
3. **Share a view or comment link before exporting.** Do not export first and ask for approval after.
4. **Any change after the first approval requires a new approval.**
5. **Never leave a file named "Untitled design"** — apply the naming convention from the start.
6. **Set up the brand kit before designing:** load the palette from the brand guideline, add [heading font] and [body font], and save every logo version.

## Workflow

### 1. Identify the base

State exactly where the designer starts: a link to a brand template, a blank canvas at the correct size, or a duplicate of a specific previous design.

### 2. Follow the standard operating order

| Step | Action |
|------|--------|
| 1 | Open or create the canvas at the exact channel size (see `50-asset-resize-global`) |
| 2 | Set the background to [background color] or [light background color] per the brand guideline |
| 3 | Set accents to [primary color] or [secondary color] |
| 4 | Swap fonts to [heading font] / [body font] |
| 5 | Replace the content, preserving hierarchy (H1 largest, body smallest) |
| 6 | Verify: logo placement correct, colors in palette, text contrast sufficient |

### 3. Map every element

Every text box, image placeholder, and color block gets explicit direction in the template below.

### 4. Export against the checklist

Format, resolution, color profile, file name, folder — never improvised.

## Output structure

File name: `design-tool-brief-[name]-[YYYYMMDD].md`

```markdown
# Design Tool Brief — [Design name]

## Overview
| Item | Detail |
|------|--------|
| Design type | |
| Tool | Canva / Figma / Adobe Express |
| Canvas size | |
| Base | [template link / blank / duplicate of design X] |
| Variants required | |
| Deadline | |
| Approver | |

## Brand system quick reference (from the brand guideline)
Colors:
| Name | Value | Used for |
|------|-------|----------|
| Primary | [primary color] | Headings, CTA buttons, dominant grounds |
| Secondary | [secondary color] | Highlights, accents, standout figures |
| Background | [background color] | Clean grounds |
| Text strong | [strong text color] | Body text on light grounds |
| Text muted | [muted text color] | Subtext, captions |
| Light surface | [light background color] | Section grounds, cards |

Typography:
| Used for | Font | Weight | Suggested size |
|----------|------|--------|----------------|
| Heading H1 | [heading font] | Bold 700 | 40-56px |
| Heading H2 | [heading font] | Bold 700 | 28-36px |
| Heading H3 | [heading font] | SemiBold 600 | 20-24px |
| Body | [body font] | Regular 400 | 14-16px |
| Caption | [body font] | Regular 400 | 11-13px |
| CTA button | [heading font] | Bold 700 | 14-16px |

If the tool does not carry [heading font], use the fallback named in the brand guideline.

Logo:
- Full logo: headers, covers, first slide. Icon only: watermark, story, avatar.
- Default position and clear space: per the brand guideline (commonly 16px).
- Never place the logo over a busy background that muddies it.

Components:
- Primary button: fill [primary color], light text, brand radius, padding 12x24px
- Secondary button: border [primary color], text [primary color], no fill
- Card: light ground, soft shadow, radius 12px, padding 24px

## Element-by-element direction
Text boxes:
| Element | Font | Size | Color | Content (approved) |
|---------|------|------|-------|--------------------|
| Headline | [heading font] Bold | | | "[...]" |
| Subheadline | [heading font] SemiBold | | | "[...]" |
| Body | [body font] Regular | | | "[...]" |
| CTA | [heading font] Bold | | | "[...]" |

Images and visuals:
| Position | Content | Style | Source |
|----------|---------|-------|--------|
| Background | [solid / gradient / photo] | [overlay opacity if any] | [approved stock / upload] |
| Hero image | [description] | [crop style] | [link / upload] |
| Icon set | [line / filled] | [icon color] | [tool library / brand assets] |

Layout grid:
- Outer canvas padding: 40px each edge (desktop) / 24px (mobile-first)
- Element spacing: 16px (tight) / 24px (normal) / 40px (breathing room)
- Text never touches the canvas edge — minimum 24px padding

## Export checklist
- [ ] Format: JPG (static) / PNG (transparency) / PDF (documents)
- [ ] Resolution 2x; color profile RGB for digital — not CMYK
- [ ] File name: [Campaign]_[Channel]_[Size]_[Stage]_[Version]_[Status]
- [ ] Upload folder: /[Brand]/Campaigns/[CampaignName]/Assets/Final/
- [ ] Share a view or comment link with the lead before the final export

## Review
- Draft link shared: [date] — feedback via comments directly in the file
- Max revision rounds: [X] — export the final only after an approving comment
```

## Common production mistakes to avoid

- Leaving the template's default fonts (Poppins, Montserrat, and similar) instead of the brand fonts.
- Picking colors outside the palette with the tool's color wheel.
- Text too small over imagery — below 14px is unreadable on a phone.
- Too much copy on one frame — cap body text at three or four lines.
- Forgetting story safe zones: keep important content out of the top and bottom 250px, where platform UI overlays it.
- Forgetting to rename the file, leaving "Copy of Copy of...".
- Exporting at 1x when the asset will be viewed on high-density screens.

## Related skills

- `42-image-brief-global` and `43-carousel-brief-global`: concept and content brief first; this skill covers production.
- `41-campaign-asset-list-global`: identify the asset and its deadline before opening the tool.
- `46-brand-guideline-global`: source of palette, fonts, logo, and component rules — set the brand kit from it.
- `50-asset-resize-global`: exact canvas sizes and adaptation strategy per channel.
- `47-design-review-global`: review the result after export.

## Quality checklist

- [ ] Base stated explicitly (template link / blank / duplicate of X)
- [ ] Tool named, and its brand kit set up with palette, fonts, and logos
- [ ] The six-step operating order is written into the brief
- [ ] Every text box has a font, size, color, and approved content
- [ ] Layout grid, padding, and spacing are specified
- [ ] Export checklist covers format, 2x, RGB, naming, and folder
- [ ] Review happens through comments in the file, with no export before approval
- [ ] No element uses a color or font outside the brand kit
