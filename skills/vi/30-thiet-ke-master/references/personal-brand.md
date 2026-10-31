# Personal Brand Mode

Thiet ke hinh anh ca nhan — founder, creator, freelancer, coach. Stake thap hon business-logo nhung van can character + position cues ro rang.

## Khi nao dung personal-brand mode

**Right fit**:
- Avatar profile (LinkedIn, Twitter, IG) — chuyen nghiep, recognizable
- Personal monogram — initials/symbol don gian
- Speaker keynote slide cover
- Personal website hero image
- Quote graphic cho "guru post" ca nhan (visual layer — text qua quote-graphic mode)
- AI avatar static (1 anh tinh — KHONG phai video; neu can video dung `24-ai-avatar-production`)
- Reference-to-avatar prompt — user dua anh style/mood va muon bien thanh avatar ca nhan co mat, mau, logo rieng

**Wrong mode — chuyen ngay**:
- Logo cho cong ty → `business-logo`
- Visual cho campaign brand → `business-campaign`
- Video avatar / talking head → `24-ai-avatar-production`
- Mockup website ca nhan full → `web-mockup`

## Brand identity yeu cau (lighter than business)

Can it nhat 3 trong 4 inputs:

- **Style adjectives** 3-5 tu (vd "warm professional", "creative casual", "tech minimalist")
- **Color preference** 1-3 mau hoac neutral palette (b/w + 1 accent)
- **Personal photo path** (optional — chi can neu muon resemblance cao, vd avatar match founder that)
- **Position keyword** nganh/vai tro (vd "AI marketing strategist", "fitness coach", "indie developer")

Neu user khong cung cap style hint → grill 3 cau truoc khi gen: nganh/vai tro, 3 adjectives, mau yeu thich.

## Reference image intake

Khi user dua anh, phan loai tung anh truoc khi viet prompt:

| Loai anh | Dung de lam gi | Yeu cau ro |
|----------|----------------|------------|
| **Style reference** | Lay bo cuc, lighting, mood, palette, lens | Co the la anh bat ky; khong dung de preserve mat neu user khong noi |
| **Face reference** | Thay mat / giu identity | 1-3 anh mat ro, anh sang tot, khong filter, uu tien front + 3/4 |
| **Logo/mark** | Gan nhan brand ca nhan, monogram, watermark | PNG nen trong/SVG; neu chua co dung text placeholder |
| **Palette reference** | Lay mau brand ca nhan | Hex code uu tien; neu chi co anh, trich mau chinh va hoi user confirm |
| **Environment reference** | Dung phong/boi canh/san khau/office | Ghi ro subject se dung o vi tri nao trong boi canh |

Neu user upload nhieu anh:
- Tao **Flow A/B/C** neu moi anh la mot style direction rieng.
- Gop chung neu anh co vai tro khac nhau cho cung 1 output: style ref + face ref + logo + palette.
- Voi moi flow, ghi: `Anh nao dung lam style`, `anh nao dung lam face`, `asset nao con thieu`, `prompt rieng`, `negative prompt rieng`.

## Personal brand prompt director output

```markdown
## Luong personal brand

| Flow | Style ref | Face ref | Brand asset | Output |
|------|-----------|----------|-------------|--------|
| A | [path/none] | [path/needed] | [logo/palette/needed] | avatar/profile visual |

## Copy-paste prompt — Flow A
[English prompt preserving the referenced subject identity and applying the chosen style]

## Can upload them
- Face reference:
- Logo/monogram:
- Brand colors:
- Outfit/background:
```

## Section anti-patterns

- Avatar generic stock-photo-looking — phai co character + position cues (vd coach phai co vibe coach, dev phai co vibe dev)
- Monogram qua detail (>3 elements) — monogram simple = scalable tu favicon den billboard
- Quote graphic voi text trong AI gen image — luon dung HTML overlay cho text accuracy (xem `quote-graphic` mode)
- Skip "position keyword" — model khong co cue de render nganh nao, ra avatar chung chung
- Avatar quay lung / che mat — recognizable = nhin ro mat 3/4 hoac front

## Prompt composition specifics

Cho personal avatar:
- **Subject**: portrait close-up hoac 3/4 angle, eye-level, character matches position keyword (vd "AI marketing strategist" → smart casual blazer, holding laptop, modern workspace background)
- **Lighting**: natural daylight warm (approachable) hoac studio key+rim (professional/authority)
- **Palette**: muted sophisticated (avoid neon, garish) — tru khi position la "creative bold"
- **Style**: photographic realistic 85mm portrait shallow DOF — hoac editorial illustration neu personal brand creative/artistic

Negatives bat buoc: "no extra fingers, no warped face, no logo placeholders, no text in frame, no AI-slop typography, no plastic skin"

## Examples

- **Minh — OPA founder**: "AI marketing strategist Vietnamese male early-30s, smart casual navy blazer, modern Saigon coworking background soft bokeh, warm natural daylight, 85mm portrait shallow DOF, sophisticated muted palette" → 1:1 LinkedIn avatar
- **Coach Lan — fitness coach**: "Vietnamese female fitness coach late-20s, athletic wear, gym background blur, confident smile, golden hour studio light, energetic warm tones" → 9:16 IG story cover

## Grill questions

1. Vai tro + nganh 1-line (vd "AI marketing strategist", "fitness coach", "indie developer")?
2. 3-5 adjectives mo ta personal brand voice (vd "warm + analytical + bold")?
3. Color preference (neutral b/w + 1 accent? hoac 2-3 brand colors hex)?
4. Co anh reference nao khong? Ghi ro: style ref, face ref, logo, palette, hay background.
5. Format can: avatar profile (1:1), keynote cover (16:9), quote post (1:1), story (9:16)?
