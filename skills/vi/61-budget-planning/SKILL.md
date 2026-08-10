---
name: 61-budget-planning
description: "Dung khi can chia TIEN marketing di dau bao nhieu — phan bo theo kenh, theo tang pheu va theo thang; ti le test vs scale; nguong tang va nguong cat lo; quy du phong; bang tracker chi tieu va nhip review. Kich hoat khi user nhac 'phan bo ngan sach', 'budget marketing', 'chi bao nhieu cho ads', 'ngan sach quy toi', 'budget allocation', 'nguong cat lo', 'tien it nen do vao dau', 'tieu het budget ma khong biet di dau'. Khong dung cho — tinh nguoc ngan sach can tu muc tieu doanh thu thi dung skill 10-tinh-kpi-nguoc; chia ngan sach chi tiet mot ky ads theo funnel thi dung skill 54-media-plan; ke hoach marketing tong the thi dung skill 00-ke-hoach-mkt."
metadata:
  version: 1.0.1
  category: strategy
license: MIT
triggers:
  - "phan bo ngan sach"
  - "budget planning"
  - "budget marketing"
  - "ngan sach campaign"
  - "budget quy"
  - "chi bao nhieu cho ads"
  - "budget allocation"
  - "nguong cat lo"
output: "File .md — budget plan: overview, phan bo theo kenh / funnel / campaign / thang, ti le test vs scale, nguyen tac dieu chinh + nguong cat lo, tracker, review cadence"
related:
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 54-media-plan
  - 55-scaling-ads
  - 21-audit-ads-performance
  - 07-bao-cao-marketing
---

# Budget Planning — Ngan Sach Marketing

> Budget khong phai con so co dinh — la cong cu ra quyet dinh: dat cuoc vao dau, rut ve khi nao. Leader phai biet: tong dang tieu bao nhieu, ROI tung kenh la gi, cai nao can tang, cai nao can cat. Goi `10-tinh-kpi-nguoc` de tinh budget toi thieu tu revenue target truoc khi phan bo.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, ke hoach marketing va report ky truoc neu co. Neu thieu, hoi toi da 4 cau:

1. **Budget tong va ky ke hoach?** Tong bao nhieu, cho thang / quy / nam?
2. **Revenue target ky nay?** De tinh marketing % of revenue va budget toi thieu.
3. **Kenh dang chay va ROI ky truoc?** Meta / TikTok / Google / Zalo / Email / Agency — kenh nao ROAS/CPL tot nhat?
4. **Co campaign lon nao can reserve budget khong?** Launch, Tet, seasonal peak?

## Nguyen tac

1. **Budget follow performance** — khong cung nhac theo plan ban dau. Kenh work → tang; kenh khong work → cat.
2. **Luon giu 10-15% reserve** — khong allocate het ngay dau ky. Reserve dung cho co hoi bat ngo hoac su co.
3. **Moi dong chi ra phai co KPI do duoc** — khong co "branding khong do duoc".
4. **Khong phan bo deu** — tap trung vao kenh work nhat; kenh moi chi cap budget test toi thieu (10-15%) truoc.
5. **Tinh nguoc tu doanh thu, khong tu kenh** — budget la ket qua cua bai toan revenue, khong phai con so tuy hung.

## Quy trinh

### Buoc 1 — Chon phuong phap thiet lap budget

| Phuong phap | Cach tinh | Uu diem | Nhuoc diem |
|-------------|-----------|---------|------------|
| % Doanh thu | Budget = X% doanh thu ky vong | Don gian | Khong phan anh giai doan tang truong |
| Tinh nguoc tu muc tieu (khuyen dung) | Dat doanh thu → tinh nguoc CAC/CPL | Logic, co can cu | Can biet CAC/CPL lich su |
| Theo doi thu | Benchmark ngan sach nganh | Tranh under-invest | Khong phan anh dieu kien rieng |

Cong thuc tinh nguoc 7 buoc (chi tiet dung `10-tinh-kpi-nguoc`):

```
1. Doanh thu muc tieu
2. / AOV                      = So don can
3. / CVR chot (30-50%)        = So hot lead can
4. / CVR nurture (50-60%)     = So warm lead can
5. / CVR thu lead (20-40%)    = Tong reach can
6. Tong lead x CPL            = Budget ads toi thieu
7. + Content + Tool + Agency  = Total marketing budget
```

Lap 3 scenario: Conservative (CVR thap hon TB nganh, CPL cao hon) · Base case (bang TB nganh) · Optimistic (sau khi toi uu). Ke hoach chinh dung Base, chuan bi tam ly bang Conservative.

### Buoc 2 — Phan bo tong quan theo bucket

| Bucket | % goi y | Muc dich |
|--------|---------|----------|
| Paid Ads (Performance) | 50-65% | Meta, TikTok, Google, Zalo |
| Content Production | 10-15% | Video, design, copywriting |
| KOL / KOC / Seeding | 5-10% | Social proof, UGC |
| Agency / Freelancer | Theo scope | Neu co |
| Tools / Software | 2-5% | Ads tools, design tools, email/CRM |
| Campaign Reserve (du phong) | 10-15% | Co hoi bat ngo / su co — KHONG allocate truoc |

### Buoc 3 — Phan bo theo kenh

Benchmark SME Vietnam (dieu chinh theo nganh va data rieng):

| Kenh | % ngan sach ads | Objective | Expected CPL/ROAS |
|------|-----------------|-----------|-------------------|
| Meta Ads (FB + IG) | 50-60% | Lead / Purchase | |
| TikTok Ads | 15-20% | Awareness / Lead | |
| Google Ads / SEO | 10-15% | Search intent | |
| Zalo Ads / OA | 5-10% | Retarget / Local / Nurture | |
| Kenh moi (test) | 10-15% | Validate | |

Logic phan bo: kenh dang co ROAS/CPL tot → tang ti trong; kenh moi → budget test toi thieu truoc; khong phan bo deu.

### Buoc 4 — Phan bo theo funnel va ti le test vs scale

Budget split chuan performance trong tung kenh:

| Muc dich | % | Ghi chu |
|----------|---|---------|
| Testing (creative + audience moi) | 30% | Luon co dong test — creative fatigue den nhanh |
| Scale (winner da xac nhan) | 50% | Chi scale campaign co data thang |
| Retargeting | 15% | Warm audience — CPL re nhat funnel |
| Lookalike | 5% | Mo rong tu tep converter |

Theo funnel: TOFU (reach/awareness) — MOFU (lead/nurture) — BOFU (conversion/retarget) — ti le tuy giai doan: launch nghieng TOFU, mature nghieng BOFU + retention.

### Buoc 5 — Phan bo theo campaign va thang

| Campaign | Thang | Budget | Objective | KPI |
|----------|-------|--------|-----------|-----|
| Always-on (retarget + nurture) | Ca ky | | | |
| Campaign A (launch/seasonal) | | | | |
| Testing budget | Ca ky | | Thu kenh / angle moi | |
| Reserve | — | 10-15% | | |

### Buoc 6 — Nguong tang / cat budget (decision rules)

**Tang budget khi (du CA 2 dieu kien):**

- ROAS > target x 1.5 trong >= 7 ngay lien tiep, HOAC CPL < target x 0.7 va volume du
- Audience chua bao hoa (frequency < 2.5)
- Muc tang: +20-30% moi lan, khong gap doi dot ngot

**Cat / pause budget khi (nguong cat lo):**

| Dieu kien | Hanh dong |
|-----------|-----------|
| ROAS < break-even sau 14 ngay | Cat kenh/campaign, chuyen budget sang kenh work |
| CPL > target x 2 sau 7 ngay test | Pause, thay creative/audience truoc khi bat lai |
| Frequency > 4 | Audience saturation — dung scale, refresh creative |
| Spend > 110% ke hoach thang | Cap daily budget, review lai phan bo |

Vi du CPL rule hang tuan (nganh dich vu local — can chinh theo AOV cua ban): CPL < 12K & freq < 2.0 → WIN, scale +20-30% · 12-15K → acceptable, theo doi · 15-18K & freq 2.0-2.5 → optimize, thay creative · > 18K & freq > 2.5 → PAUSE, replace.

**Khong bao gio tang budget khi CPL dang xau** — fix creative/tracking truoc.

### Buoc 7 — Tracker va review cadence

Budget tracker theo thang:

| Thang | Budget plan | Thuc chi | Variance | ROAS/ROI | Ghi chu |
|-------|------------|----------|----------|----------|---------|
| Thang 1 | | | | | |
| Thang 2 | | | | | |
| Thang 3 | | | | | |
| Tong quy | | | | | |

Review cadence:

| Nhip | Viec | Output |
|------|------|--------|
| Hang tuan | Xem CPL/ROAS tung kenh — ap decision rules Buoc 6 | Dieu chinh ngay neu cham nguong |
| Hang thang | Review tong phan bo, budget reconciliation plan vs actual | Rebalance cho thang sau |
| Hang quy | Review chien luoc phan bo tong the, LTV:CAC | Dieu chinh strategy |

Suc khoe don vi kinh te — LTV:CAC:

| Ti le | Y nghia | Hanh dong |
|-------|---------|-----------|
| < 1:1 | Dang lo tren moi khach | Dung scale, fix product/price |
| 1:1 → 3:1 | Hoa von den kha thi | Toi uu conversion, tang AOV |
| > 3:1 | Healthy | Bat dau scale |
| > 5:1 | Rat tot | Tang ngan sach ads manh |

## Cau truc ket qua

Ten file: `budget-plan-[ten-thuong-hieu]-[YYYYMMDD].md` — gom: I. Budget overview (tong, revenue target, marketing % of revenue, ky) · II. Phan bo bucket · III. Phan bo kenh · IV. Test vs scale split · V. Phan bo campaign/thang · VI. Decision rules + nguong cat lo · VII. Tracker · VIII. Review cadence.

## Lien ket skill

- `10-tinh-kpi-nguoc`: tinh budget toi thieu tu revenue target — chay truoc buoc phan bo.
- `00-ke-hoach-mkt`: budget plan la Phan 4 chi tiet hoa cua ke hoach tong.
- `54-media-plan`: trien khai budget ads thanh media plan cu the theo campaign/adset.
- `55-scaling-ads`: quy trinh scale khi cham nguong tang budget.
- `21-audit-ads-performance`: audit khi kenh cham nguong cat lo lien tuc.
- `07-bao-cao-marketing`: budget reconciliation trong report thang.

## Checklist chat luong

- [ ] Budget tinh nguoc tu revenue target, co 3 scenario
- [ ] Co du 3 lop phan bo: bucket → kenh → campaign/thang
- [ ] Ti le test vs scale ro rang (Testing 30 / Scale 50 / Retarget 15 / LAL 5)
- [ ] Reserve 10-15% duoc giu lai, khong allocate truoc
- [ ] Nguong tang va nguong cat lo co con so cu the (ROAS, CPL, frequency, so ngay)
- [ ] Kenh moi chi nhan budget test 10-15%
- [ ] Moi dong budget co KPI do duoc di kem
- [ ] Co tracker plan vs actual theo thang
- [ ] Review cadence tuan/thang/quy co output ro
- [ ] LTV:CAC duoc kiem tra truoc khi quyet dinh scale
