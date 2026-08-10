---
name: 55-scaling-ads
description: "Dung khi da co winner va muon tang quy mo ma khong lam hong — 7 dieu kien du de scale, tang doc +20-30% moi lan, mo rong ngang bang tep va kenh moi, va rui ro reset learning phase. Kich hoat khi user nhac 'scale ads', 'tang budget', 'nhan doi ngan sach', 'ads dang tot muon day manh', 'horizontal scaling', 'tang chi tieu'. Quy tac cung: khong tang budget khi CPL dang xau. Khong dung cho — CPL dang xau thi chay skill 21-audit-ads-performance truoc; nhan tep warm thi dung skill 56-retargeting-plan."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "scale ads"
  - "tang budget"
  - "scale campaign"
  - "nhan winner"
  - "scale winning ad"
  - "vertical scaling"
  - "horizontal scaling"
  - "mo rong campaign"
output: "File .md — scaling roadmap theo tuan, budget rules, checklist truoc scale, dau hieu dung scale, lich refresh creative"
related:
  - 19-ab-test-setup
  - 21-audit-ads-performance
  - 03-danh-gia-hieu-suat
  - 56-retargeting-plan
  - 52-account-structure
  - 57-next-ads-plan
---

# Scaling Ads — Scale Winner An Toan

> Scale = tang spend ma giu nguyen (hoac cai thien) efficiency. Scale sai = CPL/CPA tang vot, dot budget. QUY TAC CUNG: khong tang budget khi CPL dang xau — fix van de truoc (goi `21-audit-ads-performance`), scale sau.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Campaign da co winning ad chua?** CPL/CPA on dinh bao nhieu ngay roi? (can >=7 ngay)
2. **Metric hien tai?** CPL / CPA / ROAS / Frequency / Reach vs audience size?
3. **Budget hien tai/ngay va budget target muon dat?**
4. **Platform va co bao nhieu creative du tru?** (khong scale khi chi co 1 creative)

## Nguyen tac

1. **Khong tang budget khi CPL dang xau.** CPL vuot target → audit va fix truoc, scale la do them dau vao lua.
2. **+20-30%/lan, khong x2 ngay.** Tang dot ngot → reset learning phase → CPL nhay vot. Muc an toan nhat: +20% moi 72h (khop Quality Gate G8 cua repo).
3. **Monitor 24-48h sau moi lan tang** truoc khi tang tiep.
4. **Khong chinh winning ad set khi dang scale.** Moi thay doi lon (budget dot ngot, audience, creative trong ad set) deu co the reset learning.
5. **Luon co creative reserve.** Toi thieu 2-3 creative moi san sang truoc khi scale — scale lam fatigue den nhanh hon.
6. **Vertical truoc, horizontal song song.** Tang budget winner truoc; dong thoi nhan tep/creative de khong phu thuoc 1 diem.

## Quy trinh

### Buoc 1 — Dieu kien DU de scale (phai dat TAT CA)

- [ ] Chay on dinh >= 7 ngay
- [ ] CPL/CPA <= target trong >= 5/7 ngay gan nhat
- [ ] Frequency < 2.5 (tep chua bao hoa)
- [ ] Reach / audience size < 50% (volume tep con de mo)
- [ ] Khong dang trong learning phase
- [ ] Tracking verify dung (khong scale tren data sai)
- [ ] Co >= 2 creative moi du tru

Thieu bat ky muc nao → chua scale; quay ve toi uu hoac chuan bi them.

### Buoc 2 — Vertical scaling (tang budget)

| Muc do | Muc tang | Tan suat | Dieu kien |
|--------|---------|---------|-----------|
| Conservative | +20% | Moi 72h | CPL on dinh o target |
| Moderate | +30% | Moi 2-3 ngay | CPL tot hon baseline ro rang |
| Aggressive | +50% | 1 lan duy nhat | Campaign rat stable, chap nhan rui ro |
| KHONG LAM | x2 ngay | — | CPL se tang vot, reset learning |

Sau moi lan tang, monitor 24-48h. **Day la nguong DELTA — do muc tang so voi chinh no truoc khi scale, khac voi thang CPA tuyet doi trong Gate 1:**
- CPL tang <= 20% so voi truoc khi tang → giu, cho on dinh roi tang tiep
- CPL tang > 20% → HOLD, khong tang tiep
- CPL tang > 40% → giam ve budget cu, cho 48h on dinh lai

> Hai nguong chay song song, khong thay the nhau. Neu CPL sau khi scale vuot 3x CPA muc tieu thi Gate 1 thang: tat, du muc tang chi 15%.

### Buoc 3 — Horizontal scaling (mo rong)

1. **Duplicate winning ad set + tep moi:** giu nguyen creative; test same demo voi interest khac / LAL 1% → 3% → 5% / broad. Nho exclude tep goc de tranh overlap.
2. **Creative moi tren winning audience:** giu nguyen tep; them 2-3 variant (doi hook, doi format) — chay o campaign testing, khong nhet vao winning ad set.
3. **Kenh moi voi winning message:** copy hook thang tu Meta → adapt format cho TikTok (hoac nguoc lai). Giu message cot loi, doi cach the hien.

### Buoc 4 — Rui ro reset learning phase

| Hanh dong | Co reset learning? | Cach lam an toan |
|-----------|--------------------|------------------|
| Tang budget <= 20-30% | Thuong khong | Tang tung buoc, cho 72h |
| Tang budget > 30-50% | Co the | Chia nho thanh nhieu lan |
| Doi audience / placement / bid | Co | Duplicate ad set moi thay vi sua truc tiep |
| Them/xoa creative trong ad set | Co the | Them o ad set moi hoac campaign testing |
| Pause roi bat lai lau | Co the | Han che pause winner; dieu tiet bang budget |

### Buoc 5 — Scaling roadmap mau (dieu chinh theo budget thuc)

| Tuan | Budget/ngay (vi du) | Action | KPI checkpoint |
|------|--------------------|--------|----------------|
| 1 (Testing) | 300-500K | Test 3-5 ad set | CPL < target |
| 2 | 500-800K | +20% winner, dung loser | CPL on dinh 5/7 ngay |
| 3 | 800K-1.5M | +20-30% tiep, duplicate winner sang tep moi | Volume tang, CPL giu |
| 4 | 1.5M-3M | Horizontal: LAL/broad/kenh moi | CPL giu trong nguong |
| Thang 2+ | 3M+ | Full scale + creative moi lien tuc | ROAS >= target |

### Buoc 6 — Lich scale hang tuan (nhip van hanh)

- **Daily 15 phut:** CPL hom qua vs target → quyet dinh scale/hold/pause; check frequency > 2.5 → chuan bi thay creative; check pace spend.
- **Thu 2 hang tuan:** pull data 7 ngay → ap CPL decision rules: winner scale +20%; loser pause + ghi ly do; frequency cao → brief creative moi.

## Dau hieu DUNG scale ngay

- CPL tang > 30% so voi baseline sau 2 ngay lien tiep
- Frequency vuot 3.5
- ROAS giam > 25%
- CTR giam > 40% so voi luc on dinh
- Delivery drop dot ngot (check reject / learning limited)

→ Giam ve budget gan nhat con hieu qua, cho on dinh 48-72h, chay `21-audit-ads-performance` neu khong hoi phuc.

## Creative refresh schedule khi scale

| Tin hieu | Muc do | Action |
|---------|--------|--------|
| Frequency > 2.5 | Canh bao | Chuan bi creative moi (brief ngay) |
| Frequency > 3.5 | Khan cap | Launch creative moi ngay |
| CTR giam > 30% | Tuan 2-3 | Refresh hook, giu body |
| Dinh ky | Moi 2-3 tuan | Luon co 2-3 creative moi de swap |

## Cau truc ket qua

Ten file: `scaling-plan-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Scaling Plan — [Campaign/San pham]
Baseline: CPL [so] · Budget hien tai [so]/ngay · Target [so]/ngay

## 1. Checklist dieu kien scale   [7 muc — trang thai tung muc]
## 2. Vertical plan               [lich tang %, moc kiem tra 24-48h]
## 3. Horizontal plan             [tep moi / creative moi / kenh moi + exclusions]
## 4. Roadmap theo tuan           [budget, action, checkpoint]
## 5. Nguong dung scale           [cac dau hieu + hanh dong]
## 6. Creative pipeline           [creative du tru + deadline]
```

## Lien ket skill

- `19-ab-test-setup`: winner phai qua test dung chuan truoc khi scale.
- `21-audit-ads-performance`: audit truoc khi scale neu CPL chua on; audit khi scale drop.
- `03-danh-gia-hieu-suat`: daily/weekly check va decision rules.
- `56-retargeting-plan`: scale cold luon di kem tang retarget (them volume warm).
- `52-account-structure`: tach winner ra campaign scale (CBO) dung cau truc.
- `57-next-ads-plan`: ket qua scale ky nay la input plan ky sau.

## Checklist chat luong

- [ ] Checklist 7 dieu kien scale duoc kiem tra day du truoc khi de xuat tang budget
- [ ] Muc tang tuan thu +20-30%/lan, co moc monitor 24-48h
- [ ] Horizontal plan co exclusion tranh overlap tep goc
- [ ] Co bang rui ro reset learning va cach lam an toan
- [ ] Co dau hieu dung scale voi nguong so cu the
- [ ] Co creative reserve >= 2 truoc khi scale
- [ ] Nhac lai quy tac: CPL dang xau = khong tang budget
