# Marketing Day-to-Day Mode

Day-to-day operational marketing visuals — social post, banner ad, email header, blog thumbnail. High volume, template-driven, consistency với content calendar.

## Khi nào dùng marketing-day-to-day mode

**Right fit**:
- Social post (IG/FB/LinkedIn/Twitter — square 1:1 thường nhất)
- Story/Reel cover (9:16 vertical)
- Ad creative (FB Ads / Google Display / TikTok Ads)
- Email header banner (4:1 hoặc 16:9)
- Blog post thumbnail (16:9 hoặc 1.91:1)
- Promotion banner website (sale, event)

**Wrong mode — chuyển ngay**:
- Big campaign hero (key visual) → `business-campaign`
- Long-form editorial article hero → `editorial`
- Infographic data viz (chart/diagram) → `infographic`
- Quote post (text-heavy với câu trích dẫn) → `quote-graphic`

## Brand identity (REQUIRED, lighter than campaign)

- **Logo PNG transparent**: sẽ overlay nếu cần brand presence (không bake vào AI image)
- **Palette hex**: primary + 1 accent (đủ cho daily post; campaign mới cần full palette)
- **Brand style summary**: 1-line mô tả vibe (vd "cozy warm tones, hand-lettered feel", "tech minimalist with neon accent")
- **Template consistency với previous posts**: đọc 3 post gần nhất từ `01-lich-noi-dung` content calendar nếu có — gen phải khớp visual style

Nếu user không cung cấp brand style → grill 2 câu nhanh (palette + style summary) thay vì 5 câu full như business-logo. Day-to-day pace nhanh, không grill nặng.

## Section anti-patterns

- Mỗi post style khác nhau — phá brand consistency feed. Feed Instagram phải nhìn coherent khi scroll.
- Stock-photo generic look — daily post cũng cần brand character, không phải fallback Shutterstock
- Quá nhiều element trong 1 frame — 1:1 chỉ chứa được 1 focal điểm (audience scroll 1-2 giây)
- Text in-image cho caption — caption tách riêng dưới post, image chỉ visual layer. Trừ khi quote-graphic mode.
- Mismatch aspect ratio với platform — gen 16:9 dùng cho IG post (1:1) → crop xấu mất focal
- Skip "template từ previous posts" — đọc lịch nội dung calendar trước để duy trì visual consistency

## Prompt composition (template-driven, batch-able)

Per post:
- **Subject**: simple, instantly readable trong 1-2 seconds (vd "single coffee cup steam on wood table" thay vì "cafe scene with people chatting and products")
- **Composition**: centered hoặc rule of thirds — không complex layouts cho daily
- **Palette**: brand primary + accent consistent across posts (đừng đổi palette giữa các post)
- **Style**: template từ previous posts — nếu có 3 post gần nhất feel "warm cozy", post mới cũng phải warm cozy
- **Negatives**: "no text overlay (caption separate), no logo (separate brand presence), no watermark, no busy background, no AI artifacts"

Batch-able: 1 prompt template có thể swap subject keyword để gen 10 posts cho 1 tuần. Vd template "BHOP cozy series":
- Base: "Vietnamese cafe still life, [SUBJECT], wood table warm sunlight, palette #2B1810 cream #F5E6D3, shallow DOF, cozy aesthetic film grain"
- Swap SUBJECT: "single latte cup" → "croissant on plate" → "coffee beans scattered" → "barista hand pouring" → mỗi ngày 1 post nhưng feed coherent.

## Examples

- **BHOP IG daily post (1:1 square)**:
  - Topic: "tip pha cafe tại nhà #3"
  - Prompt: "Overhead flat lay Vietnamese pour-over coffee setup, ceramic dripper kettle wood board, single subject focal center, warm natural daylight, palette #2B1810 cream #F5E6D3 muted earth tones, shallow DOF, cozy aesthetic film grain"
  - Negatives: "no text, no logo, no watermark, no people, no busy elements"

- **OPA LinkedIn ad creative (16:9)**:
  - Topic: "ra mắt course AI Marketing Q3"
  - Prompt: "Modern minimalist workspace desk laptop coffee plant, clean composition rule of thirds focal left-third, soft natural window light, palette teal #00A8A8 slate #2C3E50 white, editorial premium style"
  - Negatives: "no text, no logo, no UI screenshot, no AI hands typing"

- **AI Kiếm Tiền course story (9:16 vertical)**:
  - Topic: "behind the scene team workshop"
  - Prompt: "Vertical composition Vietnamese remote team brainstorming session, warm lighting laptop screens visible blurred, palette warm orange #FF6B35 dark navy #1A1A2E, casual creative energy, shallow DOF"
  - Negatives: "no text, no logo, no readable screens, no fake AI faces"

## Grill questions

1. Platform: IG / FB / LinkedIn / TikTok / Twitter / multi-platform?
2. Format aspect: square 1:1 / vertical 9:16 / horizontal 16:9 / email banner 4:1?
3. Brand consistent với `01-lich-noi-dung` calendar có sẵn không? Path để đọc 3 post gần nhất?
4. Topic 1-line của post (vd "tip prompt engineering #3", "behind the scene OPA team workshop")?
5. CTA visible cần show trong image không (vd arrow pointing to caption, hoặc tách rời để caption handle CTA)?
