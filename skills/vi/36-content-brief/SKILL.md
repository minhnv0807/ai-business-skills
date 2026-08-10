---
name: 36-content-brief
description: "Dung khi da co lich content va can brief tung bai truoc khi viet — goc tiep can, insight goc, key message, CTA, format va tieu chuan nghiem thu. Kich hoat khi user nhac 'brief bai content', 'brief tung bai', 'goc cho bai nay', 'viet gi cho bai thu 3', 'content brief', 'huong dan viet bai'. Khong dung cho — lap lich ca thang thi dung skill 01-lich-noi-dung; viet caption thanh pham thi dung skill 37-caption-social; brief hinh anh thi dung skill 42-brief-hinh-anh."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "brief bai content"
  - "content brief"
  - "brief viet bai"
  - "brief tung bai"
  - "angle cho bai nay"
  - "brief post Facebook"
  - "brief bai TikTok"
  - "brief content hom nay"
output: "File .md — brief 1 bai: thong tin bai, angle + insight goc, 3 hook options, key message, CTA, visual direction, distribution. Writer nhan la viet duoc ngay"
related:
  - 35-brand-voice
  - 09-insight-khach-hang
  - 01-lich-noi-dung
  - 37-caption-social
  - 04-script-video
  - 42-brief-hinh-anh
  - 43-brief-carousel
  - 44-brief-video-editor
---

# Content Brief

> Brief tung bai — mat xich giua lich noi dung (`01-lich-noi-dung`) va khau san xuat (`37-caption-social`, `04-script-video`, `05-copy-quang-cao`, `14-email-marketing`). Brief du tot khi writer lam xong ma khong can hoi lai leader cau nao.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, Brand Voice Document (35) va lich noi dung (01) neu co. Neu thieu, hoi toi da 4 cau:

1. **Bai nay nam o tang nao trong pheu (TOFU / MOFU / BOFU) va thuoc campaign / theme tuan nao?**
2. **Dang kenh nao, format gi?** (Facebook Page / Facebook Group / TikTok / Instagram / Email — video / carousel / static / text)
3. **CTA mong muon la gi?** (comment / click link / DM / dang ky / mua)
4. **Deadline duyet khi nao, ai la nguoi viet?**

## Nguyen tac

1. **1 brief = 1 bai = 1 angle = 1 CTA.** Khong nhoi nhieu message vao 1 bai — can nhieu diem thi tach carousel hoac series.
2. **Angle la goc nhin cu the, khong phai chu de chung.** "Cham soc da" la chu de; "3 thoi quen buoi sang lam da xau di ma nhieu nguoi tuong la tot" la angle.
3. **Hook phai dung doc lap.** Doc cau dau la biet bai noi ve gi — khong can context.
4. **Insight goc phai ghi ro nguon.** Lay tu `09-insight-khach-hang` — bai nay danh vao cau noi noi tam / pain / objection nao, ghi nguyen van.
5. **Bang chung ghi cu the ngay trong brief.** So lieu, testimonial, case study — khong de writer "tim sau".
6. **Toi da 3 diem body.** Can nhieu hon → tach bai khac.

## Quy trinh

### Buoc 1 — Xac dinh vi tri bai trong he thong

Lay tu lich noi dung (01): ngay dang, kenh, format, tang pheu, pillar. Xac dinh muc tieu duy nhat cua bai: reach / trust / conversion / engagement — chi chon 1.

### Buoc 2 — Chot angle va insight goc

- Doc insight tu 09: khach dang o dau trong hanh trinh (chua biet van de / dang tim giai phap / sap mua).
- Chon 1 insight (cau noi noi tam, pain, objection) lam goc — ghi nguyen van vao brief.
- Viet angle: goc nhin cu the khai thac insight do — khong trung voi angle bai da dang gan day.

### Buoc 3 — Viet 3 hook options

- **Hook A — Pain**: bat dau bang noi dau / frustration cua khach.
- **Hook B — Curiosity**: cau hoi / statement gay to mo.
- **Hook C — Contrarian / Surprise**: noi nguoc dieu ai cung nghi.

Kem goi y nen dung hook nao + ly do ngan. Writer duoc chon khac neu giai thich duoc.

### Buoc 4 — Key message va body structure

- Key message: 1 cau duy nhat — thong diep cot loi bai nay can truyen tai.
- Body: toi da 3 diem, moi diem 1 dong trong brief.
- Bang chung / social proof can dua vao: so lieu, testimonial, case study cu the — ghi ro nguon.

### Buoc 5 — CTA va distribution

- CTA chinh: cau CTA cu the, hanh dong duoc — khong chi "Lien he ngay".
- Micro-CTA (neu co): comment tu khoa / save / tag ban be.
- Gio dang theo peak hour tung kenh (xem 01), hashtag 3-5, ke hoach cross-post + chinh gi khi cross, co boost ads sau khi dang khong.

### Buoc 6 — Visual direction va handoff

- Concept visual 1-2 cau, mau chu dao theo brand palette (doc tu brand guideline / `.agents/product-marketing-context.md`), text overlay can co (quote / so lieu).
- Brief chi tiet visual → goi `42-brief-hinh-anh` / `43-brief-carousel` / `44-brief-video-editor`.
- Chi brief visual khi copy da duyet — khong brief song song roi phai sua ca hai.

## Cau truc ket qua

Ten file: `content-brief-[ten-bai]-[YYYYMMDD].md`

```markdown
# Content Brief — [Tieu de noi bo]

## Thong tin bai
| Hang muc | Chi tiet |
|----------|----------|
| Tieu de noi bo | |
| Kenh | |
| Format | video / carousel / static / text / email |
| Tang pheu | TOFU / MOFU / BOFU |
| Pillar | |
| Ngay dang du kien | |
| Deadline duyet | |
| Nguoi viet | |

## Angle & muc tieu
- **Insight goc (tu 09):** "[cau noi noi tam / pain / objection — nguyen van]"
- **Angle chinh:** [goc nhin cu the — khong phai chu de chung]
- **Muc tieu bai nay:** [1 muc tieu duy nhat — reach / trust / conversion / engagement]
- **Khach dang o dau trong hanh trinh:** [chua biet van de / dang tim giai phap / sap mua]

## Hook — 3 phuong an
- **Hook A — Pain:** [...]
- **Hook B — Curiosity:** [...]
- **Hook C — Contrarian / Surprise:** [...]
- **Goi y dung:** [hook nao + ly do ngan]

## Noi dung chinh
- **Key message (1 cau):** [...]
- **Body structure (toi da 3 diem):**
  1. [Diem 1]
  2. [Diem 2]
  3. [Diem 3]
- **Bang chung / social proof:** [so lieu / testimonial / case study cu the + nguon]

## CTA
- **CTA chinh:** [cau CTA cu the]
- **Micro-CTA (neu co):** [comment tu khoa / save / tag]

## Brand voice
- Tone: [tham chieu Brand Voice Document — muc II]
- Banned words can tranh: [tham chieu muc III]

## Visual direction
- **Concept:** [1-2 cau]
- **Mau chu dao:** [theo brand palette hoac mood bai]
- **Text overlay:** [quote / so lieu can dua len anh, video]
- **Brief chi tiet visual:** goi `42-brief-hinh-anh` / `43-brief-carousel` / `44-brief-video-editor`

## Distribution
- **Gio dang:** [peak hour theo kenh]
- **Hashtag:** [3-5 hashtag]
- **Cross-post:** [kenh nao, chinh gi]
- **Boost ads sau khi dang:** Co / Khong
```

## Lien ket skill

- `01-lich-noi-dung`: nguon vi tri bai (ngay, kenh, format, pillar) — chay truoc brief.
- `09-insight-khach-hang`: nguon insight goc — trich nguyen van vao brief.
- `35-brand-voice`: tham chieu tone + banned words trong moi brief.
- `37-caption-social` / `04-script-video` / `05-copy-quang-cao` / `14-email-marketing`: skill san xuat nhan brief nay lam input.
- `42-brief-hinh-anh` / `43-brief-carousel` / `44-brief-video-editor`: brief visual chi tiet sau khi copy duyet.

## Checklist chat luong

- [ ] 1 bai = 1 angle = 1 CTA — khong nhoi nhieu message
- [ ] Co insight goc ghi nguyen van + nguon (09)
- [ ] 3 hook options khac nhau that su (pain / curiosity / contrarian)
- [ ] Key message dung 1 cau
- [ ] Body toi da 3 diem
- [ ] Bang chung cu the co nguon — khong de trong, khong de "tim sau"
- [ ] CTA cu the, hanh dong duoc — khong chung chung
- [ ] Co tham chieu brand voice (tone + banned words)
- [ ] Co visual direction + chi ro goi skill brief visual nao
- [ ] Writer doc xong viet duoc ngay — khong can hoi them cau nao
