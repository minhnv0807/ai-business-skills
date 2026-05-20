# Web Mockup Mode (Hybrid Routing)

**Hybrid approach** — generate one hero image via gpt-image-2 + ALWAYS recommend HTML skills for a full interactive mockup. Pretending a raster web-mockup is interactive UI is the single biggest anti-pattern — text warps, nothing is clickable, no real CSS.

## When to use web-mockup mode

**Right fit**:
- User wants to see a visual concept for a landing page / app screen — needs mood only, NOT interactivity
- Hero section visual to hand off to an HTML skill afterwards
- Pitch deck slide illustrating "the landing page will look like this"
- Brainstorming visual direction before building the full mockup

**Wrong mode — switch immediately (route to an HTML skill)**:
- Full multi-section interactive landing page → `web-prototype`
- SaaS product landing page with nav + hero + features + pricing + CTA → `saas-landing`
- Mobile app screens with phone frame + UI components → `mobile-app`
- Admin/analytics dashboard with KPI cards + charts + sidebar → `dashboard`
- Design system mockup with tokens + components → `frontend-design:frontend-design`
- Multi-screen user journey flow → recommend running two skills side by side

## Two-step hybrid strategy

### Step 1 — Generate one hero image via gpt-image-2

Generate **only one hero section visual** — a 16:9 hero image for the landing page hero block, NEVER the entire layout.

Why only one hero, not the full layout:
- AI-generated full layout = warped text, fake buttons, nothing clickable
- AI-generated UI elements (nav bar, cards, forms) = won't match real CSS; the designer has to redo everything
- AI-generated hero image as a focal point = OK — it's decorative imagery, not UI

### Step 2 — Print a recommendation block dispatching to an HTML skill

After generating the hero image, ALWAYS print a message listing HTML skills:

```
[NEXT STEP] Hero image is ready. To get a full interactive multi-section
mockup, run one of these skills:

  - web-prototype                  General desktop web prototype
                                   (landing/marketing/docs/SaaS — default)
  - saas-landing                   SaaS landing page (nav + hero + features
                                   + pricing + CTA)
  - mobile-app                     Mobile app screens (iPhone/Android frame)
  - dashboard                      Admin/analytics dashboard (KPI + charts)
  - frontend-design:frontend-design  Design system mockup (tokens + components)

The hero image you just generated can be pasted into the HTML mockup as the
background of the hero block.
```

## Section anti-patterns

- Pretending an AI-generated web mockup is a real mockup — NOT interactive, NOT real CSS, dev has to start over
- Skipping the HTML skill recommendation — user has no route forward, ends up with a single raster they can't use
- Generating the entire layout as an image — warped text, fake nav bar, non-clickable buttons, wasted time
- Generating detailed UI elements (form fields, dropdown, modal) in an AI image — not scalable, not editable
- Output a single image labeled as "complete mockup" — wrong expectation for the user
- Skipping the limitation disclaimer — you MUST print "hero image = visual concept, not an interactive mockup"

## Prompt composition for the hero only

- **Subject**: hero section visual with one strong concept (abstract is fine, conceptual illustration of the value proposition) — NOT a UI screen
- **Composition**: cinematic 16:9 with the focal point off-center (rule of thirds), generous space for the text overlay that will sit on top via HTML
- **Lighting**: clean modern key+fill, or dramatic side light depending on the mood
- **Palette**: brand color if available; otherwise palette matched to the style adjectives
- **Style anchors**: "clean modern web hero", "cinematic composition", "minimalist visual focal point", "editorial illustration" or "photographic hero" depending on direction
- **NEVER render UI elements in-frame**: no nav bar, no buttons, no form fields, no text overlays — HTML handles that layer

Required negatives: "no UI buttons, no navigation bars, no text overlays, no form fields, no menu items, no dropdown, no modal windows, no warped text, no fake UI elements, no full landing page layout"

## Output structure

When tier Pro/Enterprise:
- `docs/design/<slug>-hero.png` — raster hero image generated via gpt-image-2
- `docs/design/<slug>.md` — metadata frontmatter + "Next Steps" section pointing the user to the HTML skill (see recommendation block above)

When tier Free:
- `docs/design/<slug>-hero-prompt.md` — prompt for 5 platforms (see `fallback-prompt-format.md`)
- Still include the "Next Steps" HTML skill recommendation block

## Examples

- **AI Income Mastery landing hero** — abstract conceptual visual: circuit pattern flowing into a human silhouette, brand teal #00A8A8 + slate #2C3E50, cinematic 16:9 dramatic side light, generous space on the right for the headline overlay → recommend dispatching to `saas-landing` next
- **Lattéa coffee chain web hero** — warm photographic: coffee cup steam rising at golden hour, downtown café background bokeh, 50mm shallow DOF, palette earth brown + cream, focal point on the left third → recommend dispatching to `web-prototype` next
- **AI Income Mastery course hero** — minimal symbolic illustration: open laptop + sun rays + money plant growing out of the screen, soft cream paper texture, palette muted green + gold accent → recommend dispatching to `saas-landing` next

## Grill questions

1. Hero subject (one concept, one-line description — e.g. "AI flow merging into a human silhouette", "coffee cup steam in a downtown café")?
2. Brand vibe — 3-5 adjectives (e.g. "clean modern professional", "warm artisanal organic")?
3. Mobile or desktop primary? (desktop = 16:9 hero; mobile = 9:16 hero crop or 4:5)
4. Brand palette in hex codes, or shall we suggest by vibe?
5. Which HTML skill to dispatch to after generating the hero — `web-prototype` (general) / `saas-landing` (SaaS) / `mobile-app` / `dashboard` / `frontend-design`?
