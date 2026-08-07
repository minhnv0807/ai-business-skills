---
name: 67-agency-vendor-brief
description: "Brief va quan ly agency, freelancer, vendor ben ngoai: scope of work, deliverable spec, revision rounds, quy trinh duyet, payment milestone, IP/bao mat, danh gia vendor sau project. Dung khi nhac 'brief agency', 'thue freelancer', 'quan ly vendor', 'scope of work', 'agency khong deliver dung', 'onboard vendor moi'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "brief agency"
  - "thue freelancer"
  - "quan ly vendor"
  - "brief doi tac ben ngoai"
  - "scope of work agency"
  - "agency khong deliver dung"
  - "onboard vendor moi"
  - "brief production house"
output: "File .md — brief du de agency lam dung ma khong can 5 cuoc hop: scope, spec, timeline, payment, IP, evaluation"
related:
  - 64-team-brief
  - 02-brief-chien-dich
  - 41-campaign-asset-list
  - 61-budget-planning
  - 47-design-review
---

# Agency va Vendor Brief

> Agency lam sai thuong khong phai vi ho kem — ma vi brief te va ky vong khong khop tu dau. Brief tot voi agency: it revision, dung han, dung budget. Doi xu voi agency nhu doi tac chuyen nghiep, khong phai nguoi lam thue: brief ro + feedback ro = ket qua tot nhat.

## Thu thap thong tin

Doc campaign brief (`02-brief-chien-dich`) va asset list (`41-campaign-asset-list`) neu co. Neu thieu, hoi toi da 4 cau:

1. **Thue lam gi cu the?** Video production, design, media buying, PR, KOL booking, dev landing page?
2. **Timeline va deadline cung?** Ngay bat dau, ngay phai co final.
3. **Budget da duyet bao nhieu?** Da bao gom VAT chua, dieu khoan thanh toan the nao?
4. **Deliverable cu the can nhan la gi, va ai la dau moi duy nhat phia minh?**

## Nguyen tac

1. **Brief van ban, luon luon.** Du quan he than den dau — noi mieng thi khong co can cu khi tranh chap.
2. **Feedback tu MOT nguoi.** Nhieu nguoi gop y cung luc lam agency roi va keo dai revision.
3. **Chot so vong revision trong phi.** Khong gioi han revision nghia la khong ton trong thoi gian ca hai ben.
4. **Ghi ro cai KHONG bao gom.** Day la cach duy nhat chan scope creep.
5. **Payment theo milestone.** Khong tra 100% truoc khi bat dau.
6. **Danh gia vendor sau moi project.** Xay database noi bo de lan sau chon nhanh va dung.

## Quy trinh

### Buoc 1 — Chuan bi truoc khi tim vendor

Chot: muc tieu project (do duoc), budget tran, deadline cung, va deliverable toi thieu chap nhan duoc. Neu chua ro 4 thu nay, chua nen di brief agency.

### Buoc 2 — Viet brief va gui

Dung template o duoi. Gui kem brand guideline (`46-brand-guideline`), brand voice (`35-brand-voice`), va 3-5 reference tot + reference khong muon.

### Buoc 3 — Nhan bao gia va chot scope

So sanh bao gia theo cung scope, khong so sanh theo tong tien. Chot lai bang van ban: scope, so vong revision, timeline, payment milestone.

### Buoc 4 — Van hanh trong project

Giu dau moi duy nhat hai ben. Feedback dung han da cam ket (agency tre vi minh feedback cham la loi minh). Feedback phai cu the va hanh dong duoc — khong noi "can hay hon".

### Buoc 5 — Nghiem thu va danh gia

Doi chieu deliverable spec. Duyet visual qua `47-design-review`, duyet noi dung qua `62-marketing-review`. Sau khi thanh toan xong, cham diem vendor va ghi vao database.

## Cau truc ket qua

```markdown
# Agency/Vendor Brief — [Ten project]

## 1. Thong tin project
| Hang muc | Chi tiet |
|----------|----------|
| Ten project | |
| Ben thue | [Cong ty] — [Nguoi phu trach] — [Email/Phone] |
| Vendor | [Ten] — [Contact person] — [Email] |
| Loai cong viec | |
| Ngay bat dau / deadline | |
| Tong budget (da/chua VAT) | |

## 2. Boi canh va muc tieu
Ve brand: [2-3 cau — brand la ai, dang lam gi, project nay fit vao chien luoc nao]
Muc tieu project: [1 cau do duoc — vi du: "5 video UGC de test lam paid creative tren Meta, muc tieu CTR > 2%"]

| Metric | Target | Cach do | Han |
|--------|--------|---------|-----|

## 3. Scope of work
| # | Deliverable | Spec chi tiet | Format output | So luong |
|---|-------------|---------------|---------------|----------|

Revision bao gom trong phi: [N] vong theo feedback. Vong bo sung: [phi]/vong.

**KHONG bao gom:** [liet ke ro de chan scope creep]

## 4. Brand guideline phai tuan theo
- Palette / typography / logo: [link brand kit]
- Tone of voice: [link brand voice doc]
- Reference tot: [3-5 link + ly do]
- Reference KHONG lam theo: [link + ly do]

## 5. Deliverable spec
| Deliverable | Platform | Size/Ratio | Thoi luong | Format file | Ngon ngu |
|-------------|----------|------------|------------|-------------|----------|

## 6. Quy trinh duyet
| Vong | Vendor nop | Han feedback tu minh | Ghi chu |
|------|------------|----------------------|---------|
| Draft | | +2 ngay lam viec | |
| Revision | | +1 ngay lam viec | |
| Final | | | Hard deadline |

Tham quyen duyet: creative — leader; thay doi budget — CEO; gia han timeline — leader neu duoi 3 ngay, CEO neu tren 3 ngay.

## 7. Thanh toan
| Milestone | % | So tien | Dieu kien | Thoi han chuyen |
|-----------|---|---------|-----------|-----------------|
| Ky hop dong | 30% | | Hop dong da ky | Truoc khi bat dau |
| Duyet draft | 40% | | Draft duoc duyet | Trong 3 ngay |
| Ban giao final | 30% | | Nghiem thu final | Trong 5 ngay |

## 8. Giao tiep
Dau moi duy nhat: [ben minh] / [ben vendor]. Kenh chinh: [email/Zalo/Slack]. Nhip hop: [weekly / theo milestone]. SLA phan hoi cua minh: [N] ngay lam viec.

## 9. So huu tri tue va bao mat
- Toan bo deliverable thuoc so huu ben thue sau khi thanh toan day du.
- Vendor khong dang portfolio/social ve project khi chua co dong y bang van ban.
- Thong tin project la bao mat, khong chia se ben thu ba.
- Revision sau khi da nghiem thu final: tinh phi bo sung.

## 10. Danh gia vendor sau project
| Tieu chi | Diem 1-5 | Ghi chu |
|----------|----------|---------|
| Chat luong output | | |
| Dung han | | |
| Giao tiep | | |
| Toc do phan hoi | | |
| Tuong xung gia tien | | |
| **Tong the** | | |

Tai su dung lan sau: Co / Khong — ly do.
```

## Red flag khi lam viec voi vendor

- Nhan brief xong khong hoi lai cau nao — nhieu kha nang chua doc ky.
- Timeline "tuy ben ban" — khong tu cam ket deadline.
- Khong co dau moi duy nhat, nhieu nguoi cung lien he.
- Hua revision khong gioi han — thuong di kem chat luong vong dau thap.
- Yeu cau thanh toan 100% truoc khi bat dau.
- Bao gia thap bat thuong so voi mat bang — thuong thieu scope hoac se phat sinh.

## Lien ket skill

- `02-brief-chien-dich`: nguon context campaign cho phan boi canh va muc tieu.
- `41-campaign-asset-list`: danh sach deliverable can thue ngoai.
- `61-budget-planning`: xac dinh budget tran truoc khi di brief.
- `47-design-review` va `62-marketing-review`: gate nghiem thu output.
- `64-team-brief`: dung khi nguoi nhan la nhan su noi bo thay vi vendor.

## Checklist chat luong

- [ ] Muc tieu project do duoc, khong phai "lam cho hay".
- [ ] Scope co ca phan bao gom va KHONG bao gom.
- [ ] So vong revision trong phi da duoc ghi ro.
- [ ] Deliverable co spec ky thuat day du (size, format, thoi luong, ngon ngu).
- [ ] Timeline co ca han vendor nop va han minh feedback.
- [ ] Payment chia milestone, khong tra het truoc.
- [ ] Da ghi dieu khoan IP va bao mat.
- [ ] Co dau moi duy nhat moi ben.
- [ ] Co bang danh gia vendor de dung sau project.
