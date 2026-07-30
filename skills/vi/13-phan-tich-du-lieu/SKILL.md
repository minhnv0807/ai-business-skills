---
name: 13-phan-tich-du-lieu
description: Doc data marketing tho va bien thanh insight hanh dong — phan tich theo kenh, chien dich, creative, doi tuong, thoi gian
metadata:
  version: 2.1.1
  category: performance
triggers:
  - "phan tich du lieu"
  - "phan tich so lieu"
  - "doc data"
  - "data analysis"
  - "phan tich Meta Ads"
  - "phan tich TikTok Ads"
  - "xem bao cao GA4"
  - "ra quyet dinh tu data"
  - "decision log"
  - "nhin so xong khong biet lam gi"
output: File .md chua bao cao insight co cau truc — descriptive, diagnostic, predictive, prescriptive — voi bang bieu va de xuat cu the
related:
  - 03-danh-gia-hieu-suat
  - 07-bao-cao-marketing
  - 10-tinh-kpi-nguoc
  - 12-brief-landing-page
  - 21-audit-ads-performance
  - 39-content-audit
  - 40-next-content-plan
---

# Phan Tich Du Lieu Marketing

> Insight truoc so lieu. Nhan dinh truoc, so lieu de minh hoa — khong liet ke so lieu roi.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **Du lieu tu nguon nao?** Meta Ads, TikTok Ads, GA4, Google Sheets, hay ket hop nhieu nguon?
2. **Khung thoi gian?** Tuan nay, thang nay, so sanh 2 giai doan (VD: thang 3 vs thang 4)?
3. **Muc tieu kinh doanh hien tai?** Tang lead, giam CPL, tang ROAS, hay co van de cu the can xu ly?
4. **Dan data vao day** — paste bang so lieu, hoac mo ta cac chi so chinh (spend, impression, click, lead, revenue).

---

## Nguyen tac phan tich

### Thu tu doc data

```
1. DESCRIPTIVE   — Da xay ra gi? (so lieu, xu huong)
2. DIAGNOSTIC    — Tai sao? (nguyen nhan goc)
3. PREDICTIVE    — Se xay ra gi tiep? (du bao)
4. PRESCRIPTIVE  — Can lam gi? (hanh dong cu the)
```

### Quy tac trinh bay

| Quy tac | Giai thich |
|---------|-----------|
| Insight dau, so lieu sau | "CPL tang 40% do creative exhaustion" — khong phai "CPL tu 50K len 70K" |
| So sanh, khong doc tuyet doi | Luon so sanh voi: tuan truoc (WoW), thang truoc (MoM), hoac benchmark nganh |
| Flag bat thuong | Bat ky chi so nao thay doi > 20% so voi ky truoc → danh dau de dieu tra |
| De xuat co thoi han | Moi de xuat phai co: lam gi, khi nao, ai lam, do bang gi |

### Metric phu phiem vs metric hanh dong

Khong phai so nao cung dang dua vao bao cao. Phan loai truoc khi phan tich — bao cao 50 chi so thi khong ai ra duoc quyet dinh nao.

| | **Metric phu phiem (vanity)** | **Metric hanh dong (actionable)** |
|---|---|---|
| Vi du | Reach, Impression, Like, Follower, View, So bai dang | CPL/CPMess, CTR, CVR tung buoc, Close rate, ROAS, CAC, LTV, Frequency, Watch time % |
| Dac diem | Chi tang, hiem khi giam; khong gan voi tien | Gan truc tiep voi doanh thu hoac chi phi |
| Doc xong lam duoc gi | Thuong la khong lam gi — chi de bao cao cho dep | Ra duoc 1 quyet dinh cu the: tang / giam / doi / dung |
| Khi nao van huu ich | Khi so sanh voi chinh minh ky truoc, hoac lam mau so cho ti le (VD: Share / Reach) | Luon huu ich |

**Quy tac chon chi so:** moi ky bao cao chi giu **3-4 chi so chinh + 5-6 chi so ho tro**. Nhieu hon la loang, khong ai hanh dong.

**Cau hoi loc:** "Neu con so nay xau di 30%, minh se lam gi khac di?" — khong tra loi duoc = metric phu phiem, bo khoi bao cao chinh.

**3 loi doc so hay gap:**
1. Chi track lead, khong track sale → 1,000 lead nhung 10 khach ma khong biet nghen o ads hay o sale. Phai track full funnel: impression → lead → sale → mua lai.
2. Benchmark voi nganh thay vi voi chinh minh → CPL 25K (nganh 15K) nen tat camp, trong khi thang truoc chinh minh la 30K, tuc la dang tot len.
3. Doc so tuyet doi khong doc trend → 1 ngay xau khong noi len gi; toi thieu 5-7 ngay voi chi so performance.

---

## Framework phan tich theo nguon du lieu

### Meta Ads

| Cap do | Chi so chinh | Chi so bo tro |
|--------|-------------|--------------|
| Account | Spend, ROAS, CPA | Frequency, Reach |
| Campaign | CPMess, CPL, Conv rate | Budget utilization |
| Ad Set | CPC, CTR, CPM | Audience size, overlap |
| Ad (Creative) | Hook rate (3s view), Hold rate, CTR | Engagement rate, save rate |

**Cach doc Meta Ads:**

```
Spend cao + Impression thap → CPM cao → doi tuong qua hep hoac dang canh tranh cao
Impression cao + Click thap → CTR thap → creative khong hap dan
Click cao + Lead thap → Landing page co van de hoac form qua dai
Lead cao + Booking thap → Chat luong lead kem hoac quy trinh cham soc yeu
```

### TikTok Ads

| Cap do | Chi so chinh | Chi so bo tro |
|--------|-------------|--------------|
| Account | Spend, CPA, ROAS | Total impression |
| Campaign | CPMess, Cost per result | Campaign type performance |
| Ad Group | CPC, CTR, Conv rate | Audience size, age/gender split |
| Ad (Video) | 2s view rate, 6s view rate, completion rate | Like, comment, share |

**Cach doc TikTok Ads:**

```
2s view rate thap → Hook yeu — 3 giay dau khong du manh
6s view rate thap → Noi dung mat hap dan sau hook
Completion rate thap + CTR thap → Video khong dua den hanh dong
CPV cao → Audience sai hoac video khong phu hop format TikTok
```

### Google Analytics 4

| Nhom chi so | Chi so | Y nghia |
|-------------|--------|---------|
| Acquisition | Users, Sessions, Source/Medium | Nguon traffic |
| Engagement | Engagement rate, Time on page, Pages/session | Chat luong traffic |
| Conversion | Conv rate, Events (form submit, click CTA) | Hieu qua chuyen doi |
| Retention | Returning users, User retention | Kha nang giu chan |

**Cach doc GA4:**

```
Traffic tang + Engagement giam → Traffic rac, can loc nguon
Traffic tang + Conv giam → Landing page co van de hoac traffic sai intent
Bounce rate cao (>70%) o 1 trang → Content khong khop voi quang cao hoac load cham
```

### Google Sheets (Data thu cong)

Khi user dan data tu Google Sheets:

1. Xac dinh cac cot chinh: ngay, kenh, chi phi, so luong (impression/click/lead/don), doanh thu
2. Tinh cac chi so phat sinh: CPL, CPA, ROAS, conversion rate
3. Sap xep theo thoi gian de phat hien xu huong
4. Nhom theo kenh/chien dich de so sanh

---

## Phat hien xu huong

### Week over Week (WoW)

| Chi so | Tuan truoc | Tuan nay | Thay doi | Trang thai |
|--------|-----------|---------|----------|-----------|
| [Chi so] | [Gia tri] | [Gia tri] | [+/- %] | [Binh thuong / Canh bao / Nguy hiem] |

**Nguong canh bao:**
- Thay doi 10–20% → Theo doi, chua can hanh dong
- Thay doi 20–40% → Dieu tra nguyen nhan, chuan bi phuong an
- Thay doi > 40% → Hanh dong ngay

### Month over Month (MoM)

| Chi so | Thang truoc | Thang nay | Thay doi | vs Benchmark nganh |
|--------|------------|---------|----------|-------------------|
| [Chi so] | [Gia tri] | [Gia tri] | [+/- %] | [Tren/Duoi TB nganh] |

### Yeu to mua vu (Seasonality) — Vietnam

| Thoi diem | Tac dong | Dieu chinh |
|-----------|---------|-----------|
| Tet Nguyen Dan (T1–T2) | CPM +30–50%, traffic giam | Tang ngan sach 30%, chay truoc Tet 2 tuan |
| 8/3, 20/10 | CPM +15–25% (beauty, qua tang) | Chay chien dich truoc 1 tuan |
| Back to school (T8–T9) | CPM +10–15% (giao duc) | Len ke hoach tu T7 |
| Black Friday (T11) | CPM +20–30% | Chay remarketing la chinh |
| He (T6–T7) | CPM giam 10–15% (nhieu nganh) | Co hoi test creative moi, scale kenh moi |

---

## Phat hien bat thuong (Anomaly Detection)

Khi 1 chi so bat thuong, dieu tra theo cay nguyen nhan:

### CPL tang dot bien

```
CPL tang
├── CTR giam? → Creative exhaustion → Thay creative moi
├── CTR binh thuong + Conv rate giam? → Landing page co van de
│   ├── Load cham? → Kiem tra PageSpeed
│   ├── Form loi? → Test form tren mobile
│   └── Traffic sai intent? → Kiem tra audience targeting
└── CPM tang? → Canh tranh cao hoac mua vu
    ├── Mua Tet/sale? → Tang ngan sach hoac tam dung
    └── Doi thu tang spend? → Doi audience hoac kenh
```

### ROAS giam dot bien

```
ROAS giam
├── Revenue giam + Spend giu nguyen? → Van de chuyen doi
│   ├── Lead chat luong kem? → Kiem tra audience
│   ├── Sales team cham? → Kiem tra response time
│   └── Gia ban thay doi? → Kiem tra pricing
├── Revenue giu + Spend tang? → Over-spending
│   ├── Scale qua nhanh? → Giam lai, tang 20%/ngay max
│   └── Kenh moi chua toi uu? → Dung scale, toi uu truoc
└── Ca hai giam? → Van de toan dien
    ├── Doi thu co khuyen mai lon? → Phan tich doi thu
    └── Mua thap diem? → Kiem tra seasonality
```

### Engagement giam dot bien

```
Engagement giam
├── Reach giam? → Thuat toan de-prioritize
│   ├── Content nhieu quang cao? → Tang ti le giao duc/giai tri
│   └── Tan suat dang qua nhieu? → Giam xuong
├── Reach binh thuong + ER giam? → Content khong hap dan
│   ├── Format cu? → Thu format moi (carousel, POV, duet)
│   └── Noi dung lap lai? → Doi goc do theo content-angles.md
└── Reach tang + ER giam? → Traffic sai doi tuong
```

---

## Phan tich nhom (Cohort Analysis)

> Template cohort theo thang (kem 3 quy tac doc duong retention) va template cohort theo nguon traffic (CAC, LTV 90 ngay, LTV:CAC): doc `references/cohort-va-attribution.md` muc "Phan tich nhom (Cohort Analysis)".

---

## Attribution Model

> Bang so sanh 3 mo hinh (Last Click, First Click, Linear) kem template doi chieu don theo tung kenh va khuyen nghi chon mo hinh theo do dai pheu: doc `references/cohort-va-attribution.md` muc "Attribution Model".

---

## Template ket qua

> Khung markdown day du 5 muc theo dung thu tu doc data (Tom tat · Descriptive · Diagnostic · Predictive · Prescriptive), gom bang tong quan chi so, hieu suat theo kenh, top 5 chien dich, top 3 creative, du bao 3 kich ban va 3 bang hanh dong theo moc thoi gian: doc `references/template-bao-cao-phan-tich.md` va copy nguyen khung de dien so lieu.

---

## Chan doan tu dong

Khi phan tich, tu dong kiem tra cac tinh huong sau:

| Tinh huong | Kiem tra | Hanh dong |
|-----------|---------|----------|
| CPL tang > 30% WoW | Creative co chay qua 14 ngay khong? Frequency > 3? | Thay creative moi, refresh audience |
| CTR giam < 0.8% | Hook 3 giay co manh khong? Hinh anh co noi bat khong? | A/B test hook moi, doi hinh dau |
| ROAS < 2x lien tuc 7 ngay | Audience co dung khong? Landing page conv rate bao nhieu? | Thu hep audience, kiem tra landing page |
| Conv rate landing page < 3% | Load time bao lau? Form may truong? CTA co ro khong? | Goi skill 12-brief-landing-page |
| Frequency > 4 | Audience da bao hoa | Mo rong audience hoac doi kenh |
| Spend < 70% ngan sach | Audience qua hep hoac bid qua thap | Mo rong audience, tang bid |
| 1 kenh chiem > 60% spend | Phu thuoc 1 kenh — rui ro cao | Phan bo lai, test kenh moi |

---

## Tu data den quyet dinh — quy trinh 4 buoc

Data khong tu ra quyet dinh. Ba cau hoi duy nhat can tra loi: **(1) Dang xay ra gi? (2) Tai sao? (3) Minh lam gi tiep?**

### Buoc 1 — Data snapshot

| Chi so | Target | Thuc te | Trang thai | vs ky truoc |
|--------|--------|---------|-----------|-------------|
| Doanh thu | | | | |
| Lead | | | | |
| CPL | | | | |
| ROAS | | | | |

Flag ngay chi so bat thuong — tot hon HOAC xau hon dang ke so voi baseline. Tot bat thuong cung phai dieu tra: co the do tracking sai.

### Buoc 2 — Chan doan bang 5-Why

Chi ap dung cho chi so da flag. Dung dung o Why 1 — nguyen nhan goc thuong nam o Why 3-4 va thuong khac han trieu chung ban dau.

```
Trieu chung : [Chi so X tang/giam Y%]
Why 1       : [Ly do nhin thay ngay]
Why 2       : [Dao sau vao ly do 1]
Why 3       : [...]
Why 4       : [...]
Nguyen nhan goc: [...]
```

### Buoc 3 — Nhan dien pattern

| Pattern | Y nghia | Hanh dong |
|---------|---------|----------|
| CPM tang nhung CTR giu nguyen | Tep dang bao hoa, khong phai creative hong | Mo rong targeting |
| Organic ER cao nhung ads CTR thap | Message tot chua duoc dua vao paid | Dua content organic thang len ads |
| Email open rate giam | Subject line kem hoac list met | A/B test subject, lam sach list |
| Cuoi tuan tot hon ngay thuong | Tep hoat dong cuoi tuan | Doi lich va tang ngan sach cuoi tuan |
| Lead nhieu nhung close rate giam | Van de o chat luong lead hoac o sale | Siet tieu chi lead, xem lai kich ban tu van |
| Creative moi luon thua creative cu | Cach viet brief dang loi, khong phai nguoi lam | Xem lai `36-content-brief` |

### Buoc 4 — Decision matrix

| Tinh huong | Nguong | Quyet dinh | Thoi han |
|-----------|--------|-----------|---------|
| CPL < 70% target, on dinh >= 5 ngay | CPL < 70% | Tang ngan sach +30% | Ngay |
| CPL 70-100% target | On track | Giu nguyen, theo doi | — |
| CPL 100-150% target | Canh bao | Audit creative + tep | Trong 48h |
| CPL > 150% target sau 5 ngay | Nghiem trong | Pause + dieu tra | Ngay |
| ROAS > 5x va frequency < 2 | Rat tot | Scale ngan sach | Ngay |
| Frequency 2.0-2.5 | Bat dau fatigue | Chuan bi creative moi | Trong tuan |
| Frequency > 2.5 | Fatigue | Pause creative do | Ngay |
| Close rate giam vs tuan truoc | — | Van de o sale, KHONG phai o ads | Trong tuan |

### Nguyen tac ra quyet dinh

1. **Toi thieu 5-7 ngay du lieu** voi chi so performance. Khong quyet dinh tu 1-2 ngay.
2. **Doi 1 bien moi lan.** Doi tep + creative + ngan sach cung luc = khong hoc duoc gi.
3. **"Chua du data" khong phai ly do de khong quyet dinh.** Quyet dinh voi data hien co, dat moc review lai.
4. **Quyet dinh sai co ghi chep** van tot hon **khong quyet dinh vi so sai**.

---

## Decision Log va Learning Log

Hai bang nay la tai san tich luy. Sau 3-6 thang, pattern trong log dang gia hon bat ky benchmark nganh nao.

### Decision Log — ghi ngay khi ra quyet dinh

| # | Quyet dinh | Can cu (data nao dan den) | Hanh dong cu the | Nguoi chiu trach nhiem | Deadline | Expected impact | Ngay review lai |
|---|-----------|--------------------------|-----------------|----------------------|---------|----------------|----------------|
| 1 | | | | | | | |
| 2 | | | | | | | |

**Bat buoc 7 cot — thieu cot nao thi quyet dinh do khong tinh:**
- **Can cu**: chi so nao, ky nao, lech bao nhieu. Khong duoc ghi "thay no khong on".
- **Expected impact**: du doan so se thay doi the nao (VD: "CPL giam tu 30K ve 24K trong 14 ngay"). Ghi truoc, khong ghi sau.
- **Ngay review lai**: mac dinh sau 5-7 ngay voi quyet dinh ve ads, 30 ngay voi quyet dinh ve offer/gia.

### Learning Log — dien vao dung ngay review

| Ngay | Quyet dinh | Ly do luc do | Ket qua thuc te | Khop du doan? | Bai hoc |
|------|-----------|-------------|----------------|--------------|---------|
| | | | | Dung / Lech / Nguoc | |

**Cach dung:** moi thang doc lai Learning Log, dem so quyet dinh **Nguoc** du doan. Nhieu quyet dinh nguoc trong cung 1 chu de = gia dinh nen dang sai, phai sua o `10-tinh-kpi-nguoc` hoac `09-insight-khach-hang`, khong phai sua tiep o tang ads.

---

## Doc data content (organic)

3 cau hoi phai tra loi moi tuan:

1. Content nao dang tot nhat? → **Nhan ban pattern**, khong nhan ban noi dung.
2. Content nao dang kem? → Dung hoac sua.
3. Format / goc nhin nao nen test tiep? → Dua vao `40-next-content-plan`.

### Content Win / Lose

**Mot content duoc tinh la WIN khi dat >= 2 trong 3 tieu chi:**
1. ER cao hon trung binh kenh toi thieu 2 lan
2. Dan den hanh dong cu the (DM, click, share, luu)
3. Nhan phan hoi tich cuc tu **dung tep** (khong phai tu nguoi ngoai tep)

Moi thang: lay Top 5 content WIN → tim pattern chung (format / goc nhin / pillar / hook / khung gio) → nhan ban pattern do.

### Chi so organic dang doc

| Kenh | Chi so quan trong nhat | Nguong tot |
|------|----------------------|-----------|
| TikTok / Reels | Watch time % (thuat toan xep hang chu yeu dua vao day) | > 50% |
| TikTok / Reels | Completion rate | > 30% |
| TikTok / Reels | Share / views | > 1% |
| Facebook / Threads | Engagement rate | > 3% |
| Facebook / Threads | Comment that (co noi dung) | Quan trong hon Like |

### Gan content voi doanh thu (cach lam cho SME)

1. **UTM** tren moi link → biet traffic tu content nao.
2. **Hoi truc tiep** trong form: "Ban biet den chung toi qua dau?"
3. **Cohort**: khach inbox sau khi xem video nao — doi chieu ngay inbox voi ngay dang.
4. **Tuong quan**: content nao dang len thi DM tang trong 24-48h sau.

Khong co he thong attribution hoan hao cho SME — dung 2-3 cach tren cung luc va doc theo xu huong, khong doc theo con so tuyet doi.

---

## Lien ket skill

- **`03-danh-gia-hieu-suat`** — danh gia tong the hieu suat marketing (rong hon data analysis)
- **`07-bao-cao-marketing`** — bien ket qua phan tich thanh bao cao thang/quy trinh bay stakeholder
- **`10-tinh-kpi-nguoc`** — tinh lai KPI va ngan sach dua tren du lieu thuc te
- **`12-brief-landing-page`** — khi phat hien landing page co van de chuyen doi
- **`05-copy-quang-cao`** — khi phat hien creative can lam moi
- **`15-social-listening`** — bo sung du lieu dinh tinh (cam xuc, xu huong) ben canh du lieu dinh luong

---

## Checklist chat luong

### Truoc khi giao bao cao

- [ ] Moi insight co so lieu minh hoa cu the
- [ ] Moi so lieu co so sanh (WoW, MoM, hoac vs benchmark)
- [ ] Chi so bat thuong (thay doi > 20%) da duoc flag va giai thich
- [ ] De xuat hanh dong co: ai lam, khi nao, do bang gi
- [ ] Du bao co 3 kich ban (xau, co so, tot)
- [ ] Khong liet ke so lieu ma khong co nhan dinh di kem
- [ ] Nguon du lieu va khung thoi gian ghi ro rang
- [ ] So lieu da doi chieu cheo — spend tren platform khop voi spend thuc te
- [ ] Bao cao chi giu 3-4 chi so chinh + 5-6 chi so ho tro — khong liet ke 50 so
- [ ] Moi chi so trong bao cao chinh deu tra loi duoc "neu xau di 30% thi lam gi khac"
- [ ] Chi so da flag deu da chay 5-Why den nguyen nhan goc
- [ ] Co Decision Log du 7 cot, gom expected impact va ngay review lai
- [ ] Khong ra quyet dinh tu duoi 5 ngay du lieu performance
- [ ] Moi hanh dong de xuat chi doi 1 bien
- [ ] Da doi chieu voi chinh minh ky truoc, khong chi doi chieu benchmark nganh
