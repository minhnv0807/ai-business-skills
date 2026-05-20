# CONVENTIONS — 30-thiet-ke-master

Conventions chung áp dụng cho TẤT CẢ 8 design types. Per-type override (chi tiết prompt composition theo từng loại) nằm trong `references/<type>.md`.

---

## 1. Brand Identity Sources (auto-search priority)

Cho business modes (`business-logo`, `business-campaign`, `marketing-day-to-day`), search brand identity theo thứ tự ưu tiên:

| # | Source | Nội dung tìm |
|---|--------|--------------|
| 1 | `assets/brand/logo.{svg,png,ai}` | Logo file primary — extract palette nếu cần |
| 2 | `brand-guideline.md` / `brand-identity.md` (ở root project) | Brand book đầy đủ: logo, palette, typography, voice |
| 3 | `02-brief-chien-dich/output.md` Section "Yêu cầu thương hiệu" | Campaign brief có brand mandatories cho chiến dịch hiện tại |
| 4 | `prd.md` frontmatter `target_user` + Section "Visual cues" | Persona cues for style direction |
| 5 | `prd.md` Section 6 (features) | Features → visual concept liên quan |

**Nếu không tìm thấy ở cả 5 source** → BLOCK business mode, ask user:

> "Để gen đúng brand voice, cần 3 thứ:
> 1. Upload file logo (PNG/SVG) hoặc đường dẫn
> 2. Palette 3 màu hex (vd `#1A1A1A`, `#D4AF37`, `#FAFAFA`)
> 3. Font family chính (vd `Inter`, `Manrope`, `Be Vietnam Pro`)"

**Personal modes** (`personal-brand`, một số `quote-graphic`): brand identity optional. Đủ với:
- 3-5 style adjectives (vd "confident, warm, minimal, modern, friendly")
- 3 mood colors (có thể tên hoặc hex)

---

## 2. Output Location

Tất cả output về `docs/design/` ở root project (tạo nếu chưa có):

| Type artifact | File output |
|---------------|-------------|
| Image generated (Tier Pro/Enterprise) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata frontmatter) |
| Prompt fallback (Tier Free) | `docs/design/<slug>-prompt.md` (5 platforms paste-ready) |
| Infographic | `docs/design/<slug>.png` + `docs/design/<slug>.md` |
| Web mockup hero (type 7) | `docs/design/<slug>-hero.png` + `docs/design/<slug>.md` (với note recommendation HTML skill) |
| Quote graphic (type 8) | `docs/design/<slug>-bg.png` (background, không text) + `docs/design/<slug>.html` (HTML overlay) + `docs/design/<slug>.md` (metadata) |
| Logo multi-variant (type 2) | `docs/design/<slug>-v1.png`, `<slug>-v2.png`, ... `<slug>-v5.png` + `docs/design/<slug>.md` với section "Human review disclaimer" |

**Slug rules:**
- kebab-case (lowercase, dash-separated)
- Max 50 ký tự
- Tiếng Việt → bỏ dấu (vd "Chiến dịch BHOP mùa thu" → `chien-dich-bhop-mua-thu`)
- Tránh chunk chung chung như `image-1` — dùng descriptive (`bhop-fall-keyvisual`, `opa-roadmap-infographic`)

---

## 3. Prompt Composition Rules (chung)

Mọi prompt cần **5 phần ordered** (chi tiết per-type override trong `references/<type>.md`):

| # | Phần | Nội dung |
|---|------|----------|
| 1 | **Subject + composition** | What's in frame, scale, crop, foreground/background relationship |
| 2 | **Lighting + mood** | Natural/studio, warm/cool, time of day, emotional tone |
| 3 | **Palette + textures** | Brand hex anchors hoặc 3-word mood; texture (matte, glossy, grainy) |
| 4 | **Style + medium** | Illustration/photo/3D, brand visual adjective, art reference (vd "editorial photography style") |
| 5 | **Negatives** | no AI-slop, no warped text, no logo placeholders, no extra fingers, no watermark |

**Length guideline:**
- Lý tưởng: ≤150 từ cho cả prompt
- Tối đa: 200 từ
- Quá dài → AI ignore phần cuối, output mất focus

**Ngôn ngữ prompt:** mặc định English (model hiểu tốt hơn) nhưng giữ tên brand + slogan tiếng Việt nguyên gốc.

---

## 4. Aspect Ratio Defaults

| Format | Ratio | Use case |
|--------|-------|----------|
| `poster` | 1:1 hoặc 3:4 | Print, Instagram square |
| `social-square` | 1:1 | Facebook, Instagram, LinkedIn post |
| `social-vertical` | 9:16 | TikTok, Instagram Reels, Stories |
| `banner-hero` | 16:9 hoặc 21:9 | Website hero, YouTube thumb, OOH |
| `magazine` | 3:4 hoặc 2:3 | Editorial cover |
| `infographic` | 9:16 vertical | Long-form data viz |
| `logo-variant` | 1:1 + transparent background | Logo flexibility |
| `quote` | 1:1 hoặc 4:5 | Instagram quote post |

Nếu user yêu cầu custom ratio → ghi rõ vào frontmatter `aspect_ratio: custom` + dimension cụ thể (vd `1920x600`).

---

## 5. API Tier Detection

Detect theo Bash logic ở Step 5 (SKILL.md):

```bash
if [[ -n "$OPENAI_API_KEY" ]]; then
  TIER="pro"   # direct gpt-image-2
elif [[ -n "$OD_BIN" && -x "$OD_BIN" ]]; then
  TIER="enterprise"   # Open Design dispatcher
else
  TIER="free"   # prompt-only fallback
fi
```

**Print transparency line** ngay sau detect:

```
[tier: pro] [model: gpt-image-2]
```

hoặc

```
[tier: free] [model: manual — 5 platforms output]
```

**Tier upgrade behavior:** nếu Pro fail (quota exceeded, invalid key), tự động fallback xuống Free + print error line:

```
[tier: pro → free fallback] [reason: quota exceeded] [model: manual]
```

---

## 6. Anti-patterns CẤM (chung)

- Skip frontmatter trong output `.md` metadata file
- Gen >1 image per turn (trừ logo multi-variant type 2)
- Save prompt mà không gen image (khi đang ở Tier Pro/Enterprise)
- Gen image mà không save prompt metadata (mất context lần sau)
- Hardcode brand hex khi đã có brand identity file ở project
- Translate field name trong frontmatter sang tiếng Việt (phá AI parsing)
- Embed text dài >50 ký tự vào prompt cho AI gen (méo chữ, sai chính tả)
- Output prompt với chỉ keyword đơn lẻ (phải structured 5 phần)
- Quên print `[tier: ...] [model: ...]` line trước khi gen

---

## 7. Self-test khi gen output

Trước khi finalize, tự hỏi 3 câu:

1. **Brand fit** — "Image này nếu đứng cạnh logo + brand asset existing có nhận ra cùng brand không?"
2. **Voice fit** — "Style align với campaign brief / personal brand voice không?"
3. **Usability fit (Tier Free)** — "Khách hàng đọc prompt có hiểu hết và paste được vào DALL-E / MidJourney / Leonardo / Imagen / Bing không?"

Nếu **<2/3 pass** → quay lại Step 3 re-read brand identity, hoặc Step 4 re-compose prompt.

---

## 8. Plain Vietnamese policy (file này + body files)

- Tiếng Việt phổ thông xuyên suốt cho narrative + table content
- Technical abbreviations giữ nguyên (CTR, CPM, ROAS, gpt-image-2, DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — có giải thích ngắn khi xuất hiện lần đầu
- Tên field frontmatter giữ English (`title`, `type_artifact`, `mode`, `aspect_ratio`, ...) để AI parser không vỡ
- Examples dùng OPA realistic: BHOP cafe (F&B), Lumière (agency), AI Kiếm Tiền (course online), OPA (product) — không dùng brand giả lung tung
