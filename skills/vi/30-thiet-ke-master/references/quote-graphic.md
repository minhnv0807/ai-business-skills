# Quote Graphic Mode (Hybrid)

**Hybrid approach** — gpt-image-2 gen background image (mood + brand palette, KHÔNG có text in-image) + HTML template overlay text on top (CSS positioning, real font, accuracy 100%). Tránh hoàn toàn text méo / sai chính tả / dấu tiếng Việt vỡ.

## Khi nào dùng quote-graphic mode

**Right fit**:
- "Guru post" IG/LinkedIn — quote 1-2 dòng + author handle + brand logo
- Motivational social post — quote dài 2-3 dòng + tagline
- Speaker quote pull-out — câu nói nổi bật từ talk + speaker name
- Course/book promotion với 1 quote highlight + CTA subtle
- Personal brand quote post — câu nói cá nhân founder/coach + handle

**Wrong mode — chuyển ngay**:
- Quote layout multi-quote carousel (>3 quotes) → `social-carousel`
- Article hero có quote pull-out kèm body text → `editorial`
- Magazine cover quote → `editorial` magazine cover format
- Pricing page quote testimonial → để skill HTML mockup lo (vd `saas-landing`)
- Quote trong slide deck → `html-ppt-*` skills

## Strategy hybrid 3 bước

### Bước 1 — Gen 1 background image qua gpt-image-2

Background mood-setting, KHÔNG có text, KHÔNG có subject focal cạnh tranh với text overlay sau:

- Abstract / textural / minimal composition
- Brand palette secondary (để brand primary thành text color)
- Soft contrast cao đủ cho text readable
- Output `docs/design/<slug>-bg.png`

### Bước 2 — Tạo HTML template overlay text

HTML file với CSS positioning text trên background:
- Quote text (font serif large, vd Playfair Display / Garamond)
- Author handle (font sans small, bottom corner)
- Brand logo small corner (path từ brand identity)
- Brand color text + accent line decoration

Output `docs/design/<slug>.html`

### Bước 3 (optional) — Export PNG bằng puppeteer/screenshot

User có thể chạy puppeteer hoặc Playwright screenshot để export final PNG nếu cần asset raster cho IG/FB.

## Section anti-patterns

- Gen quote text trong AI image — méo, sai chính tả, dấu tiếng Việt vỡ (đặc biệt "ư", "ơ", "đ")
- Skip background image, all text HTML — mất visual interest, look generic boring
- Background quá busy (subject focal, faces, detailed scene) — text overlay không readable
- Background palette saturated cao — text khó đọc, contrast kém
- Font script/decorative cho quote dài — khó đọc, mất professional
- Quote dài >50 từ — không fit social post 1:1, recommend cắt ngắn hoặc split carousel
- Author handle thiếu — không trace ngược về account
- Brand logo quá lớn — quote là focus, logo subtle corner
- Skip brand color — output rời rạc với brand chính

## Prompt composition cho background

- **Subject**: abstract / textural background — KHÔNG có subject focal (không people, không product, không animal) cạnh tranh visual với text
- **Composition**: full-bleed texture hoặc soft gradient có direction; generous center hoặc left negative space cho text overlay sẽ nằm
- **Lighting**: soft moody — contrast vừa đủ với text color (vd background dark warm → text cream; background light cream → text dark warm)
- **Palette**: brand secondary color (let primary text color contrast). Nếu chưa có brand → gợi ý dựa style adjectives (vd "warm intellectual" → cream paper + soft brown; "tech minimalist" → charcoal + cool slate)
- **Style anchors**: "abstract textural background", "soft gradient", "paper texture", "minimalist composition", "moody atmospheric", "editorial backdrop", "matte finish"

Negatives bắt buộc: "no text, no letters, no typography, no faces, no people, no detailed subject, no logos, no busy elements, no realistic objects competing with text overlay, no warped letters, no spelling"

## HTML template provide

Template HTML output có:

```
- Quote text         font serif large (vd Playfair Display 56px / Garamond 48px)
                     positioned center hoặc left thirds
                     color: brand primary contrast với bg
- Author handle      font sans small (vd Inter 16px)
                     positioned bottom-left corner
                     color: brand accent (subtle)
- Brand logo         path `assets/brand/logo.svg` hoặc PNG
                     positioned top-right corner OR bottom-right
                     size 48-64px max
- Accent line        1px hoặc 2px line decoration (brand accent color)
                     positioned dưới quote text (1 line ngắn)
- Padding generous   min 80px each side cho 1:1 1080x1080
```

CSS sử dụng real font (Google Fonts hoặc system serif fallback) — accuracy 100%, dấu tiếng Việt render đúng.

## Output structure

```
docs/design/<slug>-bg.png       background gen từ gpt-image-2 (NO text)
docs/design/<slug>.html         HTML overlay với text + logo + accent
docs/design/<slug>.md           metadata frontmatter
```

Optionally:
```
docs/design/<slug>-final.png    nếu export bằng puppeteer/Playwright
```

## Examples

- **OPA founder quote** — quote "AI không thay thế con người. Con người dùng AI thay thế con người không dùng AI." background: abstract circuit pattern soft teal gradient #00A8A8 → #2C3E50 fade, no subject; HTML overlay: Playfair 48px center cream text + handle "@minhpc" bottom-left + OPA logo top-right + teal accent line → 1:1 LinkedIn post
- **BHOP café quote IG** — quote "Cà phê ngon nhất là cà phê uống chậm." background: warm paper texture sepia tone với coffee ring stains subtle, no objects focal; HTML overlay: Garamond 52px center earth brown #2B1810 + handle "@bhopcafe" + logo bottom-right → 1:1 IG post
- **AI Kiếm Tiền course quote** — quote "Đừng đợi giỏi AI mới kiếm tiền. Bắt đầu kiếm tiền sẽ giỏi AI." background: minimal cream paper với soft gold ray gradient bottom, no focal; HTML overlay: serif 48px center dark + handle + small course logo → 1:1 IG carousel slide

## Grill questions

1. Quote text exact (viết chính xác từng chữ, có dấu tiếng Việt đầy đủ)?
2. Author handle (vd "@minhpc", "@bhopcafe", "@aikiemtien_course") — đặt corner nào?
3. Primary palette text color + bg color contrast (vd "text cream trên bg dark warm" hoặc "text dark brown trên bg cream paper")?
4. Brand logo path (vd `assets/brand/logo.svg`) — có không, đặt corner nào?
5. Mood background: abstract minimal / paper texture / soft gradient / subtle pattern?
6. Format final: 1:1 IG/LinkedIn post, 4:5 IG portrait, 9:16 IG/FB story?
