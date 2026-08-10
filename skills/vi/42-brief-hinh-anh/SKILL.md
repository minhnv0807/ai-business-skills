---
name: 42-brief-hinh-anh
description: "Dung khi can brief mot ANH TINH cho designer hoac photographer — banner, thumbnail, poster, anh feed: muc tieu visual, concept va mood, bo cuc, copy overlay, mau va font lay tu brand guideline, kich thuoc theo kenh, tieu chi duyet. Kich hoat khi user nhac 'brief anh', 'brief banner', 'brief thumbnail', 'brief visual', 'dat designer lam anh', 'ta lai anh muon lam sao', 'designer hoi lai hoai'. Khong dung cho — chuoi nhieu slide thi dung skill 43-brief-carousel; huong dan thao tac tren Canva thi dung skill 45-brief-canva; can asset gap trong ngay khi campaign dang chay thi dung skill 48-quick-visual-brief; tu gen anh bang AI thi dung skill 30-thiet-ke-master."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "brief anh"
  - "brief hinh anh"
  - "brief visual"
  - "brief banner"
  - "brief thumbnail"
  - "brief static"
  - "brief cho thiet ke"
  - "huong dan lam anh"
output: "File .md — brief anh day du: thong tin chung, concept & mood, composition, copy overlay, platform specs, deliverables, quy trinh review. Designer nhan la lam duoc ngay, khong can hoi lai."
related:
  - 41-campaign-asset-list
  - 36-content-brief
  - 43-brief-carousel
  - 45-brief-canva
  - 46-brand-guideline
  - 47-design-review
  - 30-thiet-ke-master
---

# Brief Hinh Anh

> Brief anh tot = designer lam xong ma khong can mot cuoc goi nao. Truyen dat cam xuc muon co, khong chi "can anh dep". Mau, font, logo doc tu brand guideline (`46-brand-guideline`) — khong tu bia.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, brand guideline va asset list (`41-campaign-asset-list`) neu co. Neu thieu, hoi toi da 4 cau:

1. **Loai anh + noi dung?** Social post / banner ads / thumbnail / product shot / lifestyle / infographic — di kem campaign hay bai content nao?
2. **Kenh va kich thuoc?** Facebook / Instagram / TikTok / Website / Email — ti le 1:1 / 4:5 / 9:16 / 16:9 hay custom?
3. **Muc tieu visual + copy?** Stop scroll / build trust / drive click — headline, subtext, CTA da co va da duyet chua?
4. **Rang buoc?** Co anh reference khong (link/file), deadline, so lan sua toi da?

## Nguyen tac

1. **Brief du de khong hoi lai.** Con o trong nao chua dien la brief chua xong. Neu khong co thong tin, ghi ro "Designer tu quyet theo brand guideline".
2. **Copy duyet truoc khi embed.** Khong sua copy sau khi da lam layout.
3. **Reference la bat buoc.** 1 anh reference = 1000 chu mo ta. "Nhin dep dep, chuyen nghiep" khong phai brief.
4. **1 anh = 1 muc tieu visual duy nhat.** Khong nhoi 3 message vao 1 anh.
5. **Sua qua 2 lan thuong do brief chua ro tu dau,** khong phai do designer kem.
6. **Nhieu kich thuoc thi ghi ro adapt rules** cho tung size (xem `50-asset-resize`).

## Quy trinh

### Buoc 1 — Xac dinh muc tieu visual

Truoc khi brief concept, xac dinh anh nay can lam duoc gi trong 3 giay dau nguoi xem nhin thay:

| Muc tieu | Huong visual |
|----------|--------------|
| Stop scroll | Hook manh, tuong phan cao, pattern interrupt |
| Build trust | Clean, professional, social proof nhin thay duoc |
| Drive click | CTA noi bat, offer ro, urgency neu co |

### Buoc 2 — Viet brief day du

Dien het cac section trong template ben duoi — khong de trong section nao.

### Buoc 3 — Attach reference

Luon kem 2-3 anh reference cu the, ghi ro hoc gi tu moi reference (mau? composition? mood?) va dieu khong copy.

## Cau truc ket qua

Ten file: `brief-hinh-anh-[ten-asset]-[YYYYMMDD].md`

```markdown
# Brief Anh — [Ten asset]

## Thong tin chung
| Hang muc | Chi tiet |
|----------|----------|
| Ten project / campaign | |
| Loai anh | |
| Kenh / vi tri dang | |
| Kich thuoc (px) + ti le | |
| Muc tieu visual | Stop scroll / Build trust / Drive click |
| Format xuat | JPG / PNG / WebP |
| So luong deliverables | |
| Designer | |
| Deadline | |
| So lan sua toi da | |

## Concept & Mood
- Idea mot cau: [anh nay noi ve dieu gi — doc xong la hinh dung duoc]
- Cam xuc muon truyen: [Professional / Warm / Playful / Urgent / Minimal / Bold]
- Mood board reference:
  - Ref 1: [link/file — hoc gi: mau? layout? kieu anh?]
  - Ref 2: [...]
  - Ref 3: [...] — khong copy: [...]
- Mau chu dao (doc tu brand guideline):
  - Primary: [mau primary]
  - Secondary / accent: [mau secondary]
  - Background: [trang / mau solid / gradient / anh that]
  - Text: [mau text dam tren nen sang / trang tren nen toi]
- Tuyet doi tranh: mau [...], style [...], element [...]

## Composition
- Subject chinh: [Nguoi that / San pham / Abstract / Text-based / Illustration]
- Background: [Trang / Mau solid / Lifestyle scene / Studio / Blur / Texture]
- Focal point: [Giua khung / Rule of thirds trai / phai / Full bleed]
- Khoang trong cho text overlay: [co/khong — goc nao, chiem khoang 1/3 nao]
- Hierarchy visual:
  1. [Element quan trong nhat — mat nhin vao dau tien]
  2. [Element thu hai]
  3. [Element thu ba — CTA / logo]

## Copy overlay (da duyet truoc khi embed)
| Element | Noi dung | Font | Size | Mau | Vi tri |
|---------|----------|------|------|-----|--------|
| Headline | | [font heading] Bold | | | |
| Subtext | | [font body] Regular | | | |
| CTA button | | [font heading] Bold | | | |
| Logo | [version: ngang / dung / icon only] | — | — | — | [theo brand guideline] |

Luu y copy: headline toi da [X] chu, subtext toi da [X] chu, khong qua 3 mau text trong 1 anh.

## Deliverables
- [ ] File goc (share link Canva/Figma — khong export flatten)
- [ ] Export [format] — [kich thuoc cu the]
- [ ] Variants neu can: [light/dark version, crop khac]
- [ ] Resize cac kich thuoc con lai theo asset list

## Quy trinh review
- Nop draft 1: [ngay] — feedback trong [X] gio
- Sua toi da: [X] lan — approve cuoi boi: [Leader]
- Deadline final: [ngay]
```

## Platform specs

| Kenh | Kich thuoc | Safe zone | Format export | Max file size |
|------|-----------|-----------|---------------|---------------|
| Facebook/IG Feed | 1080x1080px (1:1) hoac 1080x1350px (4:5) | 20px moi canh | JPG, RGB | 30MB |
| Facebook/IG Story | 1080x1920px (9:16) | 250px top / 250px bottom | JPG, RGB | 30MB |
| TikTok thumbnail | 1080x1920px (9:16) | 150px top / 300px bottom | JPG | 10MB |
| Email header | 600x200px | 10px moi canh | JPG | 1MB |
| Website banner | 1440x500px | 100px moi canh | JPG/PNG | 500KB |

Bang kich thuoc day du cac kenh: xem `50-asset-resize`.

## Vi du brief hoan chinh (rut gon)

```
Brief anh — Facebook Feed 1080x1080 — TOFU campaign khoa hoc Q3
Loai: single image ads | Kenh: Facebook Feed | Muc tieu: stop scroll trong 1.5 giay dau
Cam xuc: bold, urgency nhe, professional nhung khong corporate
Subject: text-based, background gradient [mau primary] sang [mau secondary]
Headline: "[thong diep chinh — toi da 60 ky tu]"
Subtext: "[ten san pham + moc thoi gian]"
CTA: "Dang ky ngay"
Ref: [link anh text-based bold, hoc contrast va typography, khong copy mau]
Deadline: [ngay] | Sua toi da: 2 lan
```

## Lien ket skill

- `36-content-brief`: content brief tong the — brief anh la buoc chi tiet hoa phan visual.
- `41-campaign-asset-list`: xac dinh anh nay nam o dau trong danh sach asset + deadline.
- `46-brand-guideline`: nguon mau, font, logo rules — doc truoc khi viet brief.
- `45-brief-canva`: khi designer lam tren Canva, kem direction thao tac cu the.
- `47-design-review`: review ket qua theo tieu chi cham diem sau khi designer nop.
- `30-thiet-ke-master`: khi can gen anh bang AI thay vi designer lam tay.

## Checklist chat luong

- [ ] Muc tieu visual xac dinh ro (stop scroll / build trust / drive click) — chi 1 muc tieu
- [ ] Concept co idea 1 cau + cam xuc muon truyen
- [ ] Co 2-3 reference kem ghi chu hoc gi / khong copy gi
- [ ] Mau va font doc tu brand guideline — khong tu bia hex
- [ ] Copy overlay da duyet truoc khi giao designer
- [ ] Hierarchy visual ghi ro thu tu 1-2-3
- [ ] Kich thuoc + safe zone + format export dung spec kenh
- [ ] Text doc ro tren mobile, khong qua 3 mau text
- [ ] Deadline va so lan sua toi da ghi ro
- [ ] Khong con section nao bo trong
