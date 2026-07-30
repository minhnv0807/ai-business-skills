# K-D2 — Brand Visual Guidelines

> Cap nhat: 2026-07 | Tang: Designer | Dung cho: role Designer, Content kiem Design
> SOP thuc thi lien quan: `46-brand-guideline` (tao guideline), `42-brief-hinh-anh`, `43-brief-carousel`, `45-brief-canva`, `47-design-review`, `50-asset-resize`.

Tai lieu nay la **khung tu duy** de xay va van hanh he thong visual cua mot brand. Cac gia tri cu the (mau, font) la placeholder — thay bang gia tri that cua brand, lay tu output cua skill `46-brand-guideline`.

---

## 1. Cau truc bang mau (color system)

Mot palette du dung gom 3 nhom. Khong can nhieu hon.

### Primary — dung chinh

| Vai tro | Placeholder | Dung khi |
|---------|-------------|----------|
| Nen chinh | `[mau nen]` (thuong la trang hoac off-white am) | Nen trang, nen card, vung noi dung |
| Mau thuong hieu dam | `[mau primary]` | Tieu de chinh, CTA button, accent manh |
| Mau thuong hieu nhat | `[mau primary nhat]` | Background nhe, tag, badge, divider |
| Mau nhan phu dam | `[mau secondary]` | Highlight, icon accent, CTA phu |
| Mau nhan phu nhat | `[mau secondary nhat]` | Background nhe, gradient nhe, pill |

### Secondary — bo tro

| Vai tro | Placeholder | Dung khi |
|---------|-------------|----------|
| Mau trung gian | `[mau trung gian]` | Border, stroke nhe, text phu tren nen nhat |
| Nen section rat nhat | `[mau nen section]` | Background section, card nen nhat |
| Text chinh | `[mau text]` (thuong gan den, khong den thuan) | Body text, heading tren nen sang |
| Text phu | `[mau text phu]` (xam trung) | Caption, placeholder, label phu |
| Nen tong the | `[mau off-white]` | Nen trang tong the |

### Nguyen tac chon mau

- Toi da 3 mau trong mot an pham. Nhieu hon la loang.
- Text chinh dung gan-den thay vi den thuan `#000000` — de mat hon khi doc dai.
- Tranh mau neon hoac qua bao hoa tru khi brand personality thuc su la nang luong cao.
- Gradient: giu flat hoac toi da 2 mau blend nhe. Gradient nhieu mau lam anh trong re va kho tai su dung.
- Mau khong thuoc palette thi khong dung — ke ca khi "nhin dep hon" trong mot bai cu the.

---

## 2. Typography

### Cau truc font

| Vai tro | Placeholder | Weight | Dung cho |
|---------|-------------|--------|----------|
| Heading | `[font heading]` | 700 Bold | H1, H2, display text, CTA |
| Heading phu | `[font heading]` | 500 Medium | H3, subheading, label quan trong |
| Body | `[font body]` | 400 Regular | Body text, caption, mo ta |
| Fallback | `[font fallback]` | 400 | Khi font chinh khong load, hoac body text dai |

Khai bao CSS: `font-family: '[font heading]', '[font fallback]', -apple-system, sans-serif;`

### Thang kich thuoc chuan

| Element | Size | Weight | Mau |
|---------|------|--------|-----|
| H1 — tieu de trang | 36–48px | 700 | `[mau primary]` hoac `[mau text]` |
| H2 — tieu de section | 24–32px | 700 | `[mau primary]` hoac `[mau text]` |
| H3 — tieu de card | 18–22px | 500 | `[mau text]` |
| Body | 15–17px | 400 | `[mau text]` |
| Caption | 12–14px | 400 | `[mau text phu]` |
| CTA button | 14–16px | 700 | mau tuong phan tren nen CTA |
| Tag / badge | 11–13px | 500 | `[mau primary]` tren nen `[mau nen section]` |

### Nguyen tac

- **Mot font family, nhieu weight** — khong mix 2 font khac nhau tru khi co ly do thiet ke ro rang.
- Text tren anh toi thieu 14px, neu khong se khong doc duoc tren dien thoai.
- Uu tien font co ho tro tieng Viet day du (dau thanh khong bi vo).

---

## 3. Logo usage

| Truong hop | Dung | Sai |
|------------|------|-----|
| Nen dat logo | Nen sang hoac nen nhat cua palette | Nen toi, nen anh phuc tap |
| Khoang trong quanh logo | Toi thieu 16px moi phia | Cat sat logo |
| Mau logo | Nguyen ban theo guideline | Doi mau tuy tien |
| Ti le | Giu nguyen | Keo meo, xoay |
| Kich thuoc toi thieu | 80px chieu rong | Nho hon 80px (mat net) |

Chuan bi it nhat 3 phien ban: full logo mau chuan (nen sang), full logo dao mau (nen toi), va logo rut gon/icon (avatar, watermark, favicon).

---

## 4. Kich thuoc an pham chuan 2026

### Social media

| Loai | Kich thuoc | Ti le | Nen tang |
|------|------------|-------|----------|
| Feed post vuong | 1080 x 1080 | 1:1 | Facebook, Instagram |
| Feed post doc | 1080 x 1350 | 4:5 | Instagram (reach tot hon) |
| Story / Reels | 1080 x 1920 | 9:16 | TikTok, Reels, Story |
| TikTok video | 1080 x 1920 | 9:16 | TikTok |
| Facebook cover | 820 x 312 | — | Facebook page |
| LinkedIn post | 1200 x 627 | — | LinkedIn |

### Ads

| Loai | Kich thuoc | Ghi chu |
|------|------------|---------|
| Meta feed ads | 1080 x 1080 | Dung chung cho Facebook + Instagram |
| Meta story ads | 1080 x 1920 | Safe zone: noi dung cach mep 14% |
| Meta carousel | 1080 x 1080 | Toi thieu 2, toi da 10 card |
| Meta banner (link post) | 1200 x 628 | — |

### Tai lieu

| Loai | Kich thuoc | Dung khi |
|------|------------|----------|
| Slide deck | 1920 x 1080 (16:9) | Presentation, pitch |
| One-pager A4 ngang | 297 x 210mm | Brief, proposal in |
| One-pager A4 doc | 210 x 297mm | Report gui khach |
| Thumbnail YouTube | 1280 x 720 | Content video |

Safe zone story (9:16): khong dat noi dung quan trong trong 250px dau va 250px cuoi — UI cua nen tang se che.

---

## 5. Component rules

Dinh nghia component mot lan, dung lai moi noi. Gia tri duoi day la khung — thay mau theo palette brand.

**Button primary:** nen `[mau primary]` · text tuong phan, weight 700, 15px · border-radius 8px · padding 12x24px · hover toi hon ~10%.

**Button secondary:** nen trong suot · border 1.5px `[mau primary]` · text `[mau primary]` · hover nen `[mau nen section]`.

**Card:** nen `[mau nen]` · border 1px rgba(0,0,0,0.08) · border-radius 12px · shadow 0 2px 8px rgba(0,0,0,0.06) · padding 24px.

**Tag / badge:** nen `[mau nen section]` · text `[mau primary]` weight 500, 12px · border-radius 20px (pill) · padding 4x12px.

**Divider:** rgba(0,0,0,0.08), cao 1px — hoac dung `[mau off-white]` lam dai phan cach section.

---

## 6. Setup va van hanh trong cong cu thiet ke

### Brand Kit (Canva hoac tuong duong)

1. Them toan bo palette vao Brand Kit.
2. Upload `[font heading]` va `[font body]` (neu co tren Google Fonts thi add truc tiep).
3. Luu cac phien ban logo vao Brand Kit.

### Thu tu lam khi dung template co san

| Buoc | Lam gi |
|------|--------|
| 1 | Chon template dung kich thuoc theo bang muc 4 |
| 2 | Doi mau nen ve `[mau nen]` hoac `[mau nen section]` |
| 3 | Doi mau accent ve `[mau primary]` hoac `[mau secondary]` |
| 4 | Doi font ve `[font heading]` / `[font body]` |
| 5 | Thay noi dung — giu dung hierarchy (H1 lon, body nho) |
| 6 | Kiem tra: logo dung vi tri, mau dung palette, text du tuong phan |

### Loi thuong gap

- Dung font mac dinh cua cong cu thay vi font brand.
- Dung mau tu chon ngoai palette.
- Text duoi 14px tren anh — khong doc duoc tren dien thoai.
- Nhoi qua nhieu chu tren mot an pham — toi da 3-4 dong body.
- Quen safe zone story.

---

## 7. Do va Don't

**Nen lam:** dung nhieu khoang trang, khong nhoi thong tin · hierarchy ro (H1 noi bat nhat, text phu nho va nhat hon) · nen sang lam chu dao tru khi brand co ly do dung nen toi · uu tien anh nguoi that thay vi stock photo lo lieu · watermark nhe o goc.

**Khong nen:** qua 3 mau trong mot an pham · mix nhieu font · dung anh con watermark cua nguon khac · de text de len vung anh phuc tap ma khong co overlay · tron nhieu kieu can le trong cung mot thiet ke.

---

## 8. Quy trinh design trong he thong

```
Brief tu Leader (02-brief-chien-dich → 41-campaign-asset-list)
  ↓
Brief visual chi tiet (42-brief-hinh-anh / 43-brief-carousel / 45-brief-canva)
  → Hoi ro: objective, tep xem, platform, mood
  → Render concept MVP (~30 phut) de duyet huong truoc khi lam full
  ↓
Leader duyet concept (47-design-review)
  ↓ approved
San xuat asset day du
  → Ap mau, font, layout theo guideline nay
  → Export dung kich thuoc theo bang muc 4
  ↓
Luu file goc + link vao asset library; cap nhat trang thai trong asset list
  ↓
D+1 sau launch: danh dau winner/loser → resize winner (50-asset-resize)
```

---

## 9. Checklist truoc khi export

- [ ] Mau dung palette brand (khong co mau la)
- [ ] Font dung `[font heading]` / `[font body]`
- [ ] Kich thuoc dung platform (bang muc 4)
- [ ] Logo dung vi tri, du safe zone
- [ ] Text doc duoc tren dien thoai (>= 14px)
- [ ] Khong loi chinh ta
- [ ] Safe zone story da kiem tra (neu la 9:16)
- [ ] Dat ten file theo chuan: `[campaign]_[type]_[size]_[date].png` — vi du `he-ruc-ro_feed-post_1080x1080_20260730.png`

---

## Skill lien quan

- `46-brand-guideline` — tao hoac cap nhat brand guideline (nguon sinh ra cac gia tri thay cho placeholder trong file nay).
- `42-brief-hinh-anh`, `43-brief-carousel`, `44-brief-video-editor`, `45-brief-canva` — brief san xuat tung loai asset.
- `47-design-review` — cham diem asset truoc khi ban giao.
- `48-quick-visual-brief` — brief gap khi campaign dang chay.
- `50-asset-resize` — adapt asset winner sang da kich thuoc.
- `41-campaign-asset-list` — scope asset cua campaign.
- `30-thiet-ke-master` — router tao visual bang AI.
- `34-ai-marketing-os` — brand guideline la 1 trong 6 file Brand Hub.
