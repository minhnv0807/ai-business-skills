# README illustrations

The ten images in this folder illustrate [README.md](../../README.md) and [README.vi.md](../../README.vi.md).

**They are AI-generated.** Each one was made with Google's image model (`generate_image`) through the Antigravity CLI on 2026-11-05. The raw files carried Google-signed C2PA Content Credentials ("Created by Google Generative AI"). Cropping and re-saving removed those credentials, but the invisible SynthID watermark is still in the pixels. If you reuse an image, say that it is AI-generated.

No people, real brands, logos or client assets appear in any prompt or reference image.

## How they were made

1. One style lock, pasted unchanged at the top of every prompt (below).
2. The hero ran first, with no reference image. The other nine ran one after another, each with the raw hero as the style reference. Each of those prompts ends with: "Match the drawing style, line weight and palette of the reference image, but do not copy its scene."
3. Every run was checked. Each log showed exit 0, `prompt: verbatim` and no warning, and each image was inspected for text, faces, logos and a single accent colour. No image needed a rerun.
4. Finishing: each image was cropped and resized to about 2× its display width, never upscaled, then saved as a JPEG at quality 84. This used .NET System.Drawing, because Python was not available on the build machine, so the files are baseline JPEGs rather than progressive ones.

| File | Shown in | Generated | Finished | Time | Tokens (all agents) |
|---|---|---|---|---|---|
| `hero.jpg` | Banner | 16:9, 1376x768 | Top 210 px of empty paper cropped, 1376x558, 128 KB | 66.2 s | 52,490 |
| `before-after.jpg` | "What you get" | 3:2, 1264x848 | 1264x848, 104 KB | 53.2 s | 93,143 |
| `market-vn.jpg` | "Vietnam or Global" | 4:3, 1200x896 | Cropped to 900x672 around the shop, 840x627, 88 KB | 45.6 s | 52,823 |
| `market-global.jpg` | "Vietnam or Global" | 4:3, 1200x896 | 840x627, 76 KB | 41.8 s | 52,795 |
| `agent-strategist.jpg` | Agent card | 4:3, 1200x896 | 560x418, 31 KB | 43.1 s | 51,609 |
| `agent-content.jpg` | Agent card | 4:3, 1200x896 | 560x418, 25 KB | 47.5 s | 52,469 |
| `agent-performance.jpg` | Agent card | 4:3, 1200x896 | 560x418, 29 KB | 40.4 s | 51,332 |
| `agent-channel.jpg` | Agent card | 4:3, 1200x896 | 560x418, 23 KB | 43.6 s | 52,395 |
| `agent-design.jpg` | Agent card | 4:3, 1200x896 | 560x418, 26 KB | 43.0 s | 52,712 |
| `agent-personal-brand.jpg` | Agent card | 4:3, 1200x896 | 560x418, 25 KB | 73.5 s | 76,885 |

The total for all ten runs was 498 s and 588,653 Antigravity tokens.

## Where the images differ from their prompts

- **hero:** the street-shop counter has a small hanging sign with a terracotta star, so it has two terracotta accents (the sign and the lantern) instead of one. The conveyor makes one L-shaped run instead of splitting into two lanes. Both were kept, because the scene still reads correctly.
- **agent-strategist:** there are two compasses instead of one, and the map lies on bare paper rather than on a table.
- **agent-personal-brand:** the softbox has no visible stand.

## Style lock

```text
Editorial flat illustration drawn like a precise isometric technical plate: fine, even ink linework in deep navy #1F2A44 on a warm off-white paper ground #F7F3EA that fills the whole frame edge to edge. Flat fills from a limited palette: deep navy #1F2A44, muted teal #2F7F86, soft sage #A9BFA8, warm sand #E9DCC3, and one terracotta accent #D9653B used on a single small element only. Subtle paper grain, soft shadowless light, generous empty paper, calm, orderly and exact mood. Objects and places only, no people. Every surface is blank and unmarked: no lettering, numbers, logos, signage or watermarks anywhere. No 3D render, no glow, no gradient sky.
```

## Scene prompts

Each prompt is the style lock, then a blank line, then the scene below.

<details>
<summary><b>hero</b> (16:9, no reference image)</summary>

> A wide isometric view of a tidy marketing workshop laid out on one long table, seen from a high three-quarter angle. On the left, a single folded paper note drops into a compact wooden cabinet with many small drawers, one drawer pulled half open. From the cabinet a slim conveyor belt runs to the right and splits into two short lanes. The nearer lane passes a miniature Vietnamese street-shop counter with a parked scooter carrying stacked parcels and a hanging paper lantern. The farther lane passes a small globe on a stand beside stacked shipping crates. Both lanes end at one neat stack of bound reports, a small wall calendar with a blank grid, and a bar chart standee with plain unmarked bars. The paper lantern is the terracotta accent. The top third of the frame is open, empty paper. Purpose: the banner of a README for a library of AI marketing skills that turns one request into finished plans for Vietnamese and global markets.

</details>

<details>
<summary><b>before-after</b> (3:2)</summary>

> Two small scenes side by side on one sheet of paper, separated by a thin teal vertical line, seen from a high three-quarter isometric angle. On the left, a single crumpled sheet of paper lies alone on a bare desk corner next to an empty coffee cup. On the right, the same desk corner holds a neat ring binder lying open with coloured tab dividers, a plain bar chart card with unmarked bars, a calendar card with a blank grid, and a small checklist card with empty tick boxes. One tab divider is the terracotta accent. Generous empty paper around both scenes. Purpose: compare a vague generic answer with a complete, structured marketing deliverable. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

</details>

<details>
<summary><b>market-vn</b> (4:3)</summary>

> An isometric diorama of a corner of a Vietnamese neighbourhood shopping street: a narrow tube-house shopfront with its rolling shutter half open, low plastic stools on the pavement, a scooter parked in front with stacked cardboard parcels strapped to its rear rack, a conical straw hat resting on one stool, a smartphone on a small tripod with a ring light on the counter for live selling, and a row of plain unlabelled parcel boxes waiting for courier pickup. A single paper lantern hanging at the doorway is the terracotta accent. Empty paper above the rooftops. Purpose: illustrate the Vietnam cluster of skills: local channels, live selling and marketplace shops. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

</details>

<details>
<summary><b>market-global</b> (4:3)</summary>

> An isometric diorama of a small global commerce hub: a laptop on a standing desk with a blank storefront layout on its screen, a globe on a stand, a row of stacked shipping containers with plain unmarked sides behind a low fence, a short parcel conveyor carrying a few unlabelled boxes toward a small cargo van, and four small identical wall clocks in a row with plain faces and hands only. One parcel on the conveyor is the terracotta accent. Empty paper above. Purpose: illustrate the Global cluster of skills for the US, Europe, Southeast Asia and Latin America. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

</details>

<details>
<summary><b>agent cards</b> (4:3 each)</summary>

**agent-strategist**
> A planning table seen at a high three-quarter isometric angle: a large unfolded paper map with plain blank regions, a few round marker pins, a brass compass, a short stack of index cards and a small set of balance scales. One marker pin is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the strategy agent that builds marketing plans, offers and budgets. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

**agent-content**
> A compact content studio corner seen at a high three-quarter isometric angle: a smartphone mounted on a small tripod in front of a ring light, a clapperboard with a blank slate, three storyboard cards with simple empty frames pinned on a cork strip, and a desk microphone. One sticky note on the cork strip is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the content agent that writes content calendars, video scripts, ad copy and captions. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

**agent-performance**
> A desk seen at a high three-quarter isometric angle: a monitor showing a simple dashboard of plain unmarked bars and one rising line, a clear glass funnel with small round beads flowing down into a jar, a magnifying glass and a small dial gauge with a blank face. One bead at the bottom of the jar is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the performance agent that audits ads, tracks KPIs and decides when to scale. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

**agent-channel**
> A small channel switchboard on a low wooden stand seen at a high three-quarter isometric angle: a central hub box with short teal cables running to an envelope, a smartphone showing blank chat bubbles, a row of plain paper speech bubbles and a small megaphone. The megaphone is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the channel agent that runs email, chat apps, social pages, marketplace shops and chatbots. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

**agent-design**
> A designer's drafting table seen at a high three-quarter isometric angle: a large blank poster on an easel, a fanned stack of square cards with plain colour blocks, colour swatch strips, a steel ruler, a pencil and a cutting mat with a plain grid. One colour swatch is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the design agent that writes visual briefs, reviews designs and resizes assets. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

**agent-personal-brand**
> A small creator's home studio seen at a high three-quarter isometric angle: an empty chair facing a camera on a tripod, a podcast microphone on a boom arm, a softbox light, a closed hardcover book with a blank cover on a side table and a laptop with a blank screen. The microphone's foam cover is the terracotta accent. Plenty of empty paper surrounds the group. Purpose: card for the personal brand agent that plans founder and creator brands, AI avatar videos and podcasts. Match the drawing style, line weight and palette of the reference image, but do not copy its scene.

</details>
