---
name: 57-next-ads-plan
description: "Lap plan ads ky sau TU DATA ky truoc: doc report/audit, giu va scale winner, thay loser, dat gia thuyet test moi, budget ky sau theo 3 kich ban. Luon quet data ky truoc truoc khi viet plan. Kich hoat khi user nhac 'plan ads thang toi', 'next ads plan', 'ke hoach ads ky sau', 'plan tu report ads'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "next ads plan"
  - "plan ads thang toi"
  - "ke hoach ads ky sau"
  - "plan ads tu data"
  - "plan campaign moi tu ket qua cu"
  - "media plan ky toi"
  - "plan ads thang sau"
output: "File .md — plan ads ky sau co can cu data: review ky truoc, nhan winner, dung/fix loser, hypothesis moi, budget 3 kich ban, lich theo tuan"
related:
  - 07-bao-cao-marketing
  - 21-audit-ads-performance
  - 03-danh-gia-hieu-suat
  - 54-media-plan
  - 52-account-structure
  - 19-ab-test-setup
  - 10-tinh-kpi-nguoc
---

# Next Ads Plan — Plan Ky Sau Tu Data Ky Truoc

> Plan khong co data cu = doan mo = dot tien. Thu tu bat bien: Quet data → Nhan winner → Fix/dung loser → Test hypothesis moi. Day la skill cuoi chuoi performance va la skill dau cua chu ky moi.

## Thu thap thong tin

### Buoc 0 — LUON quet data cu truoc (input bat buoc)

Truoc khi viet bat ky dong plan nao, phai co:

1. **Performance report ky truoc** (tu `07-bao-cao-marketing` hoac dashboard tracking) — spend, CPL, ROAS, leads, don theo kenh/campaign/creative.
2. **Audit neu ky truoc co van de** (tu `21-audit-ads-performance` / `03-danh-gia-hieu-suat`).
3. **KPI target ky moi** — giu hay doi? (neu doi, tinh lai bang `10-tinh-kpi-nguoc`)
4. **Budget ky moi va offer/san pham moi se chay** (neu co).

Thieu report → dung lai, yeu cau data hoac chay `07-bao-cao-marketing` truoc. Neu chi thieu 1 phan, ghi ro gia dinh trong plan.

## Nguyen tac

1. **Luon quet data truoc.** Khong len plan tu cam tinh hay tu "thay co ve on".
2. **Nhan winner truoc khi test moi.** Von uu tien cho thu da chung minh; cai moi chi duoc 30% budget testing.
3. **Toi da 2-3 hypothesis moi/ky.** Test nhieu hon → khong du data ket luan cai nao.
4. **Moi quyet dinh giu/dung/thay phai co so lieu di kem.** "Creative A CPL 15K vs target 12K, frequency 3.1" — khong ghi "chay kem".
5. **Budget ky sau lap theo 3 kich ban.** Xau / Co so / Tot — cam ket theo Co so, chuan bi san hanh dong cho 2 kich ban con lai.

## Quy trinh

### Buoc 1 — Review ky truoc

| Da work (GIU) | Khong work (DUNG/FIX) | Chua test (THEM VAO) |
|---------------|----------------------|---------------------|
| [winning creative/audience/kenh + so lieu] | [losing ad set + so lieu + ly do] | [hypothesis moi tu quan sat] |

Rut winning patterns:
- Creative type: video / static / carousel — cai nao CPL tot nhat?
- Hook type: pain / curiosity / social proof — hook nao CTR cao nhat?
- Audience: interest / broad / LAL — tep nao re va chat nhat?
- Kenh: kenh nao ROAS cao nhat? Kenh nao dang keo tut trung binh?
- Bai hoc van hanh: gio vang, tan suat refresh creative, loi setup da gap.

### Buoc 2 — Dinh huong ky moi

| Ky plan | Budget tong | Objective | KPI target | Campaign/Offer moi |
|---------|------------|-----------|-----------|--------------------|
| [thang/quy] | [so] | [lead/conv] | CPL [so] / ROAS [so]x / Leads [so] | [neu co] |

### Buoc 3 — Nhan winner

| Winner goc | CPL/ROAS ky truoc | Nhan ban thanh | Thay doi gi | Budget moi | Kenh |
|-----------|-------------------|----------------|-------------|-----------|------|
| [Creative A] | [so] | Giu nguyen + tang budget +20-30% | Khong doi | [so] | [x] |
| [Audience B] | [so] | Duplicate + creative moi | Them 2 variant | [so] | [x] |
| [Hook C] | [so] | Adapt sang kenh moi | Doi format | [so] | [x] |

Ap quy tac `55-scaling-ads`: tang +20-30%/lan, khong x2; giu nguyen winning ad set.

### Buoc 4 — Dung / fix loser

| Campaign / Ad set | Van de (so lieu) | Quyet dinh | Neu fix: thay gi |
|-------------------|------------------|-----------|------------------|
| [ten] | CPL > 2x target 3 ngay | DUNG | — |
| [ten] | CTR < 0.5% | FIX | Doi creative/hook, giu tep |
| [ten] | Frequency > 3.5, CTR giam 30% | FIX | Refresh creative, mo tep |

Moi loser dung phai ghi ly do vao log — de ky sau khong test lai y het.

### Buoc 5 — Phan bo budget ky moi

| Campaign | Muc tieu | Budget/ngay | % Tong |
|----------|---------|------------|--------|
| Scale winner | Maintain + grow | [so] | 50% |
| Testing (hypothesis moi) | Tim winner moi | [so] | 30% |
| Retargeting | Convert warm | [so] | 15% |
| Lookalike | Scale tu seed moi | [so] | 5% |
| **Tong** | | | **100%** |

### Buoc 6 — Budget ky sau theo 3 kich ban

| Kich ban | Gia dinh | Budget | Leads du kien | Hanh dong neu xay ra |
|----------|---------|--------|---------------|---------------------|
| Xau | CPL +30% vs ky truoc (mua cao diem, fatigue) | [so] | [so] | Cat testing con 20%, don ve winner + retarget |
| Co so | CPL bang ky truoc | [so] | [so] | Chay dung plan nay |
| Tot | CPL -20% (winner moi an) | [so] | [so] | Day them budget scale +20%/72h, mo kenh moi |

Cam ket voi stakeholder theo kich ban Co so; 2 kich ban con lai co san action de khong bi dong.

### Buoc 7 — Hypothesis moi can test (toi da 2-3)

| # | Hypothesis ("Neu X thi Y vi Z") | Bien test | Platform | KPI do | Timeline |
|---|--------------------------------|-----------|----------|--------|---------|
| 1 | [vd: Neu dung UGC testimonial thi CPL giam vi trust cao hon] | Creative format | [x] | CPL | 7 ngay |
| 2 | [vd: Neu mo LAL 3% thi volume tang ma CPL giu] | Audience | [x] | CPL | 7 ngay |

Setup va tieu chi ket luan theo `19-ab-test-setup` (1 bien/lan, >=7 ngay, du conversions).

### Buoc 8 — Creative pipeline

| Creative can lam | Type | Hook | Kenh | Deadline | Dung cho |
|-----------------|------|------|------|---------|---------|
| [ten] | Video | Pain | Meta | [ngay] | Testing |
| [ten] | Static | Social proof | Meta | [ngay] | MOFU/Retarget |
| [ten] | UGC | Testimonial | TikTok | [ngay] | Scale |

Luon co 2-3 creative du tru truoc khi ky moi bat dau — khong doi fatigue moi brief.

### Buoc 9 — Lich theo tuan + nguong nghiem thu

| Tuan | Focus | Action | % KPI thang can dat (luy ke) |
|------|-------|--------|------------------------------|
| 1 | Launch winner clones | Setup + launch, verify tracking | 20% |
| 2 | Launch test moi | Chay hypothesis, doc so ngay 3 | 45% |
| 3 | Optimize | Scale winner, pause loser | 70% |
| 4 | Review + chuan bi ky sau | Pull data, viet report, draft plan moi | 100% |

Cuoi moi tuan doi chieu luy ke vs nguong: hut > 15% → kich hoat hanh dong kich ban Xau ngay, khong doi het thang.

## Cau truc ket qua

Ten file: `next-ads-plan-[ten-san-pham]-[YYYYMMDD].md` — gom 9 phan theo dung 9 buoc tren (Review · Dinh huong · Nhan winner · Dung loser · Budget split · 3 kich ban · Hypothesis · Creative pipeline · Lich tuan).

## Lien ket skill

- `07-bao-cao-marketing`: nguon data chinh — chay truoc skill nay.
- `21-audit-ads-performance` / `03-danh-gia-hieu-suat`: neu ky truoc co van de, audit truoc khi plan.
- `10-tinh-kpi-nguoc`: tinh lai KPI khi doi target/budget/offer.
- `54-media-plan`: khi ky moi thay doi lon (kenh moi, offer moi) → lap lai media plan day du.
- `19-ab-test-setup`: chi tiet setup hypothesis test.
- `52-account-structure`: setup campaign moi theo plan nay va launch.

## Checklist chat luong

- [ ] Da doc report/audit ky truoc — plan khong viet tu cam tinh
- [ ] Bang review co du 3 cot: giu / dung-fix / chua test, kem so lieu
- [ ] Winner duoc nhan truoc, tuan thu quy tac scale +20-30%
- [ ] Moi loser dung co ly do ghi vao log
- [ ] Budget split theo 30/50/15/5, cong dung 100%
- [ ] Budget ky sau co 3 kich ban kem hanh dong tuong ung
- [ ] Toi da 2-3 hypothesis, moi cai co bien test + KPI + timeline
- [ ] Creative pipeline co deadline, san 2-3 creative du tru
- [ ] Lich tuan co nguong nghiem thu luy ke 20/45/70/100% KPI thang
