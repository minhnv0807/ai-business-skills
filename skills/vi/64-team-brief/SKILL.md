---
name: 64-team-brief
description: "Brief giao viec cho tung thanh vien team marketing va template hop lien phong ban: task cu the, deadline theo gio, definition of done, constraint, check-in point. Dung khi nhac 'giao task', 'brief cho nhan vien', 'brief 1:1', 'phan cong cong viec', 'define done', 'template hop', 'agenda hop phong ban'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "brief cho nhan vien"
  - "giao task cho team"
  - "team brief"
  - "phan cong cong viec"
  - "brief 1:1"
  - "definition of done"
  - "template hop phong ban"
  - "agenda hop marketing"
output: "File .md — task brief theo role (writer/designer/media buyer) hoac bien ban hop co agenda + action item co owner va deadline"
related:
  - 02-brief-chien-dich
  - 62-marketing-review
  - 65-team-performance-review
  - 41-campaign-asset-list
  - 67-agency-vendor-brief
---

# Team Brief va Template Hop

> Brief tot = nguoi nhan biet chinh xac lam gi, den bao gio, xong khi nao la xong. "Lam content hay" khong phai brief. "Viet 3 caption Facebook goc pain, 200 chu, nop thu 4 truoc 9h" moi la brief. Leader dau tu 30 phut viet brief tot tiet kiem 3 gio sua di sua lai.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` va campaign brief hien co neu co. Neu thieu, hoi toi da 4 cau:

1. **Task gi, thuoc campaign/objective nao?** Mo ta cu the deliverable, khong noi chung chung.
2. **Giao cho ai, ho dang co capacity khong?** Role gi (writer, designer, media buyer, sales)?
3. **Deadline that la khi nao?** Ngay + gio cu the — "cuoi tuan" va "ASAP" khong phai deadline.
4. **"Xong" trong nhu the nao?** Tieu chi nghiem thu do duoc, va nop vao dau.

## Nguyen tac

1. **Deadline theo gio.** Ghi ro ngay va gio; deadline mo ho tao ra ky vong lech nhau.
2. **Co van ban cho task quan trong.** Khong brief bang mieng roi trach nguoi lam sai.
3. **Ghi ro cai KHONG can lam.** Chan over-deliver va lam lac scope.
4. **Brief khac micromanage.** Chot ro output va tieu chuan, ton trong cach nguoi ta lam.
5. **Brief sai nhieu lan la loi brief.** Neu cung mot nguoi nham lien tuc, sua brief truoc khi sua nguoi.
6. **Xac nhan hai chieu.** Nguoi nhan phai confirm hieu va dong y deadline truoc khi tinh la da giao.

## Quy trinh

### Buoc 1 — Xac dinh scope va nguoi nhan

Kiem tra capacity truoc khi giao: nguoi do dang giu bao nhieu task, deadline nao truoc. Neu qua tai, chon giua doi deadline, giam scope, hoac doi nguoi — khong giao chong len roi hy vong ho tu xoay.

### Buoc 2 — Viet brief theo template role

Chon template theo role o phan duoi. Moi brief phai co du: context (tai sao), deliverable (lam gi), done criteria (xong khi nao), reference (mau tot va mau khong lam), constraint (gioi han bat buoc).

### Buoc 3 — Set check-in point cho task phuc tap

Task tren 3 ngay hoac nhieu deliverable: chot moc nop draft de review giua chung. Tranh de den deadline moi phat hien di sai huong.

### Buoc 4 — Giao va xac nhan

Hoi "co cau hoi gi khong", nhan confirm hieu + dong y deadline, set nhac follow-up truoc han 1 ngay.

### Buoc 5 — Nghiem thu theo done criteria

Doi chieu dung checklist da ghi trong brief. Neu output lech, chi ro lech o tieu chi nao — khong feedback cam tinh. Duyet noi dung/creative: goi `62-marketing-review`; duyet visual: goi `47-design-review`.

## Cau truc ket qua — Task brief

```markdown
# Task Brief — [Ten task]

Nguoi nhan: [ten] · Giao boi: [leader] · Ngay giao: [date]
Deadline: [thu, ngay/thang, truoc gio]
Priority: Urgent / High / Normal

## Tai sao task nay can lam
[2-3 cau: task fit vao campaign/objective nao, tai sao deadline do quan trong]

## Can lam gi
| # | Deliverable | Spec chi tiet | Format | So luong |
|---|-------------|---------------|--------|----------|
| 1 | | | | |
| 2 | | | | |

**Khong can lam:** [liet ke ro thu ngoai scope]

## Done khi nao
- [ ] [Tieu chi 1 — do duoc, khong mo ho]
- [ ] [Tieu chi 2]
- [ ] Nop vao: [folder / channel / cach nop]

## Tai lieu tham khao
- Brand voice / brand guideline: [link]
- Campaign brief: [link]
- Reference tot: [link + ly do tot]
- Reference KHONG lam theo: [link + ly do]

## Constraint
- [Gioi han bat buoc: tu cam dung, claim khong duoc noi, format bat buoc]

## Check-in point
- [Ngay]: nop draft dau de review
- [Ngay]: final sau khi nhan feedback
- Neu bi block hoac khong chac: bao ngay, khong tu mo
```

## Template brief theo role

**Writer:** task (so luong + format + goc + platform) · tone (reference cu the) · key message 1 cau · must include (social proof / CTA / so lieu) · do dai · deadline · noi nop.

**Designer:** task (so luong + format + platform) · size pixel · copy text chinh xac de paste · brand reference · visual reference · mood 2 tinh tu · deadline · format file + folder nop. Chi tiet hon: goi `42-brief-hinh-anh` hoac `43-brief-carousel`.

**Media buyer:** task (setup campaign ten + platform) · objective · audience (link audience research) · creative (link file da duyet) · budget/ngay · KPI target (CPL max / ROAS min) · launch date · tan suat bao cao.

**Sales/CSKH:** task · nguon lead · SLA phan hoi · script tham chieu · thong tin phai ghi lai vao CRM · tieu chi chuyen lai marketing.

## Template hop lien phong ban

```markdown
# Bien ban hop — [Chu de] — [Date]

Thanh phan: [ten + phong ban] · Chu tri: [ten] · Thu ky: [ten]
Thoi luong: [45-60 phut]

## Agenda
| # | Noi dung | Nguoi trinh bay | Thoi luong |
|---|----------|-----------------|------------|
| 1 | Ket qua ky truoc vs target | | 10p |
| 2 | Van de dang chan tien do | | 15p |
| 3 | Quyet dinh can chot | | 20p |
| 4 | Phan cong ky toi | | 10p |

## Quyet dinh da chot
| Quyet dinh | Can cu (data/insight) | Nguoi chiu trach nhiem | Review lai khi nao |
|------------|----------------------|------------------------|--------------------|

## Action item
| Viec | Owner | Deadline | Done khi |
|------|-------|----------|----------|

## Van de chua chot
| Van de | Can them gi de quyet | Ai theo | Han |
```

Nguyen tac hop: khong hop de bao cao so lieu (gui truoc bang van ban), chi hop de chot quyet dinh va go block. Moi hop ket thuc phai co action item co owner va deadline — khong co thi hop do khong can dien ra.

## Lien ket skill

- `02-brief-chien-dich`: nguon context campaign de viet task brief.
- `41-campaign-asset-list`: danh sach asset can giao cho designer.
- `62-marketing-review`: gate duyet content/ads sau khi nhan output.
- `47-design-review`: gate duyet visual.
- `65-team-performance-review`: on-time rate va revision rate lay tu lich su brief.
- `67-agency-vendor-brief`: khi nguoi nhan la agency/freelancer thay vi nhan su noi bo.

## Checklist chat luong

- [ ] Deadline co ngay va gio cu the.
- [ ] Deliverable co so luong, format, spec — khong mo ho.
- [ ] Co muc "khong can lam" de chan lac scope.
- [ ] Done criteria do duoc, khong phai cam nhan.
- [ ] Co reference tot va reference khong lam theo.
- [ ] Co noi nop cu the (folder/channel).
- [ ] Da hoi "co cau hoi gi khong" va nhan confirm tu nguoi nhan.
- [ ] Da set nhac follow-up truoc deadline 1 ngay.
