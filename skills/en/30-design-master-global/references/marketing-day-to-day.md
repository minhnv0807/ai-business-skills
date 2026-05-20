# Marketing Day-to-Day Mode

Day-to-day operational marketing visuals — social posts, banner ads, email headers, blog thumbnails. High volume, template-driven, consistent with the content calendar.

## When to use marketing-day-to-day mode

**Right fit**:
- Social post (IG/FB/LinkedIn/Twitter — usually 1:1 square)
- Story/Reel cover (9:16 vertical)
- Ad creative (FB Ads / Google Display / TikTok Ads)
- Email header banner (4:1 or 16:9)
- Blog post thumbnail (16:9 or 1.91:1)
- Promotional website banner (sale, event)

**Wrong fit — switch modes**:
- Big-campaign hero (key visual) → `business-campaign`
- Long-form editorial article hero → `editorial`
- Infographic / data viz (charts, diagrams) → `infographic`
- Quote post (text-heavy with a pulled quotation) → `quote-graphic`

## Brand identity (REQUIRED, lighter than campaign)

- **Transparent PNG logo**: overlaid if brand presence is needed (do NOT bake into the AI image)
- **Palette hex**: primary + 1 accent (enough for daily posts; full palette is only needed for campaigns)
- **Brand style summary**: one line describing the vibe (e.g. "cozy warm tones, hand-lettered feel", "tech minimalist with neon accent")
- **Template consistency with previous posts**: read the 3 most recent posts from `01-content-calendar-global` if available — output must match the established visual style

If the user provides no brand style, grill 2 quick questions (palette + style summary) rather than the full 5 from business-logo. Day-to-day pace is fast — keep grilling light.

## Section anti-patterns

- Each post in a different style — breaks brand consistency in the feed. An Instagram grid must read coherently when scrolled.
- Generic stock-photo look — daily posts still need brand character, not a Shutterstock fallback
- Too many elements in a single frame — a 1:1 holds one focal point at most (audience scrolls past in 1-2 seconds)
- In-image text for the caption — the caption lives separately under the post; the image is just the visual layer. Exception: `quote-graphic` mode.
- Aspect ratio mismatched to the platform — generating 16:9 for an IG 1:1 post → ugly crop, focal lost
- Skipping "template from previous posts" — always read the content calendar first to maintain visual consistency

## Prompt composition (template-driven, batch-able)

Per post:
- **Subject**: simple, readable instantly in 1-2 seconds (e.g. "single coffee cup with steam on a wood table" instead of "cafe scene with people chatting and products")
- **Composition**: centered or rule of thirds — no complex layouts for daily posts
- **Palette**: brand primary + accent, consistent across posts (do not change palettes between posts)
- **Style**: template from previous posts — if the last 3 posts feel "warm cozy", the new one must read warm cozy too
- **Negatives**: "no text overlay (caption is separate), no logo (brand presence handled separately), no watermark, no busy background, no AI artifacts"

Batch-able: one prompt template can swap a subject keyword to generate 10 posts for one week. Example "Lattéa cozy series" template:
- Base: "Cafe still life, [SUBJECT], wood table with warm sunlight, palette #2B1810 cream #F5E6D3, shallow DOF, cozy aesthetic film grain"
- Swap SUBJECT: "single latte cup" → "croissant on a plate" → "scattered coffee beans" → "barista hand pouring" → one post per day with a coherent feed.

## Examples

- **Lattéa IG daily post (1:1 square)**:
  - Topic: "home brewing tip #3"
  - Prompt: "Overhead flat lay pour-over coffee setup, ceramic dripper and kettle on a wood board, single subject focal center, warm natural daylight, palette #2B1810 cream #F5E6D3 muted earth tones, shallow DOF, cozy aesthetic film grain"
  - Negatives: "no text, no logo, no watermark, no people, no busy elements"

- **OPA LinkedIn ad creative (16:9)**:
  - Topic: "launching the AI Marketing course Q3"
  - Prompt: "Modern minimalist workspace desk with laptop, coffee, plant, clean composition rule of thirds with focal point in the left-third, soft natural window light, palette teal #00A8A8 slate #2C3E50 white, editorial premium style"
  - Negatives: "no text, no logo, no UI screenshot, no AI hands typing"

- **AI Income Mastery course story (9:16 vertical)**:
  - Topic: "behind the scenes team workshop"
  - Prompt: "Vertical composition, remote team brainstorming session, warm lighting with blurred laptop screens visible, palette warm orange #FF6B35 dark navy #1A1A2E, casual creative energy, shallow DOF"
  - Negatives: "no text, no logo, no readable screens, no fake AI faces"

## Grill questions

1. Platform: IG / FB / LinkedIn / TikTok / Twitter / multi-platform?
2. Aspect ratio: square 1:1 / vertical 9:16 / horizontal 16:9 / email banner 4:1?
3. Brand consistency with an existing `01-content-calendar-global` calendar? Path so I can read the 3 most recent posts?
4. Post topic in one line (e.g. "prompt engineering tip #3", "behind the scenes team workshop")?
5. CTA visible in the image, or kept separate so the caption handles the CTA?
