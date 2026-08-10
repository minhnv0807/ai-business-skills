---
name: 45-brief-canva
description: "Dung khi designer se lam TREN CANVA hoac Figma va can direction thao tac cu the — chon template base, thu tu thao tac, map tung element vao vi tri, luoi va khoang cach, mau va font lay tu brand kit, checklist export, viec nen va khong nen lam. Kich hoat khi user nhac 'brief Canva', 'huong dan lam tren Canva', 'direction Canva', 'template Canva', 'layout Canva', 'lam trong Figma', 'ban design chua ranh nen phai chi tay'. Khong dung cho — brief concept anh tinh khong gan cong cu thi dung skill 42-brief-hinh-anh; chuoi slide carousel thi dung skill 43-brief-carousel; quy dinh mau, font va logo cua thuong hieu thi dung skill 46-brand-guideline."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "brief canva"
  - "huong dan lam canva"
  - "direction canva"
  - "layout canva"
  - "template canva"
  - "canva production"
output: "File .md — direction Canva day du: template base, quick reference brand system, direction tung element, export checklist. Designer mo Canva len la lam duoc ngay, dung brand."
related:
  - 42-brief-hinh-anh
  - 43-brief-carousel
  - 41-campaign-asset-list
  - 46-brand-guideline
  - 47-design-review
---

# Brief Canva

> Brief Canva tot = designer mo dung template, dung dung element, khong phai tu tim mo. Toan bo mau, font, logo doc tu brand kit trong Canva hoac brand guideline (`46-brand-guideline`) — khong tu chon.

## Thu thap thong tin

Doc brand guideline va brief goc (`42-brief-hinh-anh` / `43-brief-carousel`) neu co. Neu thieu, hoi toi da 4 cau:

1. **Loai design + kich thuoc?** Post / story / carousel / presentation / email banner — canvas bao nhieu px?
2. **Bat dau tu dau?** Design moi tu blank, edit tu template co san, hay copy tu design cu (link)?
3. **Noi dung da co chua?** Copy da duyet chua, can bao nhieu variants / sizes?
4. **Deadline + ai duyet?**

## Nguyen tac

1. **Khong tu chon font / mau ngoai brand kit** tru khi Leader approve bang van ban.
2. **Khong dung AI generate image cho brand content** khi chua duoc duyet — dung anh that hoac stock da approve.
3. **Share link Canva (view/comment) cho Leader truoc khi export** — khong export roi moi gui duyet.
4. **Moi thay doi sau khi da approve lan dau → bao va xin approve lai.**
5. **Khong de ten file "Untitled design"** — dat ten theo naming convention ngay tu dau.
6. **Setup Brand Kit truoc khi lam:** them palette tu brand guideline, upload [font heading] / [font body], luu logo cac version.

## Quy trinh

### Buoc 1 — Xac dinh template base

Chi ro designer bat dau tu dau: link template co san cua brand, blank canvas dung kich thuoc, hay duplicate tu design cu nao.

### Buoc 2 — Thu tu thao tac chuan tren template

| Buoc | Lam gi |
|------|--------|
| 1 | Chon template dung kich thuoc (xem bang spec kenh o `50-asset-resize`) |
| 2 | Doi mau nen ve [mau nen chinh] hoac [mau nen nhe] theo brand guideline |
| 3 | Doi mau accent ve [mau primary] hoac [mau secondary] |
| 4 | Doi font ve [font heading] / [font body] |
| 5 | Thay noi dung — giu dung hierarchy (H1 lon nhat, body nho) |
| 6 | Kiem tra: logo dung vi tri, mau dung palette, text du tuong phan |

### Buoc 3 — Map tung element

Tung text box, image placeholder, color block deu co direction cu the (bang trong template output).

### Buoc 4 — Export theo checklist

Format, resolution, color profile, file name, folder — khong export tuy tien.

## Cau truc ket qua

Ten file: `brief-canva-[ten]-[YYYYMMDD].md`

```markdown
# Canva Brief — [Ten design]

## Thong tin chung
| Hang muc | Chi tiet |
|----------|----------|
| Loai design | |
| Kich thuoc canvas | |
| Template base | [link template / blank / copy tu design X] |
| So variants can | |
| Deadline | |
| Nguoi duyet | |

## Brand system — quick reference (doc tu brand guideline)
Mau:
| Ten | Ma mau | Dung cho |
|-----|--------|----------|
| Primary | [mau primary] | Heading, CTA button, background chu dao |
| Secondary | [mau secondary] | Highlight, accent, so lieu noi bat |
| Nen chinh | [mau nen] | Background clean |
| Text dam | [mau text dam] | Body text tren nen sang |
| Text phu | [mau text phu] | Subtext, caption |
| Nen nhe | [mau nen nhe] | Background section, card |

Typography:
| Dung cho | Font | Weight | Size goi y |
|----------|------|--------|------------|
| Heading H1 | [font heading] | Bold 700 | 40-56px |
| Heading H2 | [font heading] | Bold 700 | 28-36px |
| Heading H3 | [font heading] | SemiBold 600 | 20-24px |
| Body | [font body] | Regular 400 | 14-16px |
| Caption | [font body] | Regular 400 | 11-13px |
| CTA button | [font heading] | Bold 700 | 14-16px |

Neu Canva khong co [font heading] → dung font fallback ghi trong brand guideline.

Logo:
- Full logo: header, cover, slide dau. Icon only: watermark, story.
- Vi tri mac dinh + khoang cach canh: theo brand guideline (thuong 16px).
- Khong dat logo tren background phuc tap lam mo logo.

Component:
- Button primary: fill [mau primary], text sang, radius theo brand, padding 12x24px
- Button secondary: border [mau primary], text [mau primary], khong fill
- Card: nen sang, shadow nhe, radius 12px, padding 24px

## Direction tung element
Text boxes:
| Element | Font | Size | Mau | Noi dung (da duyet) |
|---------|------|------|-----|---------------------|
| Headline | [font heading] Bold | | | "[...]" |
| Subheadline | [font heading] SemiBold | | | "[...]" |
| Body | [font body] Regular | | | "[...]" |
| CTA | [font heading] Bold | | | "[...]" |

Image / visual:
| Vi tri | Noi dung | Style | Nguon |
|--------|----------|-------|-------|
| Background | [solid / gradient / anh] | [opacity neu co overlay] | [stock da duyet / upload] |
| Hero image | [mo ta] | [crop style] | [link / upload] |
| Icon set | [line / filled] | [mau icon] | [element library / asset brand] |

Layout grid:
- Padding ngoai canvas: 40px moi canh (desktop) / 24px (mobile-first)
- Khoang cach elements: 16px (tight) / 24px (normal) / 40px (breathing room)
- Text khong cham canh canvas — padding toi thieu 24px

## Export checklist
- [ ] Format: JPG (static) / PNG (transparent) / PDF (document)
- [ ] Resolution 2x; color profile RGB (digital) — khong CMYK
- [ ] File name: [Campaign]_[Kenh]_[KichThuoc]_[Tang]_[Version]_[Status]
- [ ] Upload folder: /[Brand]/Campaigns/[TenCampaign]/Assets/Final/
- [ ] Share link Canva (view only) cho Leader truoc khi export final

## Review
- Share link draft: [ngay] — feedback qua comment truc tiep tren Canva
- Sua toi da: [X] lan — export final sau khi co comment approve
```

## Loi thuong gap khi lam Canva (tranh ngay tu dau)

- Dung font mac dinh cua template (Poppins, Montserrat...) thay vi font brand.
- Dung mau tu chon ngoai palette.
- Text qua nho tren anh — duoi 14px khong doc duoc tren dien thoai.
- Qua nhieu text tren 1 slide/post — toi da 3-4 dong body.
- Quen safe zone story: khong de noi dung quan trong 250px dau va cuoi (bi UI che).
- Quen doi ten file — de "Copy of Copy of...".

## Lien ket skill

- `42-brief-hinh-anh` / `43-brief-carousel`: brief noi dung + concept truoc, Canva brief la khau thao tac production.
- `41-campaign-asset-list`: xac dinh asset + deadline truoc khi vao Canva.
- `46-brand-guideline`: nguon palette, font, logo, component rules — setup Brand Kit tu day.
- `47-design-review`: review ket qua sau khi export.

## Checklist chat luong

- [ ] Template base chi ro (link / blank / copy tu dau)
- [ ] Brand Kit da setup: palette, font, logo tu brand guideline
- [ ] Thu tu thao tac 6 buoc ghi trong brief
- [ ] Moi text box co font, size, mau, noi dung da duyet
- [ ] Layout grid + padding + spacing ghi ro
- [ ] Export checklist du: format, 2x, RGB, naming, folder
- [ ] Quy trinh review qua comment Canva, khong export truoc khi duyet
- [ ] Khong element nao dung mau/font ngoai brand kit
