---
name: 30-design-master-global
description: |
  Master design skill for ai-business-skills — covers 8 design categories (personal brand, business logo, campaign visual, day-to-day marketing, editorial, infographic, web mockup, quote graphic). Auto-reads brand identity (logo + palette + typography) from project context, composes prompts aligned with brand voice, and generates images via gpt-image-2 (OpenAI's image model) when an API key is available — otherwise outputs paste-ready prompts for 5 platforms (DALL-E 3, MidJourney, Leonardo, Imagen, Bing/Copilot Designer). Clearly separates personal vs. brand work, and routes web mockup requests to dedicated HTML skills when appropriate.
  Triggers — "design image", "create logo", "campaign visual", "social post design", "infographic", "key visual", "hero web mockup", "marketing visual", "personal avatar", "monogram", "quote graphic", "MidJourney prompt", "DALL-E prompt", "brand mockup". DO NOT USE for — full interactive web UI (use web-prototype/saas-landing instead), video creation (use 04-script-video-global + Seedance/Kling), animation (use motion-frames).
metadata:
  version: 1.0.0
  category: design
triggers:
  - "design image"
  - "create logo"
  - "campaign visual"
  - "social post design"
  - "infographic"
  - "key visual"
  - "hero web mockup"
  - "personal avatar"
  - "monogram"
  - "quote graphic"
  - "MidJourney prompt"
  - "DALL-E prompt"
  - "brand mockup"
  - "marketing visual"
license: MIT
related:
  - 02-campaign-brief-global
  - 05-ad-copy-global
  - 22-personal-brand-context (VN-only — no EN equivalent yet)
  - 24-ai-avatar-production (VN-only — no EN equivalent yet)
---

# Design Master — 30-design-master-global

A single master skill that handles 8 design categories for ai-business-skills. One door for both personal work (founder, creator) and brand work (logo, campaign, day-to-day marketing). Reads brand identity from the project context, composes prompts in the right brand voice, and routes the request to the right tool: direct generation via gpt-image-2, paste-ready prompts for 5 popular platforms, or dispatch via Open Design infrastructure.

The skill is written in plain professional English so a non-designer client can read it, understand it, and fill it in alongside the AI. Frontmatter field names stay in English (do not translate) to keep AI parsing intact.

---

## The 8 design categories

| # | Type | Subject | When to use | Tool |
|---|------|---------|-------------|------|
| 1 | personal-brand | Individual (founder/creator) | Profile avatar, monogram, speaker cover, personal quote graphic | gpt-image-2 raster |
| 2 | business-logo | Brand logo identity | Logo primary/secondary/mark | gpt-image-2 multi-variant 3-5 directions + human-review disclaimer |
| 3 | business-campaign | Brand campaign visual | TVC still, OOH, product hero, campaign key visual | gpt-image-2 raster |
| 4 | marketing-day-to-day | Operational marketing | Social post, banner ad, email header, story | gpt-image-2 raster |
| 5 | editorial | Long-form publication | Magazine cover, article hero, e-book, lookbook | gpt-image-2 raster |
| 6 | infographic | Data/plan/process visualization | Roadmap, process flow, comparison chart | gpt-image-2 (text-minimal, icons-focused) |
| 7 | web-mockup | UI screen sketch | Landing hero, app screen mockup | **Hybrid**: gen 1 hero image via gpt-image-2 + recommend HTML skills for the full interactive mockup |
| 8 | quote-graphic | Quote post | "Guru post" IG, LinkedIn quote, motivational | Hybrid: gpt-image-2 background + HTML text overlay |

---

## When to trigger / when NOT to trigger

### Triggers (invoke this skill)

- "design image", "create logo", "campaign poster", "campaign banner"
- "social post design", "infographic", "key visual", "hero web mockup"
- "marketing visual", "personal avatar", "monogram", "quote graphic"
- "MidJourney prompt", "DALL-E prompt", "Leonardo prompt", "Imagen prompt"

### DO NOT INVOKE (route to a different skill)

| Case | Route to |
|------|----------|
| Full interactive web UI mockup (multi-section, with behavior) | **`web-prototype`** / **`saas-landing`** / **`mobile-app`** / **`dashboard`** / **`frontend-design`** |
| Video creation (TVC, ad video, UGC) | **`04-script-video-global`** + Seedance/Kling/Sora dispatcher |
| Animation, motion graphics, sprite | **`motion-frames`** / **`sprite-animation`** |
| Audio asset (jingle, voiceover, SFX) | **`audio-jingle`** |
| Document layout (PDF report, multi-page e-guide) | **`digital-eguide`** / **`finance-report`** / **`magazine-poster`** |

---

## Mode detection cascade (Step 0)

Three layers of type detection, in priority order:

### Layer 1 — Keyword auto-detect

| Keyword | Detected type |
|---------|---------------|
| "avatar", "profile picture", "monogram", "speaker cover", "headshot" | personal-brand |
| "logo", "wordmark", "lockup", "brand mark" | business-logo |
| "key visual", "campaign visual", "TVC still", "OOH", "product hero" | business-campaign |
| "social post", "banner ad", "email header", "IG story", "Facebook post" | marketing-day-to-day |
| "magazine cover", "article hero", "e-book cover", "editorial", "lookbook" | editorial |
| "infographic", "roadmap visual", "process flow", "comparison chart", "data viz" | infographic |
| "hero web", "landing hero image", "app screen mockup" | web-mockup |
| "quote", "quote graphic", "guru post", "motivational post" | quote-graphic |

### Layer 2 — Explicit flag

The user passes `--type=business-logo` (or one of the other 7 types) → overrides Layer 1.

### Layer 3 — Ambiguous fallback

If nothing matches and no flag is set → ask one single question:

> "Which of the 8 design types is this?
> 1) personal-brand 2) business-logo 3) business-campaign 4) marketing-day-to-day 5) editorial 6) infographic 7) web-mockup 8) quote-graphic"

Print a transparency line before continuing:

```
[detect type: business-logo — matched keyword "logo" + brand name "Lattéa"]
```

---

## Runtime workflow — 5 steps

### Step 1 — DETECT design type

Run the 3-layer cascade above. Print `[detect type: ...]` before moving to Step 2.

### Step 2 — LOAD references

Load lazily, as needed:

- `CONVENTIONS.md` — load once per session
- `references/<type>.md` — load the file matching the type just detected (e.g. `references/business-logo.md`)
- `references/brand-identity-source.md` — load whenever the type starts with `business-*`
- `references/fallback-prompt-format.md` — load when the tier is Free (see Step 5)
- `templates/<format>.md` — load the template matching the requested format (e.g. `templates/poster.md`, `templates/social-square.md`)

### Step 3 — READ brand identity

**Business modes** (`business-logo` / `business-campaign` / `marketing-day-to-day`): REQUIRED — must find brand identity. Auto-search in priority order:

1. `assets/brand/logo.{svg,png,ai}` — primary logo file
2. `brand-guideline.md` / `brand-identity.md` at the project root
3. `02-campaign-brief-global/output.md` section "Brand mandatories" — campaign brief carries brand constraints
4. `prd.md` frontmatter `target_user` + section "Visual cues" — style direction
5. `prd.md` Section 6 — features that inform the visual concept

If nothing is found for a business mode → **BLOCK** + ask the user to upload a logo + specify a palette (3 hex codes) + name a primary font family.

**Personal modes** (`personal-brand` / personal `quote-graphic`): brand identity is optional. Enough to have style adjectives (3–5 words) + a color preference (3 mood colors).

**Editorial / Infographic / Web-mockup**: context-dependent — treat as business mode if the asset is for a brand, treat as personal if it's for an individual or a general-purpose piece.

### Step 4 — ROUTE by type

| Type | Route action |
|------|--------------|
| 1–5 (personal-brand, business-logo, business-campaign, marketing-day-to-day, editorial) | COMPOSE raster prompt → go to Step 5 |
| 6 (infographic) | COMPOSE prompt with **text-minimal** strategy: icons-heavy, branded palette, max 2-3 number stats, NO long paragraphs → go to Step 5 |
| 7 (web-mockup hybrid) | COMPOSE 1 hero image prompt → Step 5 + print the HTML skill recommendation block, exit gracefully after the hero is generated |
| 8 (quote-graphic) | COMPOSE background image prompt (NO in-image text) + create an HTML overlay template (text rendered via HTML, never burned into the image) |

### Step 5 — CHECK API tier + GENERATE

Detect the tier in Bash:

```bash
if [[ -n "$OPENAI_API_KEY" ]]; then
  TIER="pro"   # direct gpt-image-2
elif [[ -n "$OD_BIN" && -x "$OD_BIN" ]]; then
  TIER="enterprise"   # Open Design dispatcher
else
  TIER="free"   # prompt-only fallback
fi
```

Print line: `[tier: <X>] [model: <Y>]`.

| Tier | Behavior | Output |
|------|----------|--------|
| **Free** | No API key available | `docs/design/<slug>-prompt.md` with paste-ready prompts for 5 platforms (DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — see `references/fallback-prompt-format.md` |
| **Pro** | `OPENAI_API_KEY` is set → call gpt-image-2 directly | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata) |
| **Enterprise** | `$OD_BIN` exists and is executable → dispatch via Open Design infrastructure (the existing `image-poster` infra) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata with `gen_mode: api-dispatcher`) |

**Type 7 web mockup** — after generating the hero image (if Pro/Enterprise tier), print a recommendation block:

```
[NEXT STEP] Hero image generated. For a full multi-section interactive mockup,
also run one of:
  - web-prototype (general landing/marketing page)
  - saas-landing (SaaS product page)
  - mobile-app (mobile app screens)
  - dashboard (admin/analytics dashboard)
  - frontend-design (Figma-style design tokens)
```

**Type 8 quote graphic** — output 2 files:
- `docs/design/<slug>-bg.png` — background image generated via gpt-image-2 (NO text)
- `docs/design/<slug>.html` — HTML overlay rendering the quote text on top of the background (HTML keeps typography crisp; avoids AI garbling letters)

---

## Frontmatter schema for the output file

Every `docs/design/<slug>.md` metadata file MUST carry this frontmatter:

```yaml
---
title: <Image asset name>
type_artifact: image-generated | image-prompt-fallback | infographic-html | web-hero-image
mode: personal-brand | business-logo | business-campaign | marketing-day-to-day | editorial | infographic | web-mockup | quote-graphic
subject: <1-line description>
source_brief: <path to source brief if any>
brand_identity:
  logo_path: <path or "none">
  palette: [<hex>, <hex>, ...]
  typography: <font family or "none">
  style_adjectives: [<adj>, <adj>, ...]
format: poster | social-square | social-vertical | banner-hero | magazine | infographic | logo-variant | quote
aspect_ratio: 1:1 | 9:16 | 16:9 | 3:4 | 4:3 | custom
gen_mode: api-direct | api-dispatcher | fallback-prompt | hybrid
model: gpt-image-2 | dall-e-3 | midjourney-v6 | flux | imagen-3 | manual
output_files:
  - <path>
created: 2026-05-20
last_updated: 2026-05-20
---
```

Field names stay in ENGLISH — do not translate (would break AI parsing). The body of the file can be in any language the client reads.

---

## Error handling — 8 real-world situations

| Situation | How to handle |
|-----------|---------------|
| Type is ambiguous (no keyword match, no flag) | Ask 1 single question with all 8 options (see Layer 3 in Step 0) |
| Business mode + brand identity missing | **BLOCK** + ask the user to upload the logo + specify a palette (3 hex codes) + name a font family |
| `OPENAI_API_KEY` invalid / quota exceeded when calling gpt-image-2 | Fall back to Free tier (prompt-only) + print an error line |
| Type 7 web mockup but user actually wants a full multi-section UI | Hybrid is fine: generate the hero image + attach a recommendation for `web-prototype` (or one of the 4 sibling skills) for the full mockup |
| Logo gen requested but no brand values yet | Probe with 3 questions: brand name, industry, values (3-5 words) — only then is it possible to generate a logo with any soul |
| Infographic text-heavy, >5 data points | **Warn**: "Text inside AI-generated images is unreliable. Recommend using a Canva template for text-heavy infographics." Still generate if the user confirms. |
| Quote graphic text >50 characters | **Warn**: same — recommend using a generated background only + HTML overlay (which is already the default for type 8) |
| User asks for a format that doesn't match the detected type | Suggest the matching mode — e.g. "landing page banner" → mode=`marketing-day-to-day` format=`banner-hero` |

---

## Anti-patterns — DO NOT

- Generate a logo as the final deliverable → always produce a multi-variant set (3–5 directions) + human-review disclaimer
- Burn >50 characters of text into an image — AI gen mangles long text, breaks spelling, distorts accented characters
- Pass a raster web mockup off as interactive — must be hybrid + recommend an HTML skill
- Skip the brand identity check on business modes — the output will look disconnected from the brand
- Output a prompt that's just a keyword list (e.g. "nice cafe logo") — must follow the 5-section structured prompt framework: subject + composition + lighting + palette + style + negatives
- Hardcode hex colors when the project already has a brand identity file — read from source
- Translate frontmatter field names to a non-English language — breaks AI parsing
- Generate >1 image per turn, unless it's a logo multi-variant set
- Save only a prompt without generating the image while on Pro/Enterprise tier — wastes the API budget
- Generate an image without saving a `.md` metadata sidecar — context is lost next time

---

## Self-test before generating

Before every gpt-image-2 call or fallback prompt export, ask yourself:

> "Does this output align with the brand voice and identity? Would a client recognize the brand when they see it? If this is personal brand work — does it reflect the style adjectives the user actually wrote down?"

If you can't confidently answer 2 out of 3 → go back to Step 3, re-read the brand identity, or probe the user with 1–2 more questions.

---

## Examples reference

- `examples/personal-founder-avatar.md` — Founder avatar for OPA (style: confident, warm, minimal)
- `examples/lattea-fall-campaign-poster.md` — Key visual for the Lattéa fall campaign (palette: brown + burnt orange)
- `examples/ai-income-mastery-quote-graphic.md` — IG quote graphic for the "AI Income Mastery" course (background + HTML overlay)
- `examples/opa-roadmap-infographic.md` — Product roadmap infographic for OPA (icons-heavy, text minimal)

---

## Cheat sheet — which file to load and when

| When you need... | Load this file |
|------------------|----------------|
| To understand frontmatter format, output location, general prompt rules | `CONVENTIONS.md` |
| To compose a prompt for one of the 8 types | `references/<type>.md` (e.g. `references/business-logo.md`) |
| To find the brand identity source for business mode | `references/brand-identity-source.md` |
| To format prompts for 5 platforms on the Free tier | `references/fallback-prompt-format.md` |
| To use a specific format template (poster, banner, story...) | `templates/<format>.md` |
| To see a real example output | `examples/<example-name>.md` |

---

## Plain English policy

This skill is written in plain professional English so a non-designer business owner can read it, follow along, and fill it in alongside the AI. Technical terms (gpt-image-2, DALL-E 3, MidJourney) are kept verbatim and briefly explained the first time they appear. Examples use realistic global-feeling brands: Lattéa (a fictional global cafe chain), Lumière Studio (creative agency), AI Income Mastery (online course), OPA (product). No throwaway placeholder brand names.

> Self-test for plain-English fit: "Would a small business owner who doesn't speak design jargon understand this section?" If not — rewrite it.
