# Quote Graphic Mode (Hybrid)

**Hybrid approach** — gpt-image-2 gen background image (mood + brand palette, KHONG co text in-image) + HTML template overlay text on top (CSS positioning, real font, accuracy 100%). Tranh hoan toan text meo / sai chinh ta / dau tieng Viet vo.

## Khi nao dung quote-graphic mode

**Right fit**:
- "Guru post" IG/LinkedIn — quote 1-2 dong + author handle + brand logo
- Motivational social post — quote dai 2-3 dong + tagline
- Speaker quote pull-out — cau noi noi bat tu talk + speaker name
- Course/book promotion voi 1 quote highlight + CTA subtle
- Personal brand quote post — cau noi ca nhan founder/coach + handle

**Wrong mode — chuyen ngay**:
- Quote layout multi-quote carousel (>3 quotes) → `social-carousel`
- Article hero co quote pull-out kem body text → `editorial`
- Magazine cover quote → `editorial` magazine cover format
- Pricing page quote testimonial → de skill HTML mockup lo (vd `saas-landing`)
- Quote trong slide deck → `html-ppt-*` skills

## Strategy hybrid 3 buoc

### Buoc 1 — Gen 1 background image qua gpt-image-2

Background mood-setting, KHONG co text, KHONG co subject focal canh tranh voi text overlay sau:

- Abstract / textural / minimal composition
- Brand palette secondary (de brand primary thanh text color)
- Soft contrast cao du cho text readable
- Output `docs/design/<slug>-bg.png`

### Buoc 2 — Tao HTML template overlay text

HTML file voi CSS positioning text tren background:
- Quote text (font serif large, vd Playfair Display / Garamond)
- Author handle (font sans small, bottom corner)
- Brand logo small corner (path tu brand identity)
- Brand color text + accent line decoration

Output `docs/design/<slug>.html`

### Buoc 3 (optional) — Export PNG bang puppeteer/screenshot

User co the chay puppeteer hoac Playwright screenshot de export final PNG neu can asset raster cho IG/FB.

## Section anti-patterns

- Gen quote text trong AI image — méo, sai chính tả, dấu tiếng Việt vỡ (đặc biệt "ư", "ơ", "đ")
- Skip background image, all text HTML — mat visual interest, look generic boring
- Background qua busy (subject focal, faces, detailed scene) — text overlay khong readable
- Background palette saturated cao — text kho doc, contrast kem
- Font script/decorative cho quote dai — kho doc, mat professional
- Quote dai >50 tu — khong fit social post 1:1, recommend cat ngan hoac split carousel
- Author handle thieu — khong trace nguoc ve account
- Brand logo qua lon — quote la focus, logo subtle corner
- Skip brand color — output roi rac voi brand chinh

## Prompt composition cho background

- **Subject**: abstract / textural background — KHONG co subject focal (khong people, khong product, khong animal) canh tranh visual voi text
- **Composition**: full-bleed texture hoac soft gradient co direction; generous center hoac left negative space cho text overlay se nam
- **Lighting**: soft moody — contrast vua du voi text color (vd background dark warm → text cream; background light cream → text dark warm)
- **Palette**: brand secondary color (let primary text color contrast). Neu chua co brand → goi y dua style adjectives (vd "warm intellectual" → cream paper + soft brown; "tech minimalist" → charcoal + cool slate)
- **Style anchors**: "abstract textural background", "soft gradient", "paper texture", "minimalist composition", "moody atmospheric", "editorial backdrop", "matte finish"

Negatives bat buoc: "no text, no letters, no typography, no faces, no people, no detailed subject, no logos, no busy elements, no realistic objects competing with text overlay, no warped letters, no spelling"

## HTML template provide

Template HTML output co:

```
- Quote text         font serif large (vd Playfair Display 56px / Garamond 48px)
                     positioned center hoac left thirds
                     color: brand primary contrast voi bg
- Author handle      font sans small (vd Inter 16px)
                     positioned bottom-left corner
                     color: brand accent (subtle)
- Brand logo         path `assets/brand/logo.svg` hoac PNG
                     positioned top-right corner OR bottom-right
                     size 48-64px max
- Accent line        1px hoac 2px line decoration (brand accent color)
                     positioned duoi quote text (1 line ngan)
- Padding generous   min 80px each side cho 1:1 1080x1080
```

CSS su dung real font (Google Fonts hoac system serif fallback) — accuracy 100%, dau tieng Viet render dung.

## Output structure

```
docs/design/<slug>-bg.png       background gen tu gpt-image-2 (NO text)
docs/design/<slug>.html         HTML overlay voi text + logo + accent
docs/design/<slug>.md           metadata frontmatter
```

Optionally:
```
docs/design/<slug>-final.png    neu export bang puppeteer/Playwright
```

## Examples

- **OPA founder quote** — quote "AI không thay thế con người. Con người dùng AI thay thế con người không dùng AI." background: abstract circuit pattern soft teal gradient #00A8A8 → #2C3E50 fade, no subject; HTML overlay: Playfair 48px center cream text + handle "@minhpc" bottom-left + OPA logo top-right + teal accent line → 1:1 LinkedIn post
- **BHOP café quote IG** — quote "Cà phê ngon nhất là cà phê uống chậm." background: warm paper texture sepia tone với coffee ring stains subtle, no objects focal; HTML overlay: Garamond 52px center earth brown #2B1810 + handle "@bhopcafe" + logo bottom-right → 1:1 IG post
- **AI Kiếm Tiền course quote** — quote "Đừng đợi giỏi AI mới kiếm tiền. Bắt đầu kiếm tiền sẽ giỏi AI." background: minimal cream paper với soft gold ray gradient bottom, no focal; HTML overlay: serif 48px center dark + handle + small course logo → 1:1 IG carousel slide

## Grill questions

1. Quote text exact (viet chinh xac tung chu, co dau tieng Viet day du)?
2. Author handle (vd "@minhpc", "@bhopcafe", "@aikiemtien_course") — dat corner nao?
3. Primary palette text color + bg color contrast (vd "text cream tren bg dark warm" hoac "text dark brown tren bg cream paper")?
4. Brand logo path (vd `assets/brand/logo.svg`) — co khong, dat corner nao?
5. Mood background: abstract minimal / paper texture / soft gradient / subtle pattern?
6. Format final: 1:1 IG/LinkedIn post, 4:5 IG portrait, 9:16 IG/FB story?
