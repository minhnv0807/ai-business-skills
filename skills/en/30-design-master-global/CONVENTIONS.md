# CONVENTIONS — 30-design-master-global

Shared conventions that apply to ALL 8 design types. Per-type overrides (detailed prompt composition for each category) live in `references/<type>.md`.

---

## 1. Brand Identity Sources (auto-search priority)

For business modes (`business-logo`, `business-campaign`, `marketing-day-to-day`), search for brand identity in this priority order:

| # | Source | What to look for |
|---|--------|------------------|
| 1 | `assets/brand/logo.{svg,png,ai}` | Primary logo file — extract palette from it if needed |
| 2 | `brand-guideline.md` / `brand-identity.md` (project root) | Full brand book: logo, palette, typography, voice |
| 3 | `02-campaign-brief-global/output.md` section "Brand mandatories" | Campaign brief with brand constraints for the current campaign |
| 4 | `prd.md` frontmatter `target_user` + section "Visual cues" | Persona cues for style direction |
| 5 | `prd.md` Section 6 (features) | Features → related visual concepts |

**If nothing turns up in any of the 5 sources** → BLOCK the business mode and ask the user:

> "To generate in the right brand voice, I need 3 things:
> 1. Upload the logo file (PNG/SVG) or share the path
> 2. A 3-color hex palette (e.g. `#1A1A1A`, `#D4AF37`, `#FAFAFA`)
> 3. The primary font family (e.g. `Inter`, `Manrope`, `Playfair Display`)"

**Personal modes** (`personal-brand`, some `quote-graphic`): brand identity is optional. Enough to have:
- 3–5 style adjectives (e.g. "confident, warm, minimal, modern, friendly")
- 3 mood colors (named or hex)

---

## 2. Output Location

All output lands in `docs/design/` at the project root (create the folder if it doesn't exist):

| Artifact type | Output file |
|---------------|-------------|
| Image generated (Pro/Enterprise tier) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (frontmatter metadata) |
| Prompt fallback (Free tier) | `docs/design/<slug>-prompt.md` (paste-ready prompts for 5 platforms) |
| Infographic | `docs/design/<slug>.png` + `docs/design/<slug>.md` |
| Web mockup hero (type 7) | `docs/design/<slug>-hero.png` + `docs/design/<slug>.md` (with a note recommending an HTML skill for the full mockup) |
| Quote graphic (type 8) | `docs/design/<slug>-bg.png` (background, no text) + `docs/design/<slug>.html` (HTML overlay) + `docs/design/<slug>.md` (metadata) |
| Logo multi-variant (type 2) | `docs/design/<slug>-v1.png`, `<slug>-v2.png`, ... `<slug>-v5.png` + `docs/design/<slug>.md` with a "Human review disclaimer" section |

**Slug rules:**
- kebab-case (lowercase, dash-separated)
- Max 50 characters
- ASCII only — strip diacritics and special characters (e.g. "Lattéa fall campaign" → `lattea-fall-campaign`)
- Avoid generic chunks like `image-1` — be descriptive (`lattea-fall-keyvisual`, `opa-roadmap-infographic`)

---

## 3. Prompt Composition Rules (shared)

Every prompt follows a **5-part structured prompt framework**, in order (per-type overrides in `references/<type>.md`):

| # | Section | What goes in |
|---|---------|--------------|
| 1 | **Subject + composition** | What's in frame, scale, crop, foreground/background relationship |
| 2 | **Lighting + mood** | Natural/studio, warm/cool, time of day, emotional tone |
| 3 | **Palette + textures** | Brand hex anchors or 3-word mood; texture (matte, glossy, grainy) |
| 4 | **Style + medium** | Illustration/photo/3D, brand visual adjective, art reference (e.g. "editorial photography style") |
| 5 | **Negatives** | no AI-slop, no warped text, no logo placeholders, no extra fingers, no watermark |

**Length guideline:**
- Ideal: ≤150 words for the whole prompt
- Hard cap: 200 words
- Too long → the model starts ignoring the tail and the output loses focus

**Prompt language:** default to English (the models handle it best), but keep brand names and slogans in their original spelling and casing.

---

## 4. Aspect Ratio Defaults

| Format | Ratio | Use case |
|--------|-------|----------|
| `poster` | 1:1 or 3:4 | Print, Instagram square |
| `social-square` | 1:1 | Facebook, Instagram, LinkedIn post |
| `social-vertical` | 9:16 | TikTok, Instagram Reels, Stories |
| `banner-hero` | 16:9 or 21:9 | Website hero, YouTube thumbnail, OOH |
| `magazine` | 3:4 or 2:3 | Editorial cover |
| `infographic` | 9:16 vertical | Long-form data viz |
| `logo-variant` | 1:1 + transparent background | Logo flexibility |
| `quote` | 1:1 or 4:5 | Instagram quote post |

If the user requests a custom ratio → record it in the frontmatter as `aspect_ratio: custom` + the explicit pixel dimensions (e.g. `1920x600`).

---

## 5. API Tier Detection

Detected with Bash logic at Step 5 (SKILL.md):

```bash
if [[ -n "$OPENAI_API_KEY" ]]; then
  TIER="pro"   # direct gpt-image-2
elif [[ -n "$OD_BIN" && -x "$OD_BIN" ]]; then
  TIER="enterprise"   # Open Design dispatcher
else
  TIER="free"   # prompt-only fallback
fi
```

**Print a transparency line** right after detection:

```
[tier: pro] [model: gpt-image-2]
```

or

```
[tier: free] [model: manual — 5-platform output]
```

**Tier downgrade behavior:** if Pro fails (quota exceeded, invalid key), auto-fall back to Free + print an error line:

```
[tier: pro → free fallback] [reason: quota exceeded] [model: manual]
```

---

## 6. Anti-patterns — DO NOT

- Skip the frontmatter on the `.md` metadata file
- Generate >1 image per turn (except for the logo multi-variant set in type 2)
- Save only a prompt without generating the image while on Pro/Enterprise tier
- Generate an image without saving the prompt metadata (context is lost next time)
- Hardcode brand hex colors when the project already has a brand identity file
- Translate frontmatter field names to a non-English language (breaks AI parsing)
- Embed text longer than 50 characters in the prompt for AI gen (mangled letters, misspellings)
- Output a prompt that's just a single keyword (must follow the 5-part structure)
- Forget to print the `[tier: ...] [model: ...]` line before generating

---

## 7. Self-test when finalizing output

Before finalizing, run through 3 checks:

1. **Brand fit** — "If this image sat next to the existing logo and brand assets, would someone recognize it as the same brand?"
2. **Voice fit** — "Does the style align with the campaign brief or the personal brand voice?"
3. **Usability fit (Free tier)** — "Can the client read the prompt and successfully paste it into DALL-E / MidJourney / Leonardo / Imagen / Bing?"

If **fewer than 2 of 3 pass** → go back to Step 3 to re-read brand identity, or back to Step 4 to re-compose the prompt.

---

## 8. Plain English policy (this file + body files)

- Plain professional English throughout the narrative and tables — clear enough for a small business owner who isn't a designer
- Technical abbreviations and product names stay verbatim (CTR, CPM, ROAS, gpt-image-2, DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — explained briefly on first mention
- Frontmatter field names stay in English (`title`, `type_artifact`, `mode`, `aspect_ratio`, …) so AI parsers don't break
- Examples use realistic global-feeling brands: Lattéa (fictional cafe chain, F&B), Lumière Studio (creative agency), AI Income Mastery (online course), OPA (product) — no throwaway placeholder names

> Litmus test: "Would a small business owner who doesn't speak design jargon understand this section?" If not — rewrite it.
