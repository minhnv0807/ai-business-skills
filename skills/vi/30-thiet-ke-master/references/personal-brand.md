# Personal Brand Mode

Thiết kế hình ảnh cá nhân — founder, creator, freelancer, coach. Stake thấp hơn business-logo nhưng vẫn cần character + position cues rõ ràng.

## Khi nào dùng personal-brand mode

**Right fit**:
- Avatar profile (LinkedIn, Twitter, IG) — chuyên nghiệp, recognizable
- Personal monogram — initials/symbol đơn giản
- Speaker keynote slide cover
- Personal website hero image
- Quote graphic cho "guru post" cá nhân (visual layer — text qua quote-graphic mode)
- AI avatar static (1 ảnh tĩnh — KHÔNG phải video; nếu cần video dùng `24-ai-avatar-production`)

**Wrong mode — chuyển ngay**:
- Logo cho công ty → `business-logo`
- Visual cho campaign brand → `business-campaign`
- Video avatar / talking head → `24-ai-avatar-production`
- Mockup website cá nhân full → `web-mockup`

## Brand identity yêu cầu (lighter than business)

Cần ít nhất 3 trong 4 inputs:

- **Style adjectives** 3-5 từ (vd "warm professional", "creative casual", "tech minimalist")
- **Color preference** 1-3 màu hoặc neutral palette (b/w + 1 accent)
- **Personal photo path** (optional — chỉ cần nếu muốn resemblance cao, vd avatar match founder thật)
- **Position keyword** ngành/vai trò (vd "AI marketing strategist", "fitness coach", "indie developer")

Nếu user không cung cấp style hint → grill 3 câu trước khi gen: ngành/vai trò, 3 adjectives, màu yêu thích.

## Section anti-patterns

- Avatar generic stock-photo-looking — phải có character + position cues (vd coach phải có vibe coach, dev phải có vibe dev)
- Monogram quá detail (>3 elements) — monogram simple = scalable từ favicon đến billboard
- Quote graphic với text trong AI gen image — luôn dùng HTML overlay cho text accuracy (xem `quote-graphic` mode)
- Skip "position keyword" — model không có cue để render ngành nào, ra avatar chung chung
- Avatar quay lưng / che mặt — recognizable = nhìn rõ mặt 3/4 hoặc front

## Prompt composition specifics

Cho personal avatar:
- **Subject**: portrait close-up hoặc 3/4 angle, eye-level, character matches position keyword (vd "AI marketing strategist" → smart casual blazer, holding laptop, modern workspace background)
- **Lighting**: natural daylight warm (approachable) hoặc studio key+rim (professional/authority)
- **Palette**: muted sophisticated (avoid neon, garish) — trừ khi position là "creative bold"
- **Style**: photographic realistic 85mm portrait shallow DOF — hoặc editorial illustration nếu personal brand creative/artistic

Negatives bắt buộc: "no extra fingers, no warped face, no logo placeholders, no text in frame, no AI-slop typography, no plastic skin"

## Examples

- **Minh — OPA founder**: "AI marketing strategist Vietnamese male early-30s, smart casual navy blazer, modern Saigon coworking background soft bokeh, warm natural daylight, 85mm portrait shallow DOF, sophisticated muted palette" → 1:1 LinkedIn avatar
- **Coach Lan — fitness coach**: "Vietnamese female fitness coach late-20s, athletic wear, gym background blur, confident smile, golden hour studio light, energetic warm tones" → 9:16 IG story cover

## Grill questions

1. Vai trò + ngành 1-line (vd "AI marketing strategist", "fitness coach", "indie developer")?
2. 3-5 adjectives mô tả personal brand voice (vd "warm + analytical + bold")?
3. Color preference (neutral b/w + 1 accent? hoặc 2-3 brand colors hex)?
4. Có ảnh gốc reference không? (path file để model match resemblance)
5. Format cần: avatar profile (1:1), keynote cover (16:9), quote post (1:1), story (9:16)?
