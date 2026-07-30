---
name: 46-brand-guideline
description: "Tao hoac cap nhat brand guideline: brand personality, color system, typography, logo usage, hinh anh va tone visual, component rules, kich thuoc an pham chuan, naming va to chuc file. Output la tai lieu nen tang cho moi skill design va Brand Hub. Kich hoat khi nhac: brand guideline, brand book, brand identity, style guide, quy chuan thuong hieu."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "brand guideline"
  - "tao brand book"
  - "brand identity"
  - "brand style guide"
  - "quy chuan thuong hieu"
  - "bang mau thuong hieu"
  - "cap nhat brand guide"
output: "File .md — brand guideline 8 phan: foundation, color, typography, logo, visual style, component, kich thuoc chuan, naming. La nguon su that cho 42/43/44/45/47/49/50 va Brand Hub (34-ai-marketing-os)."
related:
  - product-marketing-context
  - 34-ai-marketing-os
  - 30-thiet-ke-master
  - 42-brief-hinh-anh
  - 45-brief-canva
  - 47-design-review
  - 49-html-email-template
---

# Brand Guideline

> Brand guideline khong phai tai lieu dep de luu tru — la cong cu lam viec hang ngay. Guideline tot = moi nguoi trong team tu lam dung brand ma khong can hoi Leader. Day la tai lieu nen tang: moi skill design (42-50) va Brand Hub deu doc tu day.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, logo file va tai lieu brand hien co. Neu thieu, hoi toi da 4 cau:

1. **Tao moi hay cap nhat?** Neu cap nhat: co thay doi gi gan day (logo moi, mau moi, tone moi)?
2. **Pham vi?** Digital only / print / ca hai — platform chinh can apply (Facebook / TikTok / Website / Email / Canva)?
3. **Ai dung?** Chi designer, hay ca content + toan team?
4. **Asset hien co?** Logo file (SVG/PNG), ma mau da chot, font da chon — gui het neu co. Neu chua chot mau/font, skill se de xuat 2-3 huong kem ly do.

## Nguyen tac

1. **Guideline la tai lieu song** — cap nhat khi co brand decision moi, ghi ngay cap nhat cuoi.
2. **Moi rule co "dung khi nao" va "khong dung khi nao"** — rule khong co ngu canh thi khong ai theo.
3. **Conflict giua guideline va brief → hoi Leader,** khong tu quyet.
4. **Designer moi phai doc truoc khi lam bat ky asset nao.**
5. **Moi exception phai duoc document lai** — khong co ngoai le ngam.
6. **Guideline nuoi Brand Hub:** sau khi chot, day file nay vao Brand Hub (`34-ai-marketing-os`) de moi agent/role doc chung mot nguon.

## Quy trinh

### Buoc 1 — Chot brand foundation

Personality 3 tinh tu + 3 tinh tu tranh, cam giac muon nguoi xem co khi thay design. Neu chua co positioning, doc them `09-insight-khach-hang` va positioning hien co.

### Buoc 2 — Chot color system va typography

Tu logo va personality, chot palette (primary / secondary / nen / text) va font ([font heading] / [font body] + fallback). Moi mau kem quy tac dung.

### Buoc 3 — Quy dinh logo, visual style, component

Logo versions + don'ts; photography/icon/background style; component (button, card, tag, divider) de moi asset dong nhat.

### Buoc 4 — Chuan hoa kich thuoc, naming, to chuc file

Bang kich thuoc an pham theo kenh, naming convention, cay folder. Setup Brand Kit trong Canva theo guideline.

## Cau truc ket qua

Ten file: `brand-guideline-[ten-brand]-[YYYYMMDD].md`. Cac gia tri trong ngoac vuong la placeholder — dien mau/font that cua brand. Vi du minh hoa ben duoi dung palette trung tinh (navy/amber), ghi ro la vi du — thay bang mau that.

```markdown
# Brand Guideline — [Ten brand]
Cap nhat lan cuoi: [ngay] | Owner: [ten] | Version: [x.y]

## Phan 1 — Brand Foundation
Brand personality: [Ten brand] la [3 tinh tu chinh xac] — khong phai [3 tinh tu tranh].
(Vi du: "Sharp, Practical, Empowering — khong phai Corporate, Fluffy, Generic")

Brand voice trong visual:
- Khi thay design cua brand, nguoi xem phai cam thay: [...]
- Khong bao gio duoc cam thay: [...]

## Phan 2 — Color System
Primary palette:
| Ten | Hex | RGB | Dung khi nao | Khong dung khi nao |
|-----|-----|-----|--------------|---------------------|
| [mau primary] | [hex] | [rgb] | Heading, CTA, background chu dao | Background cho long-form text |
| [mau secondary] | [hex] | [rgb] | Accent, highlight, so lieu, icon | Background dien tich lon |
| [mau nen] | [hex] | [rgb] | Nen trang, nen card, vung noi dung | — |

Secondary palette:
| Ten | Hex | Dung khi nao |
|-----|-----|--------------|
| [mau text dam] | [hex] | Body text, heading tren nen sang |
| [mau text phu] | [hex] | Subtext, caption, meta |
| [mau nen nhe] | [hex] | Background section nhe, card, tag |
| [gradient] | [primary] sang [secondary] | Hero, CTA section, cover |

(Vi du minh hoa trung tinh — thay bang mau that: primary navy #0F4C81, secondary amber #F2A104.)

Combo duoc phep:
- [mau primary] nen + text sang
- Nen sang + heading [mau primary] + accent [mau secondary]
- Gradient [primary sang secondary] + text sang
- [mau nen nhe] + text [mau primary]

Combo cam:
- [mau secondary] lam background dien tich lon
- Text sang tren [mau nen nhe] (thieu tuong phan)
- 3+ mau chinh trong 1 design
- Mau ngoai palette khi chua co approval
- Mau neon / qua bao hoa khong dung tone brand

## Phan 3 — Typography System
Font chinh: [font heading] (heading) / [font body] (body). Fallback: [font fallback], sans-serif.

| Style | Weight | Size range | Dung cho |
|-------|--------|-----------|----------|
| Display | Black 900 | 48-72px | Hero headline, so lieu lon |
| H1 | Bold 700 | 36-48px | Page/post headline |
| H2 | Bold 700 | 24-32px | Section heading |
| H3 | SemiBold 600 | 18-22px | Card heading |
| Body | Regular 400 | 14-16px | Doan van |
| Caption | Regular 400 | 11-13px | Meta, timestamp |
| CTA | Bold 700 | 14-16px | Button text |

Typography don'ts:
- Khong dung font ngoai [font heading] / [font body] / fallback
- Khong ALL CAPS cho doan van dai
- Khong justify text
- Khong body font nho hon 13px (in an) / 14px (mobile)
- Khong mix nhieu font — 1 font, nhieu weight

## Phan 4 — Logo Usage
| Version | Dung khi | File |
|---------|----------|------|
| Full logo (mau) | Header, cover, slide dau, landing page | SVG + PNG @2x |
| Full logo (sang/trang) | Tren background toi / [mau primary] | SVG + PNG @2x |
| Icon only (mau) | Watermark, favicon, story, avatar | SVG + PNG @2x |
| Icon only (sang) | Background toi, kich thuoc nho | SVG + PNG @2x |

Quy tac:
- Clear space toi thieu 16px moi phia — khong cat sat logo
- Kich thuoc toi thieu 80px chieu rong (nho hon mat net)
- Nen dat logo: nen sang hoac [mau nen nhe] — khong nen anh phuc tap

Logo don'ts: khong rotate, khong stretch/squish, khong them shadow/outline/glow, khong doi mau ngoai versions da duyet, khong dat tren background lam mo logo.

## Phan 5 — Image & Visual Style
- Photography: [tone — vi du: warm, natural, candid + professional] — khong filter nguoc tone brand
- Uu tien anh nguoi that; khong stock photo lo lieu / generic lam loang brand
- Khong dung anh co watermark cua nguon khac
- Icons: [line / filled rounded] — don sac [mau primary] hoac [mau secondary]
- Background: [cac nen duoc phep] — khong pattern phuc tap; giu flat, toi da 2 mau blend nhe
- Watermark logo nhe o goc — khong qua noi

## Phan 6 — Component Rules
Button primary: nen [mau primary], text sang bold 15px, radius [x]px, padding 12x24px, hover toi hon ~10%
Button secondary: transparent, border 1.5px [mau primary], text [mau primary], hover nen [mau nen nhe]
Card: nen sang, border 1px nhe, radius 12px, shadow nhe, padding 24px
Tag/badge: nen [mau nen nhe], text [mau primary] 12px medium, pill radius, padding 4x12px
Divider: 1px mau nhe (rgba den ~8%)

## Phan 7 — Kich thuoc an pham chuan
Social: feed vuong 1080x1080 (1:1), feed doc 1080x1350 (4:5), story/reels/TikTok 1080x1920 (9:16), FB cover 820x312, LinkedIn 1200x627
Ads Meta: feed 1080x1080, story 1080x1920 (noi dung cach mep ~14%), carousel 1080x1080 (2-10 card), banner link 1200x628
Tai lieu: slide 16:9 1920x1080, A4 doc/ngang, thumbnail YouTube 1280x720
(Bang day du + safe zone + chien luoc resize: xem skill 50-asset-resize)

## Phan 8 — Do & Don't tong hop + to chuc file
DO:
- Nhieu khoang trang — khong nhet day thong tin
- Hierarchy ro: H1 noi bat nhat, text phu nho va nhat hon
- Text du tuong phan (WCAG AA), doc duoc tren dien thoai (>=14px)
- Spacing nhat quan theo grid 8px
- Chon 1 alignment — khong can trai vai thu, phai vai thu
- Preview mobile truoc khi gui duyet
- Moi design co logo brand

DON'T:
- Qua 3 mau trong 1 an pham
- Text de len vung anh phuc tap khong co overlay
- Font/mau ngoai guideline khi chua co approval
- Export JPG quality duoi 85%

Naming: [Brand]_[Campaign]_[AssetType]_[Size]_[Version]_[Status]
Status tags: _DRAFT / _REVIEW / _APPROVED / _ARCHIVED
Folder:
/[Brand]/Brand Assets/ (logo, font, icon)
/[Brand]/Campaigns/[TenCampaign]/Assets/Working|Final|Archived/
```

## Setup Brand Kit trong Canva (sau khi chot guideline)

1. Canva → Brand Kit → them mau tu bang palette tren.
2. Upload [font heading] / [font body] (neu font co tren Google Fonts thi add truc tiep).
3. Luu logo cac version vao Brand Kit.

## Quy trinh design chuan trong he thong

```
Brief tu Leader
  → Designer hoi ro: objective, doi tuong, platform, mood
  → Concept MVP (HTML hoac draft nhanh — toi da 30 phut)
  → Leader duyet concept
  → Production (Canva/Figma) theo guideline nay
  → Export dung kich thuoc, dat ten dung convention
  → Luu link source vao asset library, file goc len Drive
```

## Lien ket skill

- `product-marketing-context` / `34-ai-marketing-os`: guideline nay la 1 trong cac file loi cua Brand Hub.
- `42-brief-hinh-anh` / `43-brief-carousel` / `44-brief-video-editor` / `45-brief-canva`: moi brief design doc mau/font/logo tu day.
- `47-design-review`: cham diem brand consistency dua tren guideline nay.
- `49-html-email-template` / `12-brief-landing-page`: design token email/landing doc tu day.
- `30-thiet-ke-master`: gen anh AI doc brand identity tu guideline nay.

## Checklist chat luong

- [ ] Du 8 phan: foundation, color, typography, logo, visual style, component, kich thuoc, naming
- [ ] Moi mau co hex + "dung khi nao" + "khong dung khi nao"
- [ ] Co combo duoc phep va combo cam
- [ ] Typography co scale day du + don'ts
- [ ] Logo co du version + clear space + kich thuoc toi thieu + don'ts
- [ ] Component rules du: button, card, tag, divider
- [ ] Naming convention + status tags + cay folder ghi ro
- [ ] Ngay cap nhat + owner + version ghi o dau file
- [ ] Da day vao Brand Hub va setup Canva Brand Kit
- [ ] Khong con placeholder nao chua dien khi giao client
