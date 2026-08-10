---
name: 50-asset-resize-global
description: "Use when one master design has to become every size a campaign needs — feed, story, reel, cover, and ad placements: the standard size matrix, three strategies of scale-and-crop, re-compose, or rebuild, safe-zone rules, platform crop behavior, and file naming. Trigger on 'resize this design', 'all the sizes', 'adapt to other placements', 'safe zone', 'standard size chart', 'the text gets cut off in stories'. Also use when one visual exists and six placements are waiting on it. Not for — the original concept brief, see `42-image-brief-global`; production steps in Canva or Figma, see `45-design-tool-brief-global`; the full campaign asset list, see `41-campaign-asset-list-global`; an urgent new creative, see `48-quick-visual-brief-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "resize asset"
  - "resize this design"
  - "all the sizes"
  - "adapt to other sizes"
  - "standard size chart"
  - "safe zone"
  - "repurpose the design"
output: "File .md — resize map by channel with a strategy and priority per size, re-composition rules, safe zones, naming and folders, final checklist. The designer finishes without a follow-up."
related:
  - product-marketing-context-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 45-design-tool-brief-global
  - 46-brand-guideline-global
  - 48-quick-visual-brief-global
  - 21-ads-audit-global
---

# Asset Resize (Global)

Resizing is not stretching. Every ratio needs re-composition so the hierarchy still works. One good master becomes 10+ variants — the single biggest time saver in design production, and the first job after a campaign ends when winners get repurposed at D+2.

## Information gathering

Read the asset list (`41-campaign-asset-list-global`) if available. If information is missing, ask up to 4 questions:

1. **What is the master?** Link to the source file (Canva, Figma, Adobe Express), plus its original size and channel.
2. **Which channels and sizes are needed?** List them all, or pull them from the asset list.
3. **Which elements cannot be lost?** Text, CTA, logo, faces, product — is anything sitting close to an edge?
4. **Is cropping content allowed,** or must everything stay in frame?

## Principles

1. **Always resize from the master.** Never resize an already-resized file — quality degrades each pass.
2. **Critical elements are never cropped at any size** — focal point, CTA, and logo stay intact.
3. **Each ratio needs its own strategy.** One approach does not fit all.
4. **If the content will not fit, escalate to the lead** to decide what to drop. Do not decide unilaterally.
5. **Repurpose winners immediately after the campaign (D+2)** — context fades fast.
6. **Update the status in the asset list** as each size is completed.

## Workflow

### 1. Analyze the master

Identify the focal point; the safe distance of each element (text, CTA, logo) from the edges; and what CAN be cropped (background, texture) versus what CANNOT (message, faces, product, CTA).

### 2. Pick a strategy per target size

| Strategy | When | How |
|----------|------|-----|
| Scale and crop | Close ratios (1:1 to 4:5, 16:9 to 1.91:1) | Keep the layout, trim background |
| Re-compose | Moderately different ratios (1:1 to 16:9, landscape to cover) | Move elements to fit the new frame, preserving hierarchy |
| Rebuild | Very different ratios (1:1 to 9:16, feed to email) | Build fresh on the new canvas, keeping concept, colors, and copy |

### 3. Resize in priority order

Do the primary channel size first (usually 1:1 feed), then work down the priority column of the resize map.

### 4. Check, name, upload, update

Run each file against the final checklist, name it to convention, upload it to the right subfolder, and update the asset list status.

## Standard size matrix

### Social

| Type | Dimensions | Ratio | Channel | Note |
|------|-----------|-------|---------|------|
| Square feed | 1080x1080 | 1:1 | Facebook, Instagram | Build this first |
| Portrait feed | 1080x1350 | 4:5 | Instagram, Facebook | Occupies more of the mobile screen |
| Story / Reels | 1080x1920 | 9:16 | Meta Story, Reels | Safe zone 250px top and bottom |
| TikTok video / cover | 1080x1920 | 9:16 | TikTok | Safe zone 150px top / 300px bottom, ~140px right |
| YouTube Shorts | 1080x1920 | 9:16 | YouTube | Same safe zones as Reels |
| Facebook cover | 820x312 | ~2.6:1 | Facebook Page | Cropped on both sides on mobile — keep content centered |
| LinkedIn post | 1200x627 | ~1.91:1 | LinkedIn | Also accepts 1080x1080 |
| LinkedIn document | 1080x1080 or 1200x1500 | 1:1 or 4:5 | LinkedIn | Exported as PDF |
| Pinterest pin | 1000x1500 | 2:3 | Pinterest | Vertical only; taller pins get truncated |
| YouTube thumbnail | 1280x720 | 16:9 | YouTube | Keep the bottom-right clear for the duration overlay |
| X post image | 1200x675 | 16:9 | X | Center-crops in timeline previews |

### Ads (Meta)

| Type | Dimensions | Note |
|------|-----------|------|
| Feed ads | 1080x1080 | Serves both Facebook and Instagram |
| Story / Reels ads | 1080x1920 | Keep content roughly 14% off the top and bottom edges |
| Carousel | 1080x1080 | 2 to 10 cards |
| Link banner | 1200x628 | Right-column and audience-network placements |

### Email and web

| Type | Dimensions | Ratio | Typical strategy |
|------|-----------|-------|------------------|
| Email header | 600x200 | 3:1 | Rebuild |
| Email hero | 600x400 | 3:2 | Scale and crop |
| Website hero desktop | 1440x600 | 2.4:1 | Re-compose |
| Website hero mobile | 375x300 | 5:4 | Rebuild |
| Blog featured image | 1200x630 | 1.91:1 | Scale and crop (also serves Open Graph) |

### Documents

| Type | Dimensions | Use for |
|------|-----------|---------|
| Slide deck 16:9 | 1920x1080 | Presentations, pitch decks |
| A4 portrait / landscape | 210x297mm / 297x210mm | Printed reports and proposals |
| US Letter | 8.5x11in | US print deliverables |

## Safe zones and platform crop behavior

| Placement | Safe zone | Crop behavior |
|-----------|-----------|---------------|
| Meta Story / Reels (1080x1920) | Keep text and CTA out of the top 250px and bottom 250px | Profile and caption UI sit in those bands; the middle ~1420px is reliably visible |
| TikTok (1080x1920) | Top 150px, bottom 300px, right ~140px | Right-side icon rail and caption block overlay the frame |
| Meta Feed 1:1 / 4:5 | 20px on each edge | Little cropping, but thumbnails center-crop to 1:1 in some surfaces |
| Facebook cover (820x312) | Center ~640px | Mobile crops both sides aggressively |
| LinkedIn (1200x627) | 40px on each edge | Feed preview may letterbox; avoid edge-tight type |
| Pinterest (1000x1500) | 60px on each edge | Bottom band can be covered by the title overlay in some views |
| YouTube thumbnail (1280x720) | Bottom-right ~120x40px clear | Duration badge overlays that corner |
| Email (600px) | 20px inner padding | No crop, but many clients scale images down — keep type large |

## Re-composition rules

**Landscape or square to vertical (to 9:16):**
- Logo: keep the position defined in the brand guideline (commonly bottom-right)
- Headline: move to the top third
- CTA: always in the bottom third but above the safe-zone band
- Respect the story and TikTok safe zones above

**Square to email (600px):**
- Increase type size where the new width makes it too small
- Simplify the visual — drop secondary elements
- CTA button at least 44x44px

**To cover formats (Facebook, LinkedIn banner):**
- Pull the core content toward the center — the sides get cropped on mobile
- Never set type near the edges

**To Pinterest (2:3):**
- Add vertical breathing room rather than stretching; Pinterest tolerates more text than Meta
- Put the value proposition in the top third — that is what shows in a scrolling grid

## Output structure

File name: `asset-resize-[campaign]-[YYYYMMDD].md`

```markdown
# Resize Map — [Campaign name]

## Master design
| Item | Detail |
|------|--------|
| Master file | [source link] |
| Original size | |
| Focal point | |
| Elements that cannot be lost | |

## Resize map
| Size | Ratio | Channel / use | Strategy | Priority | Status |
|------|-------|---------------|----------|----------|--------|
| 1080x1080 | 1:1 | Meta Feed + Ads | Scale and crop | High | |
| 1080x1350 | 4:5 | Instagram portrait feed | Re-compose | High | |
| 1080x1920 | 9:16 | Story / Reels / TikTok | Rebuild | High | |
| 1200x628 | 1.91:1 | Link banner | Scale and crop | Medium | |
| 1200x627 | 1.91:1 | LinkedIn | Scale and crop | Medium | |
| 1000x1500 | 2:3 | Pinterest | Rebuild | Medium | |
| 1280x720 | 16:9 | YouTube thumbnail | Re-compose | Medium | |
| 600x200 | 3:1 | Email header | Rebuild | Medium | |
| [add per the asset list] | | | | | |

## Re-composition notes per size
- [size]: [which elements move, what is cropped, safe-zone caveats]
```

## Naming and folders

- File name: `[Campaign]_[Channel]_[Size]_[Version]_[Status].jpg`
- Example: `SpringLaunch_Meta_1080x1080_v1_APPROVED.jpg`
- Folders:

```
/[Brand]/Campaigns/[CampaignName]/Assets/Final/
  Meta/  TikTok/  LinkedIn/  Pinterest/  YouTube/  Email/  Website/  Archive/
```

## Final checklist

- [ ] Every size in the resize map is complete
- [ ] No image is distorted — scale proportionally, never stretch
- [ ] No text is cropped; every channel safe zone is respected
- [ ] Logo present and in the correct version at every size
- [ ] CTA still legible at the smallest size
- [ ] Type still readable on mobile after resizing (>=14px displayed)
- [ ] Files named to convention with the correct status tag
- [ ] Uploaded to the correct channel subfolder
- [ ] Status updated in the asset list

## Related skills

- `41-campaign-asset-list-global`: the list of required sizes comes from the asset list; write the status back to it.
- `42-image-brief-global`: the master is produced from the image brief; adaptation rules belong in that brief when multiple sizes are planned.
- `45-design-tool-brief-global`: production direction for building each resized version.
- `48-quick-visual-brief-global`: once a quick variant wins, resize it into the remaining sizes.
- `21-ads-audit-global`: identifies the winners worth repurposing after a campaign (mark at D+1, resize at D+2).
- `46-brand-guideline-global`: logo placement, minimum type size, and spacing when re-composing.

## Quality checklist

- [ ] Master analyzed: focal point, protected elements, croppable areas
- [ ] Every target size has an explicit strategy (scale and crop / re-compose / rebuild)
- [ ] Priority order is clear — the primary channel is built first
- [ ] Channel safe zones applied from the matrix above
- [ ] Cases where content will not fit were escalated to the lead
- [ ] Every version resized from the master, never from an export
- [ ] Final checklist completed before reporting done
