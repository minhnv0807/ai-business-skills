# Web Mockup Mode (Hybrid Routing)

**Approach hybrid** — gen 1 hero image qua gpt-image-2 + ALWAYS recommend HTML skills cho mockup full interactive. Web-mockup raster pretend là interactive UI là anti-pattern lớn nhất — text méo, không clickable, không real CSS.

## Khi nào dùng web-mockup mode

**Right fit**:
- User muốn xem visual concept cho landing page / app screen — chỉ cần mood, KHÔNG cần interactive
- Hero section visual để dispatch sang HTML skill sau đó
- Pitch deck slide minh họa "landing page sẽ trông như thế này"
- Brainstorm visual direction trước khi build mockup full

**Wrong mode — chuyển ngay (route sang HTML skill)**:
- Full interactive multi-section landing page → `web-prototype`
- SaaS product landing page có nav + hero + features + pricing + CTA → `saas-landing`
- Mobile app screens với phone frame + UI components → `mobile-app`
- Admin/analytics dashboard với KPI cards + charts + sidebar → `dashboard`
- Design system mockup có tokens + components → `frontend-design:frontend-design`
- Multi-screen flow user journey → recommend xài 2 skills song song

## Strategy hybrid 2 bước

### Bước 1 — Gen 1 hero image qua gpt-image-2

Chỉ gen **1 hero section visual** — 16:9 hero image cho landing page hero block, KHÔNG gen entire layout.

Tại sao chỉ 1 hero, không gen full layout:
- AI gen entire layout = text méo, buttons fake, không clickable
- AI gen UI elements (nav bar, cards, forms) = không match real CSS, designer sau phải redo
- AI gen hero image làm visual focal point thì OK — hình ảnh trang trí, không phải UI

### Bước 2 — In recommendation block dispatch sang HTML skill

Sau khi gen hero image, ALWAYS print message liệt kê HTML skills:

```
[NEXT STEP] Hero image gen xong. Để có mockup full interactive đa section,
chạy thêm 1 trong các skill:

  - web-prototype                  General desktop web prototype
                                   (landing/marketing/docs/SaaS — default)
  - saas-landing                   SaaS landing page (nav + hero + features
                                   + pricing + CTA)
  - mobile-app                     Mobile app screens (iPhone/Android frame)
  - dashboard                      Admin/analytics dashboard (KPI + charts)
  - frontend-design:frontend-design  Design system mockup (tokens + components)

Hero image vừa gen có thể paste vào HTML mockup làm background hero block.
```

## Section anti-patterns

- Pretend AI-gen web mockup = real mockup — KHÔNG interactive, KHÔNG real CSS, dev phải redo từ đầu
- Skip HTML skill recommendation — user không biết route, kết thúc với 1 ảnh raster không dùng được
- Gen entire layout via image — text méo, nav bar fake, buttons không clickable, mất thời gian
- Gen UI elements chi tiết (form fields, dropdown, modal) trong AI image — không scalable, không edit được
- Output 1 ảnh duy nhất gọi là "mockup hoàn chỉnh" — sai expectation user
- Skip nói rõ giới hạn — phải print disclaimer "hero image = visual concept, không phải mockup interactive"

## Prompt composition cho hero only

- **Subject**: hero section visual với 1 strong concept (abstract OK, conceptual minh họa value proposition) — không phải UI screen
- **Composition**: cinematic 16:9 với focal point off-center (thirds rule), generous space cho text overlay sẽ nằm bên trên qua HTML
- **Lighting**: clean modern key+fill hoặc dramatic side light tùy mood
- **Palette**: brand color nếu có; nếu personal/general thì palette match style adjectives
- **Style anchors**: "clean modern web hero", "cinematic composition", "minimalist visual focal point", "editorial illustration" hoặc "photographic hero" tùy direction
- **KHÔNG render UI elements in-frame**: không nav bar, không buttons, không form fields, không text overlays — HTML lo phần đó

Negatives bắt buộc: "no UI buttons, no navigation bars, no text overlays, no form fields, no menu items, no dropdown, no modal windows, no warped text, no fake UI elements, no full landing page layout"

## Output structure

Khi tier Pro/Enterprise:
- `docs/design/<slug>-hero.png` — hero image raster gen từ gpt-image-2
- `docs/design/<slug>.md` — metadata frontmatter + section "Next Steps" trỏ user sang HTML skill (xem block recommendation ở trên)

Khi tier Free:
- `docs/design/<slug>-hero-prompt.md` — prompt cho 5 platforms (xem `fallback-prompt-format.md`)
- Vẫn include "Next Steps" block recommendation HTML skills

## Examples

- **OPA landing hero** — abstract conceptual visual: circuit pattern flowing into human silhouette, brand teal #00A8A8 + slate #2C3E50, cinematic 16:9 dramatic side light, generous space right side cho headline overlay → recommend dispatch `saas-landing` sau
- **BHOP café web hero** — warm photographic: coffee cup steam rising at golden hour, café district 3 Saigon background bokeh, 50mm shallow DOF, palette earth brown + cream, focal point left thirds → recommend dispatch `web-prototype` sau
- **AI Kiếm Tiền course hero** — minimal symbolic illustration: open laptop + sun rays + money plant growing from screen, soft cream paper texture, palette muted green + gold accent → recommend dispatch `saas-landing` sau

## Grill questions

1. Subject hero (1 concept, 1-line description — vd "AI flow into human silhouette", "coffee cup steam Saigon café")?
2. Brand vibe — 3-5 adjectives (vd "clean modern professional", "warm artisanal organic")?
3. Mobile/desktop primary? (desktop = 16:9 hero; mobile = 9:16 hero crop hoặc 4:5)
4. Brand palette có hex codes không, hay gợi ý theo vibe?
5. HTML skill target dispatch nào sau khi gen hero — `web-prototype` (general) / `saas-landing` (SaaS) / `mobile-app` / `dashboard` / `frontend-design`?
