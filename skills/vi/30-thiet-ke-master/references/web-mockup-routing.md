# Web Mockup Mode (Hybrid Routing)

**Approach hybrid** — gen 1 hero image qua gpt-image-2 + ALWAYS recommend HTML skills cho mockup full interactive. Web-mockup raster pretend la interactive UI la anti-pattern lon nhat — text meo, khong clickable, khong real CSS.

## Khi nao dung web-mockup mode

**Right fit**:
- User muon xem visual concept cho landing page / app screen — chi can mood, KHONG can interactive
- Hero section visual de dispatch sang HTML skill sau do
- Pitch deck slide minh hoa "landing page se trong nhu the nay"
- Brainstorm visual direction truoc khi build mockup full

**Wrong mode — chuyen ngay (route sang HTML skill)**:
- Full interactive multi-section landing page → `web-prototype`
- SaaS product landing page co nav + hero + features + pricing + CTA → `saas-landing`
- Mobile app screens voi phone frame + UI components → `mobile-app`
- Admin/analytics dashboard voi KPI cards + charts + sidebar → `dashboard`
- Design system mockup co tokens + components → `frontend-design:frontend-design`
- Multi-screen flow user journey → recommend xai 2 skills song song

## Strategy hybrid 2 buoc

### Buoc 1 — Gen 1 hero image qua gpt-image-2

Chi gen **1 hero section visual** — 16:9 hero image cho landing page hero block, KHONG gen entire layout.

Tai sao chi 1 hero, khong gen full layout:
- AI gen entire layout = text meo, buttons fake, khong clickable
- AI gen UI elements (nav bar, cards, forms) = khong match real CSS, designer sau phai redo
- AI gen hero image lam visual focal point thi OK — hinh anh trang tri, khong phai UI

### Buoc 2 — In recommendation block dispatch sang HTML skill

Sau khi gen hero image, ALWAYS print message liet ke HTML skills:

```
[NEXT STEP] Hero image gen xong. De co mockup full interactive da section,
chay them 1 trong cac skill:

  - web-prototype                  General desktop web prototype
                                   (landing/marketing/docs/SaaS — default)
  - saas-landing                   SaaS landing page (nav + hero + features
                                   + pricing + CTA)
  - mobile-app                     Mobile app screens (iPhone/Android frame)
  - dashboard                      Admin/analytics dashboard (KPI + charts)
  - frontend-design:frontend-design  Design system mockup (tokens + components)

Hero image vua gen co the paste vao HTML mockup lam background hero block.
```

## Section anti-patterns

- Pretend AI-gen web mockup = real mockup — KHONG interactive, KHONG real CSS, dev phai redo tu dau
- Skip HTML skill recommendation — user khong biet route, ket thuc voi 1 anh raster khong dung duoc
- Gen entire layout via image — text meo, nav bar fake, buttons khong clickable, mat thoi gian
- Gen UI elements chi tiet (form fields, dropdown, modal) trong AI image — khong scalable, khong edit duoc
- Output 1 anh duy nhat goi la "mockup hoan chinh" — sai expectation user
- Skip noi ro gioi han — phai print disclaimer "hero image = visual concept, khong phai mockup interactive"

## Prompt composition cho hero only

- **Subject**: hero section visual voi 1 strong concept (abstract OK, conceptual minh hoa value proposition) — khong phai UI screen
- **Composition**: cinematic 16:9 voi focal point off-center (thirds rule), generous space cho text overlay se nam ben tren qua HTML
- **Lighting**: clean modern key+fill hoac dramatic side light tuy mood
- **Palette**: brand color neu co; neu personal/general thi palette match style adjectives
- **Style anchors**: "clean modern web hero", "cinematic composition", "minimalist visual focal point", "editorial illustration" hoac "photographic hero" tuy direction
- **KHONG render UI elements in-frame**: khong nav bar, khong buttons, khong form fields, khong text overlays — HTML lo phan do

Negatives bat buoc: "no UI buttons, no navigation bars, no text overlays, no form fields, no menu items, no dropdown, no modal windows, no warped text, no fake UI elements, no full landing page layout"

## Output structure

Khi tier Pro/Enterprise:
- `docs/design/<slug>-hero.png` — hero image raster gen tu gpt-image-2
- `docs/design/<slug>.md` — metadata frontmatter + section "Next Steps" tro user sang HTML skill (xem block recommendation o tren)

Khi tier Free:
- `docs/design/<slug>-hero-prompt.md` — prompt cho 5 platforms (xem `fallback-prompt-format.md`)
- Van include "Next Steps" block recommendation HTML skills

## Examples

- **OPA landing hero** — abstract conceptual visual: circuit pattern flowing into human silhouette, brand teal #00A8A8 + slate #2C3E50, cinematic 16:9 dramatic side light, generous space right side cho headline overlay → recommend dispatch `saas-landing` sau
- **BHOP cafe web hero** — warm photographic: coffee cup steam rising at golden hour, cafe district 3 Saigon background bokeh, 50mm shallow DOF, palette earth brown + cream, focal point left thirds → recommend dispatch `web-prototype` sau
- **AI Kiem Tien course hero** — minimal symbolic illustration: open laptop + sun rays + money plant growing from screen, soft cream paper texture, palette muted green + gold accent → recommend dispatch `saas-landing` sau

## Grill questions

1. Subject hero (1 concept, 1-line description — vd "AI flow into human silhouette", "coffee cup steam Saigon cafe")?
2. Brand vibe — 3-5 adjectives (vd "clean modern professional", "warm artisanal organic")?
3. Mobile/desktop primary? (desktop = 16:9 hero; mobile = 9:16 hero crop hoac 4:5)
4. Brand palette co hex codes khong, hay goi y theo vibe?
5. HTML skill target dispatch nao sau khi gen hero — `web-prototype` (general) / `saas-landing` (SaaS) / `mobile-app` / `dashboard` / `frontend-design`?
