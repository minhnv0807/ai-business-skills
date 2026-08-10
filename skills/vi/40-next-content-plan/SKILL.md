---
name: 40-next-content-plan
description: "Dung khi da co ket qua audit va can lap plan content ky sau TU DATA chu khong doan — ty le 70 giu winner, 20 toi uu bien the, 10 thu nghiem moi, toi da 2 gia thuyet moi mot ky. Kich hoat khi user nhac 'next content plan', 'plan thang toi', 'content ky sau lam gi', 'dua vao data lap ke hoach', 'thang sau viet gi'. Khong dung cho — audit de biet cai gi work thi chay skill 39-content-audit truoc; xep lich dang theo ngay thi dung skill 01-lich-noi-dung."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "next content plan"
  - "plan content thang toi"
  - "content plan ky sau"
  - "ke hoach content dua tren data"
  - "len plan tu data content cu"
  - "content thang sau"
  - "plan dua tren report"
output: "File .md — review ky truoc, dinh huong ky moi, content mix 70/20/10, bang nhan winner, hypothesis test (toi da 2), lich tong quan 4 tuan, phan cong"
related:
  - 39-content-audit
  - 07-bao-cao-marketing
  - 01-lich-noi-dung
  - 36-content-brief
  - 19-ab-test-setup
  - 13-phan-tich-du-lieu
---

# Next Content Plan

> Plan khong co data cu = doan mo. Thu tu cung: quet data → nhan winner → test hypothesis moi → len lich. Khong thay doi tat ca cung luc — ky nao cung dap di xay lai la khong bao gio biet dieu gi work.

## Thu thap thong tin — LUON quet data cu truoc

Truoc khi viet bat ky dong plan nao, can co:

1. **Content audit ky truoc** (tu `39-content-audit`) — neu chua co, chay 39 truoc, khong lap plan chay.
2. **Report ky truoc** (tu `07-bao-cao-marketing`) neu co.
3. **KPI target ky moi** — muc tieu thay doi gi so voi ky truoc?
4. **Bien dong ky moi:** campaign / event / launch sap dien ra? Budget / team capacity thay doi?

Neu user khong cung cap duoc data toi thieu (audit hoac danh sach bai + metric), dung lai va de xuat chay `39-content-audit` truoc.

## Nguyen tac

1. **Data truoc, plan sau.** Moi thay doi trong plan phai trace ve 1 dong data ky truoc.
2. **Nhan winner truoc khi thu moi.** Winner da chung minh — nhan ban voi bien the nho truoc khi dat cuoc vao y tuong la.
3. **Ti le 70/20/10:**
   - 70% san luong = format + angle da chung minh (winner giu nguyen cong thuc).
   - 20% = bien the toi uu tu winner (doi hook, doi kenh, doi do dai — giu loi).
   - 10% = thu nghiem hoan toan moi (hypothesis).
4. **Toi da 2 hypothesis moi/ky.** Test nhieu hon khong du data de ket luan cai nao work.
5. **Loser khong tu dong bo han.** Phan biet: loser do angle sai (bo) vs loser do execution kem (sua execution, thu lai 1 lan).
6. **Plan tong quan theo tuan — chi tiet tung ngay giao cho `01-lich-noi-dung`.**

## Quy trinh

### Buoc 1 — Review ky truoc

Tu audit (39) + report (07), dien bang 3 cot:

| Da work (GIU) | Khong work (DUNG) | Chua thu (TEST MOI) |
|---------------|-------------------|---------------------|
| [format/angle/kenh + so lieu chung minh] | [+ ly do tu data] | [y tuong tu pattern hoac insight moi] |

### Buoc 2 — Dinh huong ky moi

| Ky lap plan | Muc tieu chinh | KPI uu tien | Campaign kem | Thay doi lon |
|-------------|----------------|-------------|--------------|--------------|
| | | | | |

Muc tieu chinh chi 1 — reach / lead / conversion / retention. KPI uu tien la metric se dung de danh gia ky nay.

### Buoc 3 — Content mix ky moi (ap ti le 70/20/10)

| Nhom | Ti le | Noi dung |
|------|-------|----------|
| Proven (70%) | ~70% so bai | Winner giu nguyen cong thuc — chi thay chu de |
| Toi uu (20%) | ~20% so bai | Bien the tu winner: doi hook / kenh / do dai |
| Thu nghiem (10%) | ~10% so bai | Hypothesis moi (toi da 2) |

Kem bang dieu chinh ti le pheu:

| Loai | Ti le ky truoc | Ti le ky moi | Ly do thay doi (tu data) |
|------|----------------|--------------|--------------------------|
| TOFU / MOFU / BOFU | | | |
| Video vs Static | | | |

### Buoc 4 — Nhan winner

| Winner goc | Ket qua (metric) | Nhan ban thanh | Thay doi gi | Kenh / Thoi diem |
|------------|------------------|----------------|-------------|------------------|
| | | | | |

Moi winner nhan thanh 2-3 bien the — giu cau truc hook + format, thay chu de / goc quay / nhan vat.

### Buoc 5 — Hypothesis moi (toi da 2)

| Hypothesis | Format | Kenh | KPI do | Thoi gian test | Tieu chi ket luan |
|-----------|--------|------|--------|----------------|-------------------|
| | | | | | |

Hypothesis phai viet dang kiem chung duoc: "Neu [thay doi X] thi [metric Y] se [tang/giam Z%]". Setup test chi tiet → goi `19-ab-test-setup`.

### Buoc 6 — Lich tong quan + phan cong

| Tuan | Theme | Kenh uu tien | So bai | Highlight (winner nhan ban / hypothesis) |
|------|-------|--------------|--------|------------------------------------------|
| Tuan 1 | | | | |
| Tuan 2 | | | | |
| Tuan 3 | | | | |
| Tuan 4 | | | | |

| Nguoi | Trach nhiem | So bai/tuan | Kenh chinh |
|-------|-------------|-------------|------------|
| | | | |

Chi tiet tung ngay (gio dang, hook, CTA, trang thai) → chay `01-lich-noi-dung`. Brief tung bai → `36-content-brief`.

## Cau truc ket qua

Ten file: `next-content-plan-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Next Content Plan — [Ky] — [San pham/Brand]

## I. Review ky truoc
| Da work (giu) | Khong work (dung) | Chua thu (test moi) |
|---------------|-------------------|---------------------|

## II. Dinh huong ky moi
| Ky lap plan | Muc tieu chinh | KPI uu tien | Campaign kem | Thay doi lon |

## III. Content mix ky moi — 70/20/10
| Nhom | Ti le | So bai | Noi dung |
[+ bang dieu chinh TOFU/MOFU/BOFU, video vs static — kem ly do tu data]

## IV. Nhan winner
| Winner goc | Ket qua | Nhan ban thanh | Thay doi gi | Kenh / Thoi diem |

## V. Hypothesis moi (toi da 2)
| Hypothesis | Format | Kenh | KPI do | Thoi gian test | Tieu chi ket luan |

## VI. Lich tong quan
| Tuan | Theme | Kenh uu tien | So bai | Highlights |

## VII. Phan cong
| Nguoi | Trach nhiem | So bai/tuan | Kenh chinh |
```

## Lien ket skill

- `39-content-audit`: input bat buoc — chay truoc plan nay. Khong co audit = khong co plan.
- `07-bao-cao-marketing`: report ky truoc bo sung goc nhin KPI tong.
- `01-lich-noi-dung`: nhan plan nay va trien khai lich chi tiet tung ngay.
- `36-content-brief`: brief tung bai theo plan.
- `19-ab-test-setup`: setup test cho 2 hypothesis moi.
- `13-phan-tich-du-lieu`: ho tro doc data khi can dao sau.

## Checklist chat luong

- [ ] Co data ky truoc lam can cu (audit 39 hoac report 07) — khong plan tu cam tinh
- [ ] Moi thay doi trong plan trace duoc ve data ky truoc
- [ ] Content mix theo ti le 70/20/10 — cong du 100%
- [ ] Winner co ke hoach nhan ban cu the (2-3 bien the/winner)
- [ ] Toi da 2 hypothesis moi — viet dang kiem chung duoc, co tieu chi ket luan
- [ ] Loser da phan biet: angle sai (bo) vs execution kem (sua, thu lai)
- [ ] Ti le pheu ky moi co ly do thay doi tu data — khong doi tuy hung
- [ ] Lich tong quan du 4 tuan + phan cong ro nguoi
- [ ] Da tro sang `01-lich-noi-dung` cho lich chi tiet va `19-ab-test-setup` cho hypothesis
