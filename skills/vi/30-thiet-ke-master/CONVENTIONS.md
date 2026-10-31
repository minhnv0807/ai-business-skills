# CONVENTIONS — 30-thiet-ke-master

Conventions chung ap dung cho TAT CA 8 design types. Per-type override (chi tiet prompt composition theo tung loai) nam trong `references/<type>.md`.

---

## 1. Brand Identity Sources (auto-search priority)

Cho business modes (`business-logo`, `business-campaign`, `marketing-day-to-day`), search brand identity theo thu tu uu tien:

| # | Source | Noi dung tim |
|---|--------|--------------|
| 1 | `assets/brand/logo.{svg,png,ai}` | Logo file primary — extract palette neu can |
| 2 | `brand-guideline.md` / `brand-identity.md` (o root project) | Brand book day du: logo, palette, typography, voice |
| 3 | `02-brief-chien-dich/output.md` Section "Yeu cau thuong hieu" | Campaign brief co brand mandatories cho chien dich hien tai |
| 4 | `prd.md` frontmatter `target_user` + Section "Visual cues" | Persona cues for style direction |
| 5 | `prd.md` Section 6 (features) | Features → visual concept lien quan |

**Neu khong tim thay o ca 5 source** → BLOCK business mode, ask user:

> "De gen dung brand voice, can 3 thu:
> 1. Upload file logo (PNG/SVG) hoac duong dan
> 2. Palette 3 mau hex (vd `#1A1A1A`, `#D4AF37`, `#FAFAFA`)
> 3. Font family chinh (vd `Inter`, `Manrope`, `Be Vietnam Pro`)"

**Personal modes** (`personal-brand`, mot so `quote-graphic`): brand identity optional. Du voi:
- 3-5 style adjectives (vd "confident, warm, minimal, modern, friendly")
- 3 mood colors (co the ten hoac hex)

---

## 2. Output Location

Tat ca output ve `docs/design/` o root project (tao neu chua co):

| Type artifact | File output |
|---------------|-------------|
| Image generated (Tier Pro/Enterprise) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata frontmatter) |
| Prompt fallback (Tier Free) | `docs/design/<slug>-prompt.md` (5 platforms paste-ready) |
| Infographic | `docs/design/<slug>.png` + `docs/design/<slug>.md` |
| Web mockup hero (type 7) | `docs/design/<slug>-hero.png` + `docs/design/<slug>.md` (voi note recommendation HTML skill) |
| Quote graphic (type 8) | `docs/design/<slug>-bg.png` (background, khong text) + `docs/design/<slug>.html` (HTML overlay) + `docs/design/<slug>.md` (metadata) |
| Logo multi-variant (type 2) | `docs/design/<slug>-v1.png`, `<slug>-v2.png`, ... `<slug>-v5.png` + `docs/design/<slug>.md` voi section "Human review disclaimer" |

**Slug rules:**
- kebab-case (lowercase, dash-separated)
- Max 50 ky tu
- Tiếng Việt → bỏ dấu (vd "Chiến dịch BHOP mùa thu" → `chien-dich-bhop-mua-thu`)
- Tranh chunk chung chung nhu `image-1` — dung descriptive (`bhop-fall-keyvisual`, `opa-roadmap-infographic`)

---

## 3. Prompt Composition Rules (chung)

Moi prompt can **5 phan ordered** (chi tiet per-type override trong `references/<type>.md`):

| # | Phan | Noi dung |
|---|------|----------|
| 1 | **Subject + composition** | What's in frame, scale, crop, foreground/background relationship |
| 2 | **Lighting + mood** | Natural/studio, warm/cool, time of day, emotional tone |
| 3 | **Palette + textures** | Brand hex anchors hoac 3-word mood; texture (matte, glossy, grainy) |
| 4 | **Style + medium** | Illustration/photo/3D, brand visual adjective, art reference (vd "editorial photography style") |
| 5 | **Negatives** | no AI-slop, no warped text, no logo placeholders, no extra fingers, no watermark |

**Length guideline:**
- Ly tuong: ≤150 tu cho ca prompt
- Toi da: 200 tu
- Qua dai → AI ignore phan cuoi, output mat focus

**Ngon ngu prompt:** mac dinh English (model hieu tot hon) nhung giu ten brand + slogan tieng Viet nguyen goc.

---

## 4. Aspect Ratio Defaults

| Format | Ratio | Use case |
|--------|-------|----------|
| `poster` | 1:1 hoac 3:4 | Print, Instagram square |
| `social-square` | 1:1 | Facebook, Instagram, LinkedIn post |
| `social-vertical` | 9:16 | TikTok, Instagram Reels, Stories |
| `banner-hero` | 16:9 hoac 21:9 | Website hero, YouTube thumb, OOH |
| `magazine` | 3:4 hoac 2:3 | Editorial cover |
| `infographic` | 9:16 vertical | Long-form data viz |
| `logo-variant` | 1:1 + transparent background | Logo flexibility |
| `quote` | 1:1 hoac 4:5 | Instagram quote post |

Neu user yeu cau custom ratio → ghi ro vao frontmatter `aspect_ratio: custom` + dimension cu the (vd `1920x600`).

---

## 5. API Tier Detection

Detect theo Bash logic o Step 5 (SKILL.md):

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

hoac

```
[tier: free] [model: manual — 5 platforms output]
```

**Tier upgrade behavior:** neu Pro fail (quota exceeded, invalid key), tu dong fallback xuong Free + print error line:

```
[tier: pro → free fallback] [reason: quota exceeded] [model: manual]
```

---

## 6. Anti-patterns CAM (chung)

- Skip frontmatter trong output `.md` metadata file
- Gen >1 image per turn (tru logo multi-variant type 2)
- Save prompt ma khong gen image (khi dang o Tier Pro/Enterprise)
- Gen image ma khong save prompt metadata (mat context lan sau)
- Hardcode brand hex khi da co brand identity file o project
- Translate field name trong frontmatter sang tieng Viet (pha AI parsing)
- Embed text dai >50 ky tu vao prompt cho AI gen (meo chu, sai chinh ta)
- Output prompt voi chi keyword don le (phai structured 5 phan)
- Quen print `[tier: ...] [model: ...]` line truoc khi gen

---

## 7. Self-test khi gen output

Truoc khi finalize, tu hoi 3 cau:

1. **Brand fit** — "Image nay neu dung canh logo + brand asset existing co nhan ra cung brand khong?"
2. **Voice fit** — "Style align voi campaign brief / personal brand voice khong?"
3. **Usability fit (Tier Free)** — "Khach hang doc prompt co hieu het va paste duoc vao DALL-E / MidJourney / Leonardo / Imagen / Bing khong?"

Neu **<2/3 pass** → quay lai Step 3 re-read brand identity, hoac Step 4 re-compose prompt.

---

## 8. Plain Vietnamese policy (file nay + body files)

- Tieng Viet pho thong xuyen suot cho narrative + table content
- Technical abbreviations giu nguyen (CTR, CPM, ROAS, gpt-image-2, DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — co giai thich ngan khi xuat hien lan dau
- Ten field frontmatter giu English (`title`, `type_artifact`, `mode`, `aspect_ratio`, ...) de AI parser khong vo
- Examples dung OPA realistic: BHOP cafe (F&B), Lumiere (agency), AI Kiem Tien (course online), OPA (product) — khong dung brand gia lung tung
