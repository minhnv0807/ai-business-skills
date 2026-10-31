---
name: 30-thiet-ke-master
description: "Dung khi can TAO RA anh hoac prompt anh bang AI — anh thuong hieu ca nhan, logo, key visual campaign, anh dang hang ngay, editorial, infographic, mockup web, quote graphic. Tu doc brand identity trong context roi dung prompt, gen anh hoac xuat prompt cho MidJourney, DALL-E, Imagen, Leonardo. Co che do nhan anh reference va tra ve master prompt copy-paste duoc. Kich hoat khi user nhac 'thiet ke anh', 'lam logo', 've banner', 'prompt MidJourney', 'tao key visual', 'lam anh giong anh nay', 'gen anh AI', 'doi mau thuong hieu tren anh'. Khong dung cho — viet brief giao designer lam thi dung skill 42-brief-hinh-anh; quy trinh asset ca campaign thi dung skill 41-campaign-asset-list; video avatar AI thi dung skill 24-ai-avatar-production; UI wireframe tuong tac thi dung web-prototype; animation thi dung motion-frames."
argument-hint: "<design type + brand + format>"
metadata:
  version: 1.2.2
  category: design
triggers:
  - "thiet ke anh"
  - "lam logo"
  - "anh poster"
  - "banner campaign"
  - "social post design"
  - "infographic"
  - "key visual"
  - "hero web"
  - "avatar ca nhan"
  - "monogram"
  - "quote graphic"
  - "prompt MidJourney"
  - "prompt DALL-E"
  - "anh truyen thong"
  - "anh reference"
  - "prompt master"
  - "doi mau thuong hieu"
  - "them logo"
license: MIT
related:
  - 02-brief-chien-dich
  - 05-copy-quang-cao
  - 22-personal-brand-context
  - 24-ai-avatar-production
  - 41-campaign-asset-list
  - 42-brief-hinh-anh
  - 46-brand-guideline
  - 47-design-review
---

# Master Thiet Ke — 30-thiet-ke-master

Master design skill xu ly 8 loai thiet ke cho ai-business-skills. Mot cua cho ca thiet ke ca nhan (founder, creator) lan thuong hieu (logo, campaign, marketing hang ngay). Tu doc brand identity tu project context, compose prompt dung brand voice, va route sang dung tool: gen truc tiep qua gpt-image-2, fallback prompt cho 5 nen tang pho bien, hoac dispatch qua Open Design infrastructure.

Toan bo skill viet tieng Viet pho thong de client co the doc, hieu va fill cung. Ten field tieng Anh giu nguyen de AI parsing khong bi pha.

Khi user dua anh reference hoac xin prompt tao anh/video/storyboard, skill hoat dong nhu Prompt Director: phan loai intent, phan tich anh thanh cac prompt layer, xuat prompt tieng Anh copy-paste-ready, roi neu ro can upload them asset nao cho tung anh.

---

## 8 loai thiet ke

| # | Type | Subject | Khi nao dung | Tool |
|---|------|---------|--------------|------|
| 1 | personal-brand | Ca nhan (founder/creator) | Avatar profile, monogram, speaker cover, quote graphic ca nhan | gpt-image-2 raster |
| 2 | business-logo | Thuong hieu — logo identity | Logo primary/secondary/mark | gpt-image-2 multi-variant 3-5 huong + disclaimer human review |
| 3 | business-campaign | Brand campaign visual | TVC still, OOH, product hero, key visual chien dich | gpt-image-2 raster |
| 4 | marketing-day-to-day | Operational marketing | Social post, banner ad, email header, story | gpt-image-2 raster |
| 5 | editorial | Long-form publication | Magazine cover, article hero, e-book, lookbook | gpt-image-2 raster |
| 6 | infographic | Data/plan/process viz | Roadmap, process flow, comparison chart | gpt-image-2 (text minimal, icons-focused) |
| 7 | web-mockup | UI screen sketch | Landing hero, app screen mockup | **Hybrid**: gen 1 hero image qua gpt-image-2 + recommend HTML skills cho mockup full interactive |
| 8 | quote-graphic | Quote post | "Guru post" IG, LinkedIn quote, motivational | Hybrid: gpt-image-2 background + HTML text overlay |

---

## Khi nao trigger / KHONG trigger

### Triggers (goi skill nay)

- "thiet ke anh", "lam logo", "anh poster", "banner campaign"
- "social post design", "infographic", "key visual", "hero web mockup"
- "anh truyen thong", "avatar ca nhan", "monogram", "quote graphic"
- "prompt MidJourney", "prompt DALL-E", "prompt Leonardo", "prompt Imagen"

### DO NOT INVOKE (route sang skill khac)

| Truong hop | Route sang |
|------------|------------|
| Full interactive web UI mockup (multi-section, co behavior) | **`web-prototype`** / **`saas-landing`** / **`mobile-app`** / **`dashboard`** / **`frontend-design`** |
| Video creation (TVC, ads video, UGC) | **`04-script-video`** + Seedance/Kling/Sora dispatcher |
| Animation, motion graphics, sprite | **`motion-frames`** / **`sprite-animation`** |
| Audio asset (jingle, voiceover, SFX) | **`audio-jingle`** |
| Document layout (PDF report, e-guide multi-page) | **`digital-eguide`** / **`finance-report`** / **`magazine-poster`** |

---

## Mode detection cascade (Step 0)

Ba lop phat hien type theo thu tu uu tien:

### Layer 1 — Keyword auto-detect

| Keyword (Vietnamese hoac English) | Type detect |
|-----------------------------------|-------------|
| "avatar", "anh dai dien", "monogram", "speaker cover", "profile pic" | personal-brand |
| "logo", "wordmark", "lockup", "brand mark" | business-logo |
| "key visual", "campaign visual", "TVC still", "OOH", "product hero" | business-campaign |
| "social post", "banner ads", "email header", "story IG", "post Facebook" | marketing-day-to-day |
| "magazine cover", "article hero", "e-book cover", "editorial", "lookbook" | editorial |
| "infographic", "roadmap visual", "process flow", "comparison chart", "data viz" | infographic |
| "hero web", "landing hero image", "app screen mockup" | web-mockup |
| "quote", "quote graphic", "guru post", "motivational post" | quote-graphic |
| "anh reference", "giong anh nay", "prompt master", "same style", "same composition" | giu type hien tai + bat Prompt Director reference mode |
| "doi mau", "mau thuong hieu", "brand color", "them logo", "replace logo" | giu type hien tai + bat Prompt Director brand adaptation |
| "nhin AI qua", "chua giong", "sua prompt", "mau sai", "font kho doc" | giu type hien tai + bat Prompt Director diagnosis |

### Layer 2 — Explicit flag

User truyen `--type=business-logo` (hoac 7 type khac) → override Layer 1.

### Layer 3 — Ambiguous fallback

Neu khong match keyword va khong co flag → hoi 1 cau duy nhat:

> "Loai thiet ke nao trong 8 lua chon duoi?
> 1) personal-brand (ca nhan) 2) business-logo 3) business-campaign 4) marketing-day-to-day 5) editorial 6) infographic 7) web-mockup 8) quote-graphic"

In ra transparency line truoc khi tiep tuc:

```
[detect type: business-logo — keyword "logo" + "BHOP" match]
```

---

## Prompt Director mode

Bat mode nay khi user dua anh reference, xin master prompt, muon doi mat/mau/logo, hoac feedback anh ra chua dung. Load `references/prompt-director.md` truoc khi compose prompt.

Nguyen tac xu ly:
- **Khong hoi form dai truoc.** Neu du input, tao prompt ngay va chi ghi phan con thieu o cuoi.
- **Anh reference = style/composition source**, khong tu xem do la anh mat/logo tru khi user noi ro.
- **Asset thay the phai hoi ro theo loai:** face reference, logo file, brand palette hex, product image, background/location, exact text.
- **Nhieu anh = nhieu luong.** Dat ten `Flow A/B/C`, neu vai tro tung anh, prompt rieng, negative prompt rieng, va danh sach asset can upload cho tung flow.
- **Prompt cuoi cho image/video model mac dinh tieng Anh**; phan giai thich va yeu cau bo sung dung tieng Viet.

Output nhanh khi co reference image:

```markdown
## Luong anh

| Flow | Anh dau vao | Vai tro | Output |
|------|-------------|---------|--------|
| A | [file/path] | style/composition reference | master prompt |

## Copy-paste prompt — Flow A
[English prompt]

## Negative prompt / Avoid
[English avoid list]

## Can upload them de ca nhan hoa Flow A
- Face reference:
- Logo:
- Brand colors:
- Exact text:
- Product/background:
```

---

## Workflow runtime — 5 buoc

### Step 1 — DETECT design type

Chay 3-layer cascade o tren. Print `[detect type: ...]` truoc khi sang Step 2.

### Step 2 — LOAD references

Load theo nhu cau (lazy):

- `CONVENTIONS.md` — load 1 lan dau session
- `references/prompt-director.md` — load khi co anh reference, master prompt, doi mat/mau/logo, nhieu anh, hoac feedback sua prompt
- `references/<type>.md` — load dung file cho type vua detect (vd `references/business-logo.md`)
- `references/brand-identity-source.md` — load khi type bat dau bang `business-*`
- `references/fallback-prompt-format.md` — load khi Tier Free (xem Step 5)
- `templates/<format>.md` — load template theo format yeu cau (vd `templates/poster.md`, `templates/social-square.md`)

### Step 3 — READ brand identity

**Business modes** (`business-logo` / `business-campaign` / `marketing-day-to-day`): BAT BUOC tim brand identity. Auto-search theo priority:

1. `assets/brand/logo.{svg,png,ai}` — logo file primary
2. `brand-guideline.md` / `brand-identity.md` o root project
3. `02-brief-chien-dich/output.md` Section "Yeu cau thuong hieu" — campaign brief co brand mandatories
4. `prd.md` frontmatter `target_user` + Section "Visual cues" — style direction
5. `prd.md` Section 6 — features cho visual concept

Neu thieu cho business mode → **BLOCK** + ask user upload logo + specify palette (3 mau hex) + chi dinh font family.

**Personal modes** (`personal-brand` / `quote-graphic` ca nhan): brand identity optional. Du voi style adjectives (3-5 tu) + color preference (3 mood color).

**Editorial / Infographic / Web-mockup**: tuy ngu canh — neu la cho brand thi lam nhu business, neu la ca nhan/general thi lam nhu personal.

### Step 4 — ROUTE theo type

| Type | Route action |
|------|--------------|
| 1-5 (personal-brand, business-logo, business-campaign, marketing-day-to-day, editorial) | COMPOSE prompt raster → sang Step 5 |
| 6 (infographic) | COMPOSE prompt voi chien luoc **text-minimal**: icons-heavy, palette branded, toi da 2-3 number stats, KHONG paragraph dai → sang Step 5 |
| 7 (web-mockup hybrid) | COMPOSE 1 hero image prompt → Step 5 + print HTML skill recommendation block, exit gracefully sau khi gen hero |
| 8 (quote-graphic) | COMPOSE background image prompt (KHONG co text in-image) + tao HTML overlay template (text qua HTML, KHONG in-image text) |

### Step 5 — CHECK API tier + GENERATE

Detect tier theo Bash:

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
| **Free** | Khong co API key | `docs/design/<slug>-prompt.md` voi 5 platform paste-ready (DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — xem `references/fallback-prompt-format.md` |
| **Pro** | `OPENAI_API_KEY` co san → call gpt-image-2 direct | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata) |
| **Enterprise** | `$OD_BIN` co va executable → dispatch qua Open Design infrastructure (existing `image-poster` infra) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata, ghi `gen_mode: api-dispatcher`) |

**Type 7 web mockup** — sau khi gen hero image (neu tier Pro/Enterprise), in recommendation block:

```
[NEXT STEP] Hero image gen xong. De co mockup full interactive da section,
chay them 1 trong cac skill:
  - web-prototype (general landing/marketing page)
  - saas-landing (SaaS product page)
  - mobile-app (mobile app screens)
  - dashboard (admin/analytics dashboard)
  - frontend-design (Figma-style design tokens)
```

**Type 8 quote graphic** — output 2 file:
- `docs/design/<slug>-bg.png` — background image gen qua gpt-image-2 (KHONG co text)
- `docs/design/<slug>.html` — HTML overlay voi text tren background (text qua HTML de tranh AI meo chu)

---

## Frontmatter schema cho output file

Moi file metadata `docs/design/<slug>.md` PHAI co frontmatter:

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

Ten field TIENG ANH — khong dich sang tieng Viet (pha AI parsing). Body file co the tieng Viet pho thong.

---

## Error handling — 8 tinh huong thuc te

| Tinh huong | Xu ly |
|------------|-------|
| Type ambiguous (khong match keyword, khong co flag) | Ask 1 cau duy nhat voi 8 options (xem Layer 3 o Step 0) |
| Business mode + brand identity thieu | **BLOCK** + ask user upload logo + specify palette (3 hex) + font family |
| `OPENAI_API_KEY` invalid / quota exceeded khi goi gpt-image-2 | Fallback xuong Tier Free (prompt-only) + print error line |
| Type 7 web mockup nhung user thuc su muon full UI multi-section | Hybrid OK: gen hero image + kem recommend `web-prototype` (hoac 4 skill kia) cho full mockup |
| Logo gen nhung user chua co brand values | Grill 3 cau: ten brand, nganh, values (3-5 tu) — moi gen duoc logo co hon |
| Infographic text-heavy >5 data points | **Warn**: "Text trong AI-gen image unreliable. Recommend dung Canva template cho infographic co nhieu text." Van gen neu user confirm. |
| Quote graphic text >50 ky tu | **Warn**: similar — recommend chi dung background image + HTML overlay (da la default cho type 8) |
| User yeu cau format khong match type vua detect | Suggest mode tuong ung — vd "landing page banner" → mode=`marketing-day-to-day` format=`banner-hero` |

---

## Anti-patterns CAM

- Gen logo as final output → luon multi-variant 3-5 huong + human review disclaimer
- Text in-image >50 ky tu — AI gen se meo chu, sai chinh ta, dau tieng Viet vo
- Web mockup raster pretend la interactive — phai hybrid + recommend HTML skill
- Skip brand identity check cho business modes — output se roi rac voi brand
- Output prompt chi co keyword (vd "logo cafe dep") — phai structured 5 phan: subject + composition + lighting + palette + style + negatives
- Hardcode hex mau khi project da co brand identity file — phai doc tu source
- Translate field name trong frontmatter sang tieng Viet — pha AI parsing
- Gen >1 image per turn tru truong hop logo multi-variant
- Save prompt ma khong gen image khi dang o Tier Pro/Enterprise — lang phi API
- Gen image ma khong save metadata `.md` — mat context cho lan sau

---

## Self-test truoc khi gen

Truoc moi lan goi gpt-image-2 hoac xuat prompt, tu hoi:

> "Output nay co align voi brand voice + identity khong? Khach hang nhin vao co nhan ra brand khong? Neu la personal brand — co phan anh dung style adjectives ma user khai khong?"

Neu **khong chac 2/3 cau tren** → quay lai Step 3, re-read brand identity hoac grill them 1-2 cau.

---

## Examples reference

- `examples/personal-founder-avatar.md` — Avatar founder OPA (style: confident, warm, minimal)
- `examples/bhop-fall-campaign-poster.md` — Key visual chien dich BHOP cafe mua thu (palette nau + cam)
- `examples/ai-monetization-quote-graphic.md` — Quote graphic IG cho course "AI Kiem Tien" (background + HTML overlay)
- `examples/opa-roadmap-infographic.md` — Infographic roadmap san pham OPA (icons-heavy, text minimal)

---

## Cheat sheet — load file nao khi nao

| Khi can | Load file |
|---------|-----------|
| Hieu format frontmatter, output location, prompt rule chung | `CONVENTIONS.md` |
| Anh reference, master prompt, doi mat/mau/logo, prompt diagnosis | `references/prompt-director.md` |
| Compose prompt cho 1 trong 8 types | `references/<type>.md` (vd `references/business-logo.md`) |
| Business mode — tim brand identity source | `references/brand-identity-source.md` |
| Tier Free — format prompt cho 5 platforms | `references/fallback-prompt-format.md` |
| Template format cu the (poster, banner, story...) | `templates/<format>.md` |
| Example output thuc te | `examples/<example-name>.md` |

---

## Plain Vietnamese policy

Skill nay dung tieng Viet pho thong xuyen suot — client co the doc, hieu, fill cung AI. Technical terms (gpt-image-2, DALL-E 3, MidJourney, CTR, CPM) giu nguyen + giai thich lan dau. Examples dung OPA brands realistic (BHOP cafe, Lumiere agency, AI Kiem Tien course).

---

## Chuyen sang skill design chuyen biet (41-50)

Skill nay **tao ra anh/prompt**. Khi viec can lam la **quy trinh san xuat visual theo campaign** (lap danh sach asset, viet brief giao designer, duyet thiet ke, resize hang loat), chuyen sang cac skill duoi day:

| Viec can lam | Skill |
|--------------|-------|
| Liet ke toan bo asset campaign can thiet ke + deadline + owner | `41-campaign-asset-list` |
| Viet brief anh static / banner / thumbnail giao designer | `42-brief-hinh-anh` |
| Viet brief carousel (logic chuoi slide) | `43-brief-carousel` |
| Viet brief cho editor dung video | `44-brief-video-editor` |
| Direction cho designer lam tren Canva | `45-brief-canva` |
| Xay brand guideline (palette, typography, logo, component) | `46-brand-guideline` |
| Duyet thiet ke, cham diem, feedback | `47-design-review` |
| Brief gap khi campaign dang chay (creative fatigue) | `48-quick-visual-brief` |
| Code email HTML responsive | `49-html-email-template` |
| Resize asset winner sang da kich thuoc | `50-asset-resize` |

**Timeline chuan cua designer theo campaign:** T-14 lap asset list → T-7 concept MVP 30 phut de duyet huong → T-5 asset phuc tap (landing page, email) → T-3 asset trung binh (carousel, banner set) → T-1 asset nhanh (static, story) → launch day standby quick asset → D+1 danh dau winner/loser roi resize winner.

Agent phu trach ca pipeline nay: `agents/design-producer.md`.
