---
name: 43-brief-carousel
description: "Viet brief carousel Facebook/Instagram/LinkedIn tung slide theo narrative arc: hook slide 1, build value slide giua, CTA slide cuoi. Kem huong dan render HTML preview de duyet concept truoc khi vao production. Kich hoat khi nhac: brief carousel, lam carousel, carousel tu content nay, brief slide, render carousel."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "brief carousel"
  - "lam carousel"
  - "carousel tu content nay"
  - "brief slide"
  - "brief slider"
  - "render carousel"
  - "tao carousel"
output: "File .md — brief chi tiet tung slide (headline, body, visual direction, mau nen) + huong dan render HTML preview duyet concept truoc khi giao designer production."
related:
  - 42-brief-hinh-anh
  - 41-campaign-asset-list
  - 01-lich-noi-dung
  - 36-content-brief
  - 45-brief-canva
  - 46-brand-guideline
  - 47-design-review
---

# Brief Carousel

> Carousel khong phai "anh ghep" — la mot chuoi ke chuyen, moi slide phai keo nguoi doc sang slide tiep theo. Slide 1 quyet dinh swipe hay khong. Slide cuoi phai co CTA ro rang. Khong tu bia noi dung — thieu thi hoi user truoc.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, brand guideline va content nguon neu co. Neu user chua cung cap noi dung, hoi toi da 4 cau:

1. **Chu de + noi dung nguon?** Carousel nay tu bai content nao, hay can viet moi tu dau?
2. **Muc tieu + tang pheu?** Education / proof / offer / tips / story / comparison — TOFU / MOFU / BOFU?
3. **Kenh + so slide?** Facebook / Instagram / LinkedIn — bao nhieu slide (khuyen nghi 5-7)?
4. **Copy va tone?** Copy tung slide da co hay can viet? Tone gan gui / chuyen nghiep / bold / storytelling?

## Nguyen tac

1. **Slide 1 la quan trong nhat** — dau tu 40% cong suc vao hook. Slide 1 quyet dinh swipe hay luot qua.
2. **Copy tung slide duyet xong roi moi vao tool design** — khong lam nguoc.
3. **Moi slide 1 y duy nhat.** Carousel khong phai powerpoint — khong nhoi text.
4. **5-7 slide la ly tuong.** Qua 9 slide nguoi xem drop giua chung. Neu noi dung dai hon 7 slide → chia thanh 2 carousel series.
5. **Luon co CTA o slide cuoi.** Carousel khong co CTA = bo phi toan bo cong suc.
6. **Gioi han text:** headline toi da 8 tu, sub toi da 15 tu, body toi da 25 tu moi slide.

## Quy trinh

### Buoc 1 — Xac dinh narrative arc

Carousel tot co arc ro rang truoc khi phan bo noi dung:

```
Hook → Problem → Insight → Solution → Proof → CTA
```

Xac dinh arc truoc, sau do moi chia noi dung vao tung slide. Voi noi dung co san: slide 1 = cau hook manh nhat (pain point / cau hoi / so lieu soc), slide giua = proof / giai thich / loi ich, slide cuoi = action ro rang.

### Buoc 2 — Viet copy tung slide

Moi slide gom: headline (toi da 8 tu) + body (toi da 25 tu) + visual direction. Copy phai duoc duyet truoc khi designer bat dau layout.

### Buoc 3 — Brief visual direction tung slide

Moi slide co visual direction rieng — khong de designer tu doan. Mau nen doc tu brand guideline: slide hook va slide CTA dung nen dam ([mau primary] hoac gradient [mau primary] sang [mau secondary]) de tao contrast, slide body dung nen sang de co breathing room.

### Buoc 4 — Render HTML preview de duyet concept

Truoc khi giao designer production, render 1 file HTML preview:

- Canvas: 1080x1080px moi slide (1:1) — co the render 900x900 cho nhe.
- Font: [font heading] / [font body] doc tu brand guideline (Google Fonts neu co).
- Navigation: nut trai/phai de xem tung slide, counter "1 / N" goc duoi phai.
- Slide hook + CTA: nen dam, chu sang. Slide body: nen sang, eyebrow mau accent, headline dam.

HTML preview = de duyet concept, khong phai file production. Sau khi duyet HTML → designer moi vao Canva/Figma lam file that.

## Cau truc ket qua

Ten file: `brief-carousel-[ten]-[YYYYMMDD].md`

```markdown
# Carousel Brief — [Ten]

## Tong quan
| Hang muc | Chi tiet |
|----------|----------|
| Muc dich | |
| Kenh | |
| Tang pheu | TOFU / MOFU / BOFU |
| So slide | |
| Kich thuoc | 1080x1080px (Feed) / 1080x1350px (Portrait) |
| Tone | |
| Deadline | |
| So lan sua toi da | |

## Brand direction (ap dung toan bo carousel)
- Nen chu dao: [trang / mau primary / gradient primary sang secondary / mixed]
- Font heading: [font heading] Bold — mau [...]
- Font body: [font body] Regular — mau [...]
- Accent: [mau secondary] — dung cho highlight / so lieu / CTA
- Logo: xuat hien toi thieu o slide 1 va slide cuoi (hoac tat ca slide neu brand guideline yeu cau), vi tri theo brand guideline

## Slide 1 — HOOK (quyet dinh swipe hay khong)
| Element | Noi dung |
|---------|----------|
| Headline | [cau hook manh — pain / curiosity / so lieu soc, toi da 8 tu] |
| Subtext | [1 cau ho tro hook — toi da 15 tu] |
| Visual | [full-color background / bold typography / anh goi cam xuc] |
| CTA mini | "Swipe de xem" hoac bo neu hook du manh |
| Nen | [nen dam — mau primary — tao contrast manh] |

## Slide 2 — PROBLEM / SETUP
| Element | Noi dung |
|---------|----------|
| Headline | |
| Body | |
| Visual | [icon / illustration / minimal text layout] |
| Nen | [sang/nhat — tao breathing room sau slide 1] |

## Slide 3 — INSIGHT / TURNING POINT
| Element | Noi dung |
|---------|----------|
| Headline | |
| Body | |
| Visual | [so lieu lon / quote / diagram don gian] |
| Accent | [highlight so lieu bang mau secondary] |

## Slide 4 — SOLUTION / VALUE
| Element | Noi dung |
|---------|----------|
| Headline | |
| Body | |
| Visual | |

## Slide 5 — PROOF / SOCIAL PROOF (neu co)
| Element | Noi dung |
|---------|----------|
| Headline | |
| Body | [testimonial / so lieu ket qua / case study ngan] |
| Visual | [screenshot / quote card / before-after] |

## Slide N-1 — PRE-CTA / RECAP
| Element | Noi dung |
|---------|----------|
| Headline | [tom tat gia tri — 1 cau] |
| Body | [nhac lai ly do hanh dong] |

## Slide cuoi — CTA
| Element | Noi dung |
|---------|----------|
| Headline | [CTA ro — dong tu + loi ich cu the] |
| Subtext | [huong dan buoc tiep theo] |
| CTA button | [text + link / "inbox tu khoa X"] |
| Logo + contact | [full logo, link / Zalo / email tuy campaign] |
| Nen | [nen dam — dong bo slide 1, tao vong tron visual] |

## Dieu khong duoc lam
- Khong dung mau ngoai palette brand guideline
- Giu text overlay gon (Meta khuyen nghi duoi 20% dien tich)
- Khong doi font ngoai [font heading] / [font body]
- Khong nhoi qua 1 y moi slide
```

## Visual consistency rules

- Moi slide co so trang nho o goc: "01/07", "02/07"...
- Progress bar hoac dots indicator o bottom.
- Transition feeling: slide sau phai "keo" tu slide truoc — khong dut doan (cau cuoi slide truoc mo ra slide sau).
- Khong dung qua 3 mau text trong toan bo carousel.
- Slide hook va slide CTA dung cung tong nen dam de tao vong tron visual.

## Deliverables va review

- [ ] File goc (share link — khong flatten)
- [ ] Export tung slide rieng: PNG 1080x1080px
- [ ] Export tat ca slide thanh 1 PDF de review de
- [ ] Resize portrait 1080x1350px neu can Instagram
- Quy trinh: duyet copy → duyet HTML preview → production → nop draft → feedback trong [X] gio → sua toi da [X] lan → approve boi Leader

## Lien ket skill

- `36-content-brief` / `01-lich-noi-dung`: nguon noi dung va vi tri carousel trong lich.
- `42-brief-hinh-anh`: brief anh don le — dung khi chi can 1 static thay vi chuoi slide.
- `45-brief-canva`: direction thao tac Canva cho khau production sau khi duyet concept.
- `46-brand-guideline`: nguon mau, font, logo rules.
- `47-design-review`: cham diem carousel sau khi designer nop.

## Checklist chat luong

- [ ] Narrative arc ro: hook → value → CTA, moi slide 1 y
- [ ] Slide 1 co hook du manh (pain / curiosity / so lieu)
- [ ] Slide cuoi co CTA + huong dan buoc tiep theo
- [ ] So slide 5-7, qua 7 da chia series
- [ ] Headline toi da 8 tu, body toi da 25 tu moi slide
- [ ] Copy tung slide da duyet truoc khi vao production
- [ ] Mau nen tung slide chi ro, doc tu brand guideline
- [ ] Co so trang + consistency rules
- [ ] HTML preview render de duyet concept truoc production
- [ ] Deliverables + so lan sua + nguoi approve ghi ro
