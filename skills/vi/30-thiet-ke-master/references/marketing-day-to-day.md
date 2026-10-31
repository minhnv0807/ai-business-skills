# Marketing Day-to-Day Mode

Day-to-day operational marketing visuals — social post, banner ad, email header, blog thumbnail. High volume, template-driven, consistency voi content calendar.

## Khi nao dung marketing-day-to-day mode

**Right fit**:
- Social post (IG/FB/LinkedIn/Twitter — square 1:1 thuong nhat)
- Story/Reel cover (9:16 vertical)
- Ad creative (FB Ads / Google Display / TikTok Ads)
- Email header banner (4:1 hoac 16:9)
- Blog post thumbnail (16:9 hoac 1.91:1)
- Promotion banner website (sale, event)

**Wrong mode — chuyen ngay**:
- Big campaign hero (key visual) → `business-campaign`
- Long-form editorial article hero → `editorial`
- Infographic data viz (chart/diagram) → `infographic`
- Quote post (text-heavy voi cau trich dan) → `quote-graphic`

## Brand identity (REQUIRED, lighter than campaign)

- **Logo PNG transparent**: se overlay neu can brand presence (khong bake vao AI image)
- **Palette hex**: primary + 1 accent (du cho daily post; campaign moi can full palette)
- **Brand style summary**: 1-line mo ta vibe (vd "cozy warm tones, hand-lettered feel", "tech minimalist with neon accent")
- **Template consistency voi previous posts**: doc 3 post gan nhat tu `01-lich-noi-dung` content calendar neu co — gen phai khop visual style

Neu user khong cung cap brand style → grill 2 cau nhanh (palette + style summary) thay vi 5 cau full nhu business-logo. Day-to-day pace nhanh, khong grill nang.

## Section anti-patterns

- Moi post style khac nhau — pha brand consistency feed. Feed Instagram phai nhin coherent khi scroll.
- Stock-photo generic look — daily post cung can brand character, khong phai fallback Shutterstock
- Qua nhieu element trong 1 frame — 1:1 chi chua duoc 1 focal diem (audience scroll 1-2 giay)
- Text in-image cho caption — caption tach rieng duoi post, image chi visual layer. Tru khi quote-graphic mode.
- Mismatch aspect ratio voi platform — gen 16:9 dung cho IG post (1:1) → crop xau mat focal
- Skip "template tu previous posts" — doc lich noi dung calendar truoc de duy tri visual consistency

## Prompt composition (template-driven, batch-able)

Per post:
- **Subject**: simple, instantly readable trong 1-2 seconds (vd "single coffee cup steam on wood table" thay vi "cafe scene with people chatting and products")
- **Composition**: centered hoac rule of thirds — khong complex layouts cho daily
- **Palette**: brand primary + accent consistent across posts (dung doi palette giua cac post)
- **Style**: template tu previous posts — neu co 3 post gan nhat feel "warm cozy", post moi cung phai warm cozy
- **Negatives**: "no text overlay (caption separate), no logo (separate brand presence), no watermark, no busy background, no AI artifacts"

Batch-able: 1 prompt template co the swap subject keyword de gen 10 posts cho 1 tuan. Vd template "BHOP cozy series":
- Base: "Vietnamese cafe still life, [SUBJECT], wood table warm sunlight, palette #2B1810 cream #F5E6D3, shallow DOF, cozy aesthetic film grain"
- Swap SUBJECT: "single latte cup" → "croissant on plate" → "coffee beans scattered" → "barista hand pouring" → moi ngay 1 post nhung feed coherent.

## Examples

- **BHOP IG daily post (1:1 square)**:
  - Topic: "tip pha cafe tai nha #3"
  - Prompt: "Overhead flat lay Vietnamese pour-over coffee setup, ceramic dripper kettle wood board, single subject focal center, warm natural daylight, palette #2B1810 cream #F5E6D3 muted earth tones, shallow DOF, cozy aesthetic film grain"
  - Negatives: "no text, no logo, no watermark, no people, no busy elements"

- **OPA LinkedIn ad creative (16:9)**:
  - Topic: "ra mat course AI Marketing Q3"
  - Prompt: "Modern minimalist workspace desk laptop coffee plant, clean composition rule of thirds focal left-third, soft natural window light, palette teal #00A8A8 slate #2C3E50 white, editorial premium style"
  - Negatives: "no text, no logo, no UI screenshot, no AI hands typing"

- **AI Kiem Tien course story (9:16 vertical)**:
  - Topic: "behind the scene team workshop"
  - Prompt: "Vertical composition Vietnamese remote team brainstorming session, warm lighting laptop screens visible blurred, palette warm orange #FF6B35 dark navy #1A1A2E, casual creative energy, shallow DOF"
  - Negatives: "no text, no logo, no readable screens, no fake AI faces"

## Grill questions

1. Platform: IG / FB / LinkedIn / TikTok / Twitter / multi-platform?
2. Format aspect: square 1:1 / vertical 9:16 / horizontal 16:9 / email banner 4:1?
3. Brand consistent voi `01-lich-noi-dung` calendar co san khong? Path de doc 3 post gan nhat?
4. Topic 1-line cua post (vd "tip prompt engineering #3", "behind the scene OPA team workshop")?
5. CTA visible can show trong image khong (vd arrow pointing to caption, hoac tach roi de caption handle CTA)?
