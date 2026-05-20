# gpt-image-2 Spec

API spec, env vars, limits, and pricing for gpt-image-2 — the default model for this skill at Tier Pro. Use this reference when Step 5 detects Tier Pro and you need to call the API directly.

## Env vars

- `OPENAI_API_KEY` — **required** for Tier Pro. An OpenAI key with permission to call gpt-image-2.
- `OPENAI_ORG_ID` — optional. Use it if the user belongs to an organization (multi-org account).

Detect via Bash:

```bash
if [[ -n "$OPENAI_API_KEY" ]]; then
  # Tier Pro — call the API directly
fi
```

## API endpoint

```
POST https://api.openai.com/v1/images/generations
```

### Request body

```json
{
  "model": "gpt-image-2",
  "prompt": "<composed prompt from the skill compose step>",
  "n": 1,
  "size": "1024x1024",
  "quality": "standard",
  "style": "vivid"
}
```

### Field options

| Field | Options | Default | Notes |
|-------|---------|---------|-------|
| `model` | `gpt-image-2` | required | Fixed for this skill |
| `prompt` | string, max 4000 chars | required | 5-part composed prompt (subject + composition + lighting + palette + style + negatives) |
| `n` | 1-10 | 1 | This skill uses `n=1` except for business-logo (3-5 variants → loop calls) |
| `size` | `1024x1024` / `1792x1024` / `1024x1792` | `1024x1024` | Aspect map: 1:1 → 1024x1024; 16:9 → 1792x1024; 9:16 → 1024x1792 |
| `quality` | `standard` / `hd` | `standard` | HD for production assets (logo, hero, key visual); standard for day-to-day |
| `style` | `vivid` / `natural` | `vivid` | `natural` for photographic realism; `vivid` for illustrative / branding |

### Authorization header

```
Authorization: Bearer $OPENAI_API_KEY
Content-Type: application/json
OpenAI-Organization: $OPENAI_ORG_ID  (optional)
```

## Limits

- **Max prompt 4000 chars** — if a composed prompt exceeds it → trim the subject description or drop optional adjectives
- **Max 10 images per request** (n=1 to n=10) — this skill uses 1 except for the multi-variant logo case
- **Rate limit, tier-dependent**:
  - Free: 5 images/min
  - Tier 1: 50 images/min
  - Tier 2: 100 images/min
  - Tier 5: 500 images/min
- **Concurrent requests**: tier-dependent; Free tier has no parallelism by default

## Pricing (2026 reference)

| Quality | 1024x1024 | 1792x1024 / 1024x1792 |
|---------|-----------|-----------------------|
| Standard | $0.04/image | $0.08/image |
| HD | $0.08/image | $0.12/image |

### Cost estimation per skill workflow

- Personal avatar 1:1 standard: ~$0.04
- Business logo 5 variants 1:1 HD: 5 × $0.08 = $0.40
- Campaign key visual 16:9 HD: $0.12
- Social post 1:1 standard: $0.04
- Web hero 16:9 standard: $0.08
- Quote background 1:1 standard: $0.04 (text via HTML, HD not needed)
- Infographic 1:1 HD: $0.08 (HD needed for sharp icons + numbers)

## Best practices

### Quality selection

- **`hd`** for long-lived production assets: logo (3-5 variants), campaign key visual, magazine cover, landing page hero
- **`standard`** for day-to-day: social post, banner ads, email header, quote background, story

### Style selection

- **`natural`** for:
  - Photographic realism (personal avatar, product hero photo, editorial photography)
  - Lifestyle magazine cover
  - Café/restaurant brand photography
- **`vivid`** for:
  - Illustrative / vector (infographic, abstract business-logo mark)
  - Branding visual (saturated campaign key visual)
  - Quote background — abstract texture with a color pop

### Aspect ratio → size mapping

| Format | Aspect | API size |
|--------|--------|----------|
| Square social post | 1:1 | `1024x1024` |
| IG portrait | 4:5 | `1024x1792` (closest) |
| IG/FB story, TikTok | 9:16 | `1024x1792` |
| Landing hero, blog hero, YouTube thumb | 16:9 | `1792x1024` |
| Horizontal banner ad | 16:9 | `1792x1024` |
| Print magazine cover | 8.5:11 | `1024x1792` (closest) |

If the user requests an aspect that doesn't match the three sizes — pick the closest, document `aspect_ratio: custom` in frontmatter, and note that post-crop may be needed.

## Fallback when the API fails

| Error | Behavior |
|-------|----------|
| **Quota exceeded** | Print "Quota exceeded — fallback to Tier Free (prompt-only)" → output `docs/design/<slug>-prompt.md` with 5 platforms (see `fallback-prompt-format.md`) |
| **Invalid API key** | Print "OPENAI_API_KEY invalid — fallback to Tier Free" → fallback to prompt-only |
| **Network error / timeout** | Retry once with a 3s delay. If it still fails → fallback to Tier Free |
| **Prompt rejected (content policy)** | Print "Prompt rejected by OpenAI content policy. Recompose with safer phrasing." → suggest a rephrase, do NOT fallback to Tier Free (the issue is content, not tier) |
| **Rate limit hit** | Sleep based on the `retry-after` response header, retry once. If still failing → fallback |

## Self-test before calling the API

- [ ] Prompt ≤4000 chars?
- [ ] `OPENAI_API_KEY` env var set?
- [ ] Aspect ratio maps to one of the three valid sizes?
- [ ] Quality + style selection matches the design type (see Best practices)?
- [ ] Cost estimate communicated to the user up front (if >$0.20)?
