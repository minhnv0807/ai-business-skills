# gpt-image-2 Spec

API spec, env vars, limits, pricing cho gpt-image-2 — model default cua skill o Tier Pro. Reference nay dung khi Step 5 detect tier Pro va can call API direct.

## Env vars

- `OPENAI_API_KEY` — **required** cho Tier Pro. Key OpenAI account co quyen call gpt-image-2.
- `OPENAI_ORG_ID` — optional. Dung neu user thuoc organization (multi-org account).

Detect bang Bash:

```bash
if [[ -n "$OPENAI_API_KEY" ]]; then
  # Tier Pro — call API direct
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
  "prompt": "<composed prompt tu skill compose>",
  "n": 1,
  "size": "1024x1024",
  "quality": "standard",
  "style": "vivid"
}
```

### Field options

| Field | Options | Mac dinh | Notes |
|-------|---------|----------|-------|
| `model` | `gpt-image-2` | required | Fixed cho skill nay |
| `prompt` | string max 4000 chars | required | Composed prompt 5 phan (subject + composition + lighting + palette + style + negatives) |
| `n` | 1-10 | 1 | Skill nay dung `n=1` tru business-logo (3-5 variants → loop call) |
| `size` | `1024x1024` / `1792x1024` / `1024x1792` | `1024x1024` | Map aspect: 1:1 → 1024x1024; 16:9 → 1792x1024; 9:16 → 1024x1792 |
| `quality` | `standard` / `hd` | `standard` | HD cho production asset (logo, hero, key visual); standard cho day-to-day |
| `style` | `vivid` / `natural` | `vivid` | `natural` cho photographic realism; `vivid` cho illustrative / branding |

### Authorization header

```
Authorization: Bearer $OPENAI_API_KEY
Content-Type: application/json
OpenAI-Organization: $OPENAI_ORG_ID  (optional)
```

## Limits

- **Max prompt 4000 chars** — neu prompt compose vuot → trim subject description hoac bo optional adjectives
- **Max 10 images per request** (n=1 den n=10) — skill nay dung 1 tru logo multi-variant
- **Rate limit tier-dependent**:
  - Free: 5 images/min
  - Tier 1: 50 images/min
  - Tier 2: 100 images/min
  - Tier 5: 500 images/min
- **Concurrent requests**: tier-dependent, mac dinh khong parallel cho Free tier

## Pricing (2026 reference)

| Quality | 1024x1024 | 1792x1024 / 1024x1792 |
|---------|-----------|-----------------------|
| Standard | $0.04/image | $0.08/image |
| HD | $0.08/image | $0.12/image |

### Cost estimation cho skill workflow

- Personal avatar 1:1 standard: ~$0.04
- Business logo 5 variants 1:1 HD: 5 × $0.08 = $0.40
- Campaign key visual 16:9 HD: $0.12
- Social post 1:1 standard: $0.04
- Hero web 16:9 standard: $0.08
- Quote background 1:1 standard: $0.04 (text qua HTML, khong can HD)
- Infographic 1:1 HD: $0.08 (can HD vi icons + numbers can sac net)

## Best practices

### Quality selection

- **`hd`** cho production asset lau dai: logo (3-5 variants), key visual chien dich, magazine cover, hero web landing
- **`standard`** cho day-to-day: social post, banner ads, email header, quote background, story

### Style selection

- **`natural`** cho:
  - Photographic realism (personal avatar, product hero photo, editorial photography)
  - Magazine cover lifestyle
  - Cafe/restaurant brand photography
- **`vivid`** cho:
  - Illustrative / vector (infographic, business-logo abstract mark)
  - Branding visual (campaign key visual saturated)
  - Quote background abstract texture co color pop

### Size mapping aspect ratio

| Format | Aspect | API size |
|--------|--------|----------|
| Social post square | 1:1 | `1024x1024` |
| IG portrait | 4:5 | `1024x1792` (closest) |
| IG/FB story, TikTok | 9:16 | `1024x1792` |
| Landing hero, blog hero, YouTube thumb | 16:9 | `1792x1024` |
| Banner ad horizontal | 16:9 | `1792x1024` |
| Magazine cover print | 8.5:11 | `1024x1792` (closest) |

Neu user yeu cau aspect khong match 3 sizes — pick closest, document `aspect_ratio: custom` trong frontmatter, note rang co the can crop hau ky.

## Fallback khi API fails

| Loi | Behavior |
|-----|----------|
| **Quota exceeded** | Print "Quota exceeded — fallback to Tier Free (prompt-only)" → output `docs/design/<slug>-prompt.md` voi 5 platforms (xem `fallback-prompt-format.md`) |
| **Invalid API key** | Print "OPENAI_API_KEY invalid — fallback to Tier Free" → fallback prompt-only |
| **Network error / timeout** | Retry 1x voi delay 3s. Neu van fail → fallback Tier Free |
| **Prompt rejected (content policy)** | Print "Prompt rejected by OpenAI content policy. Recompose with safer phrasing." → suggest rephrase, khong fallback Tier Free (vi prompt content co van de, khong phai tier issue) |
| **Rate limit hit** | Sleep theo `retry-after` header response, retry 1x. Neu van fail → fallback |

## Self-test truoc khi call API

- [ ] Prompt ≤4000 chars?
- [ ] `OPENAI_API_KEY` env var set?
- [ ] Aspect ratio map sang 1 trong 3 sizes hop le?
- [ ] Quality + style selection match design type (xem Best practices)?
- [ ] Da estimate cost user biet truoc khi call (neu >$0.20)?
