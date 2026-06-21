---
name: 30-thiet-ke-master
description: |
  Master design skill cho ai-business-skills — 8 loại thiết kế (personal brand, business logo, campaign visual, marketing day-to-day, editorial, infographic, web mockup, quote graphic). Tự đọc brand identity (logo + palette + font) từ project context, compose prompt phù hợp brand voice, gen ảnh qua gpt-image-2 nếu có API hoặc fallback prompt cho 5 platform (DALL-E 3, MidJourney, Leonardo, Imagen, Bing). Có Prompt Director mode: nhận ảnh reference, phân tích style/composition, tạo master prompt copy-paste-ready, hỏi đúng asset còn thiếu (mặt, màu thương hiệu, logo, sản phẩm), xử lý nhiều ảnh thành nhiều luồng prompt riêng. Phân biệt rõ thiết kế cá nhân vs thương hiệu, biết khi nào route sang HTML skills cho web mockup.
  Triggers — "thiết kế ảnh", "làm logo", "ảnh poster", "banner campaign", "social post", "infographic", "key visual", "hero web mockup", "ảnh truyền thông", "avatar cá nhân", "monogram", "quote graphic", "prompt MidJourney", "prompt DALL-E", "ảnh reference", "prompt master", "đổi màu thương hiệu", "thêm logo". KHÔNG dùng cho — UI wireframe full interactive (dùng web-prototype/saas-landing thay), video creation (dùng 04-script-video + Seedance/Kling), animation (dùng motion-frames).
argument-hint: "<design type + brand + format>"
metadata:
  version: 1.1.0
  category: design
triggers:
  - "thiết kế ảnh"
  - "làm logo"
  - "ảnh poster"
  - "banner campaign"
  - "social post design"
  - "infographic"
  - "key visual"
  - "hero web"
  - "avatar cá nhân"
  - "monogram"
  - "quote graphic"
  - "prompt MidJourney"
  - "prompt DALL-E"
  - "ảnh truyền thông"
  - "ảnh reference"
  - "prompt master"
  - "đổi màu thương hiệu"
  - "thêm logo"
license: MIT
related:
  - 02-brief-chien-dich
  - 05-copy-quang-cao
  - 22-personal-brand-context
  - 24-ai-avatar-production
---

# Master Thiết Kế — 30-thiet-ke-master

Master design skill xử lý 8 loại thiết kế cho ai-business-skills. Một cửa cho cả thiết kế cá nhân (founder, creator) lẫn thương hiệu (logo, campaign, marketing hàng ngày). Tự đọc brand identity từ project context, compose prompt đúng brand voice, và route sang đúng tool: gen trực tiếp qua gpt-image-2, fallback prompt cho 5 nền tảng phổ biến, hoặc dispatch qua Open Design infrastructure.

Toàn bộ skill viết tiếng Việt phổ thông để client có thể đọc, hiểu và fill cùng. Tên field tiếng Anh giữ nguyên để AI parsing không bị phá.

Khi user đưa ảnh reference hoặc xin prompt tạo ảnh/video/storyboard, skill hoạt động như Prompt Director: phân loại intent, phân tích ảnh thành các prompt layer, xuất prompt tiếng Anh copy-paste-ready, rồi nêu rõ cần upload thêm asset nào cho từng ảnh.

---

## 8 loại thiết kế

| # | Type | Subject | Khi nào dùng | Tool |
|---|------|---------|--------------|------|
| 1 | personal-brand | Cá nhân (founder/creator) | Avatar profile, monogram, speaker cover, quote graphic cá nhân | gpt-image-2 raster |
| 2 | business-logo | Thương hiệu — logo identity | Logo primary/secondary/mark | gpt-image-2 multi-variant 3-5 hướng + disclaimer human review |
| 3 | business-campaign | Brand campaign visual | TVC still, OOH, product hero, key visual chiến dịch | gpt-image-2 raster |
| 4 | marketing-day-to-day | Operational marketing | Social post, banner ad, email header, story | gpt-image-2 raster |
| 5 | editorial | Long-form publication | Magazine cover, article hero, e-book, lookbook | gpt-image-2 raster |
| 6 | infographic | Data/plan/process viz | Roadmap, process flow, comparison chart | gpt-image-2 (text minimal, icons-focused) |
| 7 | web-mockup | UI screen sketch | Landing hero, app screen mockup | **Hybrid**: gen 1 hero image qua gpt-image-2 + recommend HTML skills cho mockup full interactive |
| 8 | quote-graphic | Quote post | "Guru post" IG, LinkedIn quote, motivational | Hybrid: gpt-image-2 background + HTML text overlay |

---

## Khi nào trigger / KHÔNG trigger

### Triggers (gọi skill này)

- "thiết kế ảnh", "làm logo", "ảnh poster", "banner campaign"
- "social post design", "infographic", "key visual", "hero web mockup"
- "ảnh truyền thông", "avatar cá nhân", "monogram", "quote graphic"
- "prompt MidJourney", "prompt DALL-E", "prompt Leonardo", "prompt Imagen"

### DO NOT INVOKE (route sang skill khác)

| Trường hợp | Route sang |
|------------|------------|
| Full interactive web UI mockup (multi-section, có behavior) | **`web-prototype`** / **`saas-landing`** / **`mobile-app`** / **`dashboard`** / **`frontend-design`** |
| Video creation (TVC, ads video, UGC) | **`04-script-video`** + Seedance/Kling/Sora dispatcher |
| Animation, motion graphics, sprite | **`motion-frames`** / **`sprite-animation`** |
| Audio asset (jingle, voiceover, SFX) | **`audio-jingle`** |
| Document layout (PDF report, e-guide multi-page) | **`digital-eguide`** / **`finance-report`** / **`magazine-poster`** |

---

## Mode detection cascade (Step 0)

Ba lớp phát hiện type theo thứ tự ưu tiên:

### Layer 1 — Keyword auto-detect

| Keyword (Vietnamese hoặc English) | Type detect |
|-----------------------------------|-------------|
| "avatar", "ảnh đại diện", "monogram", "speaker cover", "profile pic" | personal-brand |
| "logo", "wordmark", "lockup", "brand mark" | business-logo |
| "key visual", "campaign visual", "TVC still", "OOH", "product hero" | business-campaign |
| "social post", "banner ads", "email header", "story IG", "post Facebook" | marketing-day-to-day |
| "magazine cover", "article hero", "e-book cover", "editorial", "lookbook" | editorial |
| "infographic", "roadmap visual", "process flow", "comparison chart", "data viz" | infographic |
| "hero web", "landing hero image", "app screen mockup" | web-mockup |
| "quote", "quote graphic", "guru post", "motivational post" | quote-graphic |
| "ảnh reference", "giống ảnh này", "prompt master", "same style", "same composition" | giữ type hiện tại + bật Prompt Director reference mode |
| "đổi màu", "màu thương hiệu", "brand color", "thêm logo", "replace logo" | giữ type hiện tại + bật Prompt Director brand adaptation |
| "nhìn AI quá", "chưa giống", "sửa prompt", "màu sai", "font khó đọc" | giữ type hiện tại + bật Prompt Director diagnosis |

### Layer 2 — Explicit flag

User truyền `--type=business-logo` (hoặc 7 type khác) → override Layer 1.

### Layer 3 — Ambiguous fallback

Nếu không match keyword và không có flag → hỏi 1 câu duy nhất:

> "Loại thiết kế nào trong 8 lựa chọn dưới?
> 1) personal-brand (cá nhân) 2) business-logo 3) business-campaign 4) marketing-day-to-day 5) editorial 6) infographic 7) web-mockup 8) quote-graphic"

In ra transparency line trước khi tiếp tục:

```
[detect type: business-logo — keyword "logo" + "BHOP" match]
```

---

## Prompt Director mode

Bật mode này khi user đưa ảnh reference, xin master prompt, muốn đổi mặt/màu/logo, hoặc feedback ảnh ra chưa đúng. Load `references/prompt-director.md` trước khi compose prompt.

Nguyên tắc xử lý:
- **Không hỏi form dài trước.** Nếu đủ input, tạo prompt ngay và chỉ ghi phần còn thiếu ở cuối.
- **Ảnh reference = style/composition source**, không tự xem đó là ảnh mặt/logo trừ khi user nói rõ.
- **Asset thay thế phải hỏi rõ theo loại:** face reference, logo file, brand palette hex, product image, background/location, exact text.
- **Nhiều ảnh = nhiều luồng.** Đặt tên `Flow A/B/C`, nêu vai trò từng ảnh, prompt riêng, negative prompt riêng, và danh sách asset cần upload cho từng flow.
- **Prompt cuối cho image/video model mặc định tiếng Anh**; phần giải thích và yêu cầu bổ sung dùng tiếng Việt.

Output nhanh khi có reference image:

```markdown
## Luồng ảnh

| Flow | Ảnh đầu vào | Vai trò | Output |
|------|-------------|---------|--------|
| A | [file/path] | style/composition reference | master prompt |

## Copy-paste prompt — Flow A
[English prompt]

## Negative prompt / Avoid
[English avoid list]

## Cần upload thêm để cá nhân hóa Flow A
- Face reference:
- Logo:
- Brand colors:
- Exact text:
- Product/background:
```

---

## Workflow runtime — 5 bước

### Step 1 — DETECT design type

Chạy 3-layer cascade ở trên. Print `[detect type: ...]` trước khi sang Step 2.

### Step 2 — LOAD references

Load theo nhu cầu (lazy):

- `CONVENTIONS.md` — load 1 lần đầu session
- `references/prompt-director.md` — load khi có ảnh reference, master prompt, đổi mặt/màu/logo, nhiều ảnh, hoặc feedback sửa prompt
- `references/<type>.md` — load đúng file cho type vừa detect (vd `references/business-logo.md`)
- `references/brand-identity-source.md` — load khi type bắt đầu bằng `business-*`
- `references/fallback-prompt-format.md` — load khi Tier Free (xem Step 5)
- `templates/<format>.md` — load template theo format yêu cầu (vd `templates/poster.md`, `templates/social-square.md`)

### Step 3 — READ brand identity

**Business modes** (`business-logo` / `business-campaign` / `marketing-day-to-day`): BẮT BUỘC tìm brand identity. Auto-search theo priority:

1. `assets/brand/logo.{svg,png,ai}` — logo file primary
2. `brand-guideline.md` / `brand-identity.md` ở root project
3. `02-brief-chien-dich/output.md` Section "Yêu cầu thương hiệu" — campaign brief có brand mandatories
4. `prd.md` frontmatter `target_user` + Section "Visual cues" — style direction
5. `prd.md` Section 6 — features cho visual concept

Nếu thiếu cho business mode → **BLOCK** + ask user upload logo + specify palette (3 màu hex) + chỉ định font family.

**Personal modes** (`personal-brand` / `quote-graphic` cá nhân): brand identity optional. Đủ với style adjectives (3-5 từ) + color preference (3 mood color).

**Editorial / Infographic / Web-mockup**: tùy ngữ cảnh — nếu là cho brand thì làm như business, nếu là cá nhân/general thì làm như personal.

### Step 4 — ROUTE theo type

| Type | Route action |
|------|--------------|
| 1-5 (personal-brand, business-logo, business-campaign, marketing-day-to-day, editorial) | COMPOSE prompt raster → sang Step 5 |
| 6 (infographic) | COMPOSE prompt với chiến lược **text-minimal**: icons-heavy, palette branded, tối đa 2-3 number stats, KHÔNG paragraph dài → sang Step 5 |
| 7 (web-mockup hybrid) | COMPOSE 1 hero image prompt → Step 5 + print HTML skill recommendation block, exit gracefully sau khi gen hero |
| 8 (quote-graphic) | COMPOSE background image prompt (KHÔNG có text in-image) + tạo HTML overlay template (text qua HTML, KHÔNG in-image text) |

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
| **Free** | Không có API key | `docs/design/<slug>-prompt.md` với 5 platform paste-ready (DALL-E 3, MidJourney v6, Leonardo, Imagen 3, Bing/Copilot Designer) — xem `references/fallback-prompt-format.md` |
| **Pro** | `OPENAI_API_KEY` có sẵn → call gpt-image-2 direct | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata) |
| **Enterprise** | `$OD_BIN` có và executable → dispatch qua Open Design infrastructure (existing `image-poster` infra) | `docs/design/<slug>.png` + `docs/design/<slug>.md` (metadata, ghi `gen_mode: api-dispatcher`) |

**Type 7 web mockup** — sau khi gen hero image (nếu tier Pro/Enterprise), in recommendation block:

```
[NEXT STEP] Hero image gen xong. Để có mockup full interactive đa section,
chạy thêm 1 trong các skill:
  - web-prototype (general landing/marketing page)
  - saas-landing (SaaS product page)
  - mobile-app (mobile app screens)
  - dashboard (admin/analytics dashboard)
  - frontend-design (Figma-style design tokens)
```

**Type 8 quote graphic** — output 2 file:
- `docs/design/<slug>-bg.png` — background image gen qua gpt-image-2 (KHÔNG có text)
- `docs/design/<slug>.html` — HTML overlay với text trên background (text qua HTML để tránh AI méo chữ)

---

## Frontmatter schema cho output file

Mọi file metadata `docs/design/<slug>.md` PHẢI có frontmatter:

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

Tên field TIẾNG ANH — không dịch sang tiếng Việt (phá AI parsing). Body file có thể tiếng Việt phổ thông.

---

## Error handling — 8 tình huống thực tế

| Tình huống | Xử lý |
|------------|-------|
| Type ambiguous (không match keyword, không có flag) | Ask 1 câu duy nhất với 8 options (xem Layer 3 ở Step 0) |
| Business mode + brand identity thiếu | **BLOCK** + ask user upload logo + specify palette (3 hex) + font family |
| `OPENAI_API_KEY` invalid / quota exceeded khi gọi gpt-image-2 | Fallback xuống Tier Free (prompt-only) + print error line |
| Type 7 web mockup nhưng user thực sự muốn full UI multi-section | Hybrid OK: gen hero image + kèm recommend `web-prototype` (hoặc 4 skill kia) cho full mockup |
| Logo gen nhưng user chưa có brand values | Grill 3 câu: tên brand, ngành, values (3-5 từ) — mới gen được logo có hồn |
| Infographic text-heavy >5 data points | **Warn**: "Text trong AI-gen image unreliable. Recommend dùng Canva template cho infographic có nhiều text." Vẫn gen nếu user confirm. |
| Quote graphic text >50 ký tự | **Warn**: similar — recommend chỉ dùng background image + HTML overlay (đã là default cho type 8) |
| User yêu cầu format không match type vừa detect | Suggest mode tương ứng — vd "landing page banner" → mode=`marketing-day-to-day` format=`banner-hero` |

---

## Anti-patterns CẤM

- Gen logo as final output → luôn multi-variant 3-5 hướng + human review disclaimer
- Text in-image >50 ký tự — AI gen sẽ méo chữ, sai chính tả, dấu tiếng Việt vỡ
- Web mockup raster pretend là interactive — phải hybrid + recommend HTML skill
- Skip brand identity check cho business modes — output sẽ rời rạc với brand
- Output prompt chỉ có keyword (vd "logo cafe đẹp") — phải structured 5 phần: subject + composition + lighting + palette + style + negatives
- Hardcode hex màu khi project đã có brand identity file — phải đọc từ source
- Translate field name trong frontmatter sang tiếng Việt — phá AI parsing
- Gen >1 image per turn trừ trường hợp logo multi-variant
- Save prompt mà không gen image khi đang ở Tier Pro/Enterprise — lãng phí API
- Gen image mà không save metadata `.md` — mất context cho lần sau

---

## Self-test trước khi gen

Trước mỗi lần gọi gpt-image-2 hoặc xuất prompt, tự hỏi:

> "Output này có align với brand voice + identity không? Khách hàng nhìn vào có nhận ra brand không? Nếu là personal brand — có phản ánh đúng style adjectives mà user khai không?"

Nếu **không chắc 2/3 câu trên** → quay lại Step 3, re-read brand identity hoặc grill thêm 1-2 câu.

---

## Examples reference

- `examples/personal-founder-avatar.md` — Avatar founder OPA (style: confident, warm, minimal)
- `examples/bhop-fall-campaign-poster.md` — Key visual chiến dịch BHOP cafe mùa thu (palette nâu + cam)
- `examples/ai-monetization-quote-graphic.md` — Quote graphic IG cho course "AI Kiếm Tiền" (background + HTML overlay)
- `examples/opa-roadmap-infographic.md` — Infographic roadmap sản phẩm OPA (icons-heavy, text minimal)

---

## Cheat sheet — load file nào khi nào

| Khi cần | Load file |
|---------|-----------|
| Hiểu format frontmatter, output location, prompt rule chung | `CONVENTIONS.md` |
| Ảnh reference, master prompt, đổi mặt/màu/logo, prompt diagnosis | `references/prompt-director.md` |
| Compose prompt cho 1 trong 8 types | `references/<type>.md` (vd `references/business-logo.md`) |
| Business mode — tìm brand identity source | `references/brand-identity-source.md` |
| Tier Free — format prompt cho 5 platforms | `references/fallback-prompt-format.md` |
| Template format cụ thể (poster, banner, story...) | `templates/<format>.md` |
| Example output thực tế | `examples/<example-name>.md` |

---

## Plain Vietnamese policy

Skill này dùng tiếng Việt phổ thông xuyên suốt — client có thể đọc, hiểu, fill cùng AI. Technical terms (gpt-image-2, DALL-E 3, MidJourney, CTR, CPM) giữ nguyên + giải thích lần đầu. Examples dùng OPA brands realistic (BHOP cafe, Lumière agency, AI Kiếm Tiền course).
