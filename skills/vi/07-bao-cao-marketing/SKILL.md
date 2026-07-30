---
name: 07-bao-cao-marketing
description: Bao cao marketing theo nguyen tac "doc 5 phut, biet lam gi tiep" — nhan dinh truoc, so lieu minh hoa, de xuat co thoi han va nguoi phu trach
argument-hint: "<period + channels + metrics>"
metadata:
  version: 2.1.1
  category: operations
triggers:
  - "bao cao marketing"
  - "tong ket thang"
  - "tong ket tuan"
  - "ket qua thang nay"
  - "monthly report"
  - "bao cao hieu suat"
  - "weekly report cho CEO"
  - "bao cao chien luoc quy"
  - "report cho ban lanh dao"
  - "bao cao content"
output: file .md gom executive summary, du lieu tuan/thang, chan doan tu dong, de xuat hanh dong, ke hoach thang toi
related:
  - 03-danh-gia-hieu-suat
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 13-phan-tich-du-lieu
  - 39-content-audit
  - 57-next-ads-plan
  - 63-campaign-retrospective
  - 64-team-brief
---

# Bao Cao Marketing

## Thu thap thong tin

Hoi toi da 4 cau truoc khi lam bao cao:

1. **Ky bao cao?** Tuan (tuan may, tu ngay nao den ngay nao) hay thang (thang may/nam)?
2. **Du lieu co san?** Cung cap so lieu: chi phi ads, so tin nhan, so lead, so booking, so khach, doanh thu. Neu khong co du — ghi ro thieu gi de hoi lai.
3. **Muc tieu da dat ra?** KPI muc tieu cua ky nay la gi? (doanh thu, so lead, CPMess, ROAS). Neu khong co — dung benchmark nganh.
4. **Kenh nao dang chay?** Meta Ads, TikTok Ads, Google Ads, Organic (TikTok, Facebook, Zalo), Email. Liet ke tat ca.

---

## Nguyen tac cot loi

### "Doc 5 phut, biet lam gi tiep"

Moi bao cao phai tra loi 4 cau hoi nay theo thu tu:

1. **Ket qua the nao?** — Dat hay khong dat muc tieu? (1 cau)
2. **Cai gi dang hoat dong tot?** — Giu nguyen, nhan rong (2–3 diem)
3. **Cai gi chua tot?** — Can sua, nguyen nhan goc (2–3 diem)
4. **Lam gi tiep?** — De xuat cu the, co thoi han va nguoi phu trach

### Thu tu trinh bay

```
Nhan dinh TRUOC → So lieu MINH HOA → De xuat HANH DONG
```

Khong bao gio liet ke so lieu roi de nguoi doc tu ket luan. Luon nhan dinh truoc, so lieu la bang chung.

### 3 khung so sanh

Moi chi so phai so sanh voi it nhat 1 trong 3 khung:

| Khung so sanh | Y nghia | Vi du |
|---------------|---------|-------|
| vs Muc tieu | Dat hay chua dat KPI da cam ket | CPMess muc tieu 30K — thuc te 28K (dat) |
| vs Ky truoc | Tang hay giam so voi thang/tuan truoc | CPMess thang truoc 35K → thang nay 28K (giam 20%) |
| vs Benchmark nganh | Tot hay kem so voi trung binh thi truong | CPMess TB nganh Beauty 25–40K — ta 28K (tot) |

---

## 4 che do bao cao — chon dung che do truoc khi viet

Hoi user bao cao cho **ai** va **ky nao**, roi chon che do. Sai che do = bao cao dung so nhung sai nguoi doc.

| Che do | Nguoi doc | Ky | Do dai | Thoi diem gui | Trong tam |
|--------|----------|-----|--------|--------------|----------|
| **A — Weekly CEO** | CEO / Founder | Tuan | < 300 chu, doc 2 phut | Thu 6 truoc 18h (hoac thu 2 truoc 9h) | Da lam gi, dang vuong gi, can duyet gi |
| **B — Monthly day du** | Leader + team + CEO | Thang | Doc 5 phut phan tom tat, chi tiet de tra cuu | Trong 3 ngay dau thang moi | Ket qua vs muc tieu, chan doan, ke hoach thang toi |
| **C — Strategy quy** | Ban lanh dao | Quy | Executive summary 1 trang + full report | Truoc buoi hop it nhat 24h | Huong di, dieu chinh chien luoc, ngan sach |
| **D — Content & community** | Content lead / client | Thang / chien dich | Trung binh | Cuoi ky | Top content, suc khoe cong dong, dieu chinh |

### Cau truc chung cua ca 4 che do

```
TL;DR  →  SO vs TARGET  →  INSIGHT (vi sao)  →  DECISION CAN DUYET  →  NEXT
```

Che do nao cung theo dung thu tu nay, chi khac do sau. Neu bo mat khoi "DECISION CAN DUYET" thi bao cao chi la thong bao, khong phai bao cao.

---

## Che do A — Weekly report cho CEO (1 trang)

> Muc dich khong phai chung minh minh dang lam viec — ma de CEO luon co du context ra quyet dinh. Ngan hon dai. Cu the hon mo ho. So that hon so dep.

```markdown
WEEKLY MARKETING UPDATE
Tuan [N] | [DD/MM] - [DD/MM]
Nguoi lap: [Ten]

## SO TUAN NAY
| KPI | Target | Thuc te | Trang thai |
|-----|--------|---------|-----------|
| Lead | | | |
| CPL | | | |
| Spend | | | |
| Doanh thu (neu do duoc) | | | |
| Reach content tot nhat | | | |

## DA LAM (DONE)
- [Ket qua + so cu the — KHONG mo ta cong viec. "Ra 42 lead voi CPL 23K" chu khong phai "chay ads"]
- ...

## DANG LAM (IN PROGRESS)
- [Viec X: dang o buoc nao, du kien xong ngay nao]

## DANG VUONG (BLOCKED)
- [Van de cu the → can CEO lam gi → deadline]
- (Neu khong co: "Khong co blocker tuan nay")

## UU TIEN TUAN TOI
1. [Uu tien 1 — cu the]
2. [Uu tien 2]
3. [Uu tien 3]

## CANH BAO / CAN BIET
- [So dang xau, doi thu co dong thai moi, thay doi thi truong, rui ro]
- (Neu khong co: "Khong co gi khan")

## CAN CEO QUYET
| # | Quyet dinh can | Cac phuong an | De xuat cua nguoi lap | Han chot |
|---|---------------|--------------|----------------------|---------|
| 1 | | | | |
- (Neu khong co: "Tuan nay khong can quyet dinh gi")
```

### Cach gui che do A

- Dan thang vao email hoac tin nhan nhom — **khong gui file dinh kem**. File dinh kem = khong ai mo.
- Tieu de email: `[Weekly] Marketing Update Tuan [N] — [DD/MM]`
- Van phong thang, khong viet van bao cao hanh chinh. Nhu dang update voi dong nghiep tin nhau.
- **Deu dan quan trong hon hoan hao.** Tuan khong co gi dac biet van gui — "khong co blocker" cung la thong tin co gia tri.
- So xau thi bao that, kem gia thuyet nguyen nhan va hanh dong — khong giau, khong to hong.
- 4 weekly report cua thang = nguyen lieu dau vao cho bao cao thang (che do B).

---

## Che do C — Strategy report quy

> Executive summary phai **dung doc lap** — doc xong 1 trang do la nam duoc buc tranh, khong can doc phan chi tiet.

### Phan 1 — Executive summary (1 trang)

```markdown
# [Quy X/YYYY] — Bao Cao Chien Luoc Marketing
Nguoi lap: [Ten] | Ngay: [YYYY-MM-DD]

## KPI SCORECARD
| KPI | Target | Thuc te | Trang thai | vs ky truoc |
|-----|--------|---------|-----------|-------------|
| Doanh thu tu marketing | | | | |
| Tong lead moi | | | | |
| CPL trung binh | | | | |
| ROAS tong | | | | |
| CAC | | | | |
| LTV : CAC | | | | |

Danh gia tong: [Dung huong / Hon hop / Duoi muc tieu]

## HEADLINE INSIGHT (dung 3 cau)
1. [Ky nay marketing dat / khong dat muc tieu tong the — kem so cu the]
2. [Ly do chinh — yeu to thuc day hoac yeu to keo lui]
3. [Ky toi se lam khac di dieu gi]

## CAN BAN LANH DAO QUYET
| # | Quyet dinh | Cac phuong an | De xuat | Han chot |
|---|-----------|--------------|---------|---------|
| 1 | | | | |
```

### Phan 2 — Chi tiet

**Dieu gi da hieu qua (Top 3):** moi muc ghi du 3 dong — `Data cu the` · `Vi sao no hieu qua` · `Ky toi nhan ban bang cach nao`.

**Dieu gi chua hieu qua (Top 3):** moi muc ghi du 3 dong — `Data cu the` · `Nguyen nhan goc` · `Quyet dinh: DUNG hay SUA (sua cu the the nao)`.

**Dieu chinh chien luoc ky toi:**

| Hang muc | Ky nay | Ky toi | Ly do thay doi |
|---------|--------|--------|---------------|
| Phan bo ngan sach | | | |
| Kenh trong tam | | | |
| Huong creative | | | |
| Offer / gia | | | |

**Doi chieu ngan sach (bat buoc co o bao cao quy):**

| Hang muc | Ke hoach | Thuc chi | Chenh lech | Giai thich |
|---------|---------|---------|-----------|-----------|
| Ads | | | | |
| San xuat content | | | | |
| Agency / tool | | | | |
| KOL / seeding | | | | |
| **Tong** | | | | |

Chenh lech > 15% o bat ky hang muc nao deu phai co giai thich — khong duoc de trong.

### Nguyen tac che do C

- Gui truoc buoi hop it nhat **24 gio** de nguoi doc kip doc.
- Khong ve buc tranh mau hong: so that + nhan dinh that + ke hoach that.
- Moi muc "chua hieu qua" phai ket thuc bang 1 quyet dinh (DUNG hoac SUA), khong duoc de lung.

---

## Che do D — Bao cao content & community

Dung khi bao cao rieng mang noi dung / cong dong (cho content lead hoac client).

### Bang KPI theo kenh

| Chi so | Muc tieu | Thuc te | % dat | So ky truoc |
|--------|---------|---------|-------|-------------|
| **Facebook** — Reach | | | | |
| Facebook — ER% | >= 3% | | | |
| Facebook — Follower moi | | | | |
| **TikTok** — View trung binh | | | | |
| TikTok — Follower moi | | | | |
| **Email** — Open rate | 25-35% | | | |
| Email — CTR | >= 3% | | | |
| Email — Unsubscribe | < 0.5% | | | |
| **Zalo OA** — Read rate | 60-80% | | | |
| **Lead tu content** | | | | |

### Suc khoe cong dong

| Chi so | Ky nay | Nhan xet |
|--------|--------|---------|
| Comment chat luong (thao luan that, khong phai "hay qua") | | |
| Sentiment tong | Tich cuc / Trung tinh / Tieu cuc | |
| Phan nan / phan hoi tieu cuc | | |
| Brand mention tu nhien | | |

### Ket luan che do D

- **Top 3 content ky nay:** kenh · chi so noi bat · **ly do no hieu qua** (bat buoc, khong duoc bo trong).
- **Content khong hieu qua:** van de · bai hoc rut ra.
- **3 dieu tiep tuc — 3 dieu dieu chinh — 1-2 gia thuyet moi can test** (kem cach do).
- Sau bao cao nay chay ngay `40-next-content-plan`.

---

## Cau truc ket qua

### Header

```markdown
# Bao Cao Marketing — [Thang X/YYYY] hoac [Tuan X: DD/MM–DD/MM]
Nguoi lap: [Ten]
Ngay lap: [YYYY-MM-DD]
Trang thai: [Dat muc tieu / Chua dat muc tieu / Vuot muc tieu]
```

---

### 1. Executive Summary (doc doan nay la du)

```markdown
## 1. Executive Summary

**Ket luan:** [1 cau — dat/chua dat muc tieu, ly do chinh]

**So lieu chinh:**
| Chi so | Muc tieu | Thuc te | vs Muc tieu | vs Ky truoc |
|--------|---------|---------|-------------|-------------|
| Doanh thu | [X] | [X] | [+/-X%] | [+/-X%] |
| Tong chi phi MKT | [X] | [X] | [+/-X%] | [+/-X%] |
| ROAS | [X] | [X] | [+/-X%] | [+/-X%] |
| So khach moi | [X] | [X] | [+/-X%] | [+/-X%] |
| CPMess TB | [X] | [X] | [+/-X%] | [+/-X%] |

**3 diem noi bat:**
1. [Dieu tot nhat ky nay — co so lieu]
2. [Van de lon nhat — co so lieu]
3. [Co hoi/rui ro can chu y]
```

---

### 2. Chi tiet theo kenh

> Template chi tiet cho 5 kenh (Meta Ads, TikTok Ads, Google Ads, Organic, Email/Zalo OA) — bang chi so tuan-by-tuan, top 3 ads tot, top 3 ads kem, top 3 bai organic: doc `references/cau-truc-bao-cao-chi-tiet.md` muc "2. Chi tiet theo kenh".

---

### 3. Pheu chuyen doi

> Bang pheu 7 buoc (Impression → Doanh thu) voi ti le chuyen doi, benchmark tung buoc va o "nut that co chai": doc `references/cau-truc-bao-cao-chi-tiet.md` muc "3. Pheu chuyen doi".

---

### 4. Chan doan tu dong

> Ba bang chan doan (Dang hoat dong tot — GIU + NHAN RONG · Chua tot — CAN SUA GAP · Chua ro — CAN THEO DOI THEM) kem vi du dien mau: doc `references/cau-truc-bao-cao-chi-tiet.md` muc "4. Chan doan tu dong".

---

### 5. De xuat hanh dong

> Bang de xuat hanh dong (hanh dong · muc tieu · deadline · nguoi phu trach · trang thai) kem vi du va quy tac danh so uu tien: doc `references/cau-truc-bao-cao-chi-tiet.md` muc "5. De xuat hanh dong".

---

### 6. Ke hoach thang toi

> Ba bang cua ke hoach thang toi (Muc tieu theo chi so co kem co so · Ke hoach theo tuan · Ngan sach phan bo theo hang muc): doc `references/cau-truc-bao-cao-chi-tiet.md` muc "6. Ke hoach thang toi".

---

### 7. Dac ta bieu do (cho team design)

> Dac ta 5 bieu do (loai, truc X, truc Y, mau sac) cho stakeholder + tool khuyen dung: doc `references/cau-truc-bao-cao-chi-tiet.md` muc "7. Dac ta bieu do (cho team design)".

---

## Template bao cao tuan (rut gon)

Bao cao tuan ngan gon hon bao cao thang — chi giu phan 1, 4, 5:

```markdown
# Bao Cao Tuan [X]: [DD/MM–DD/MM/YYYY]

## Ket qua nhanh
| Chi so | Muc tieu tuan | Thuc te | vs Tuan truoc | Danh gia |
|--------|-------------|---------|---------------|---------|
| Chi phi | | | | |
| Tin nhan | | | | |
| CPMess | | | | |
| Lead | | | | |
| Booking | | | | |
| Khach | | | | |
| Doanh thu | | | | |

## Tot / Chua tot
- TOT: [1–2 diem]
- CHUA TOT: [1–2 diem]

## Hanh dong tuan toi
| # | Viec | Nguoi | Deadline |
|---|------|-------|---------|
| 1 | | | |
| 2 | | | |
| 3 | | | |
```

---

## Lien ket skill lien quan

- **03-danh-gia-hieu-suat** — Dung de phan tich sau tung kenh truoc khi tong hop vao bao cao
- **10-tinh-kpi-nguoc** — Tinh lai muc tieu thang toi dua tren ket qua thang nay
- **00-ke-hoach-mkt** — Ke hoach thang toi la ban cap nhat cua ke hoach tong
- **13-phan-tich-du-lieu** — Khi can di sau vao du lieu de tim root cause
- **39-content-audit** — Nguyen lieu cho che do D (bao cao content & community)
- **40-next-content-plan** — Chay ngay sau che do D
- **57-next-ads-plan** — Chay ngay sau che do B, C (mang paid)
- **63-campaign-retrospective** — Khi bao cao ket thuc 1 chien dich, khong phai bao cao dinh ky
- **64-team-brief** — Bien "can quyet dinh" trong bao cao thanh viec giao cho team

---

## Checklist chat luong

Kiem tra truoc khi giao bao cao:

- [ ] Co executive summary — doc 1 phut la hieu tinh hinh
- [ ] Nhan dinh TRUOC, so lieu MINH HOA — khong liet ke so lieu roi
- [ ] Moi chi so co it nhat 1 khung so sanh (vs muc tieu / vs ky truoc / vs benchmark)
- [ ] Co du lieu tuan-by-tuan (khong chi co tong thang)
- [ ] Co top 3 ads tot + top 3 ads kem (voi so lieu cu the)
- [ ] Co pheu chuyen doi — chi ro nut that co chai
- [ ] Chan doan co nguyen nhan goc (root cause), khong chi mo ta hien tuong
- [ ] De xuat hanh dong co deadline va nguoi phu trach — khong chung chung
- [ ] Co ke hoach thang toi voi muc tieu va ngan sach
- [ ] Khong co so lieu khong nguon (moi so lieu phai tu dashboard hoac bao cao cu the)
- [ ] Bieu do (neu co) co dac ta ro rang de team design tao
- [ ] Do dai toan bao cao: doc het trong 5 phut — cat bo phan du thua
- [ ] Da chon dung che do (A weekly CEO / B monthly / C strategy quy / D content) truoc khi viet
- [ ] Theo dung thu tu TL;DR → so vs target → insight → decision can duyet → next
- [ ] Co muc "Can quyet dinh" — kem phuong an va de xuat cua nguoi lap (hoac ghi ro "khong can quyet dinh gi")
- [ ] Che do A: duoi 300 chu, dan thang vao email/chat, khong gui file dinh kem
- [ ] Che do C: executive summary dung doc lap duoc; co doi chieu ngan sach; chenh lech >15% co giai thich
- [ ] So xau duoc bao that kem gia thuyet nguyen nhan — khong to hong, khong giau
- [ ] Moi muc "chua hieu qua" ket thuc bang 1 quyet dinh DUNG hoac SUA
