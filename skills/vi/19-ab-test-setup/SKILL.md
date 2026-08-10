---
name: 19-ab-test-setup
description: "Dung khi can test co ky luat de biet phuong an nao thang that — chon dung mot bien de test, viet gia thuyet, tinh sample size, setup tracking, doc y nghia thong ke va ghi test log cho ads, landing page, email hoac gia. Kich hoat khi user nhac 'A/B test', 'split test', 'test creative', 'test copy', 'test landing', 'chay bao lau moi du ket luan', 'ban nao thang', 'test xong khong biet doc ket qua', 'ket qua co dang tin khong'. Khong dung cho — so dang xau va can chan doan nguyen nhan thi dung skill 03-danh-gia-hieu-suat; nhan ngan sach cho creative da thang thi dung skill 55-scaling-ads; ra soat toan bo trang khong ra don thi dung skill 68-cro-audit-trang."
metadata:
  version: 1.2.1
  category: performance
license: MIT
related:
  - product-marketing-context
  - 03-danh-gia-hieu-suat
  - 05-copy-quang-cao
  - 12-brief-landing-page
  - 13-phan-tich-du-lieu
  - 21-audit-ads-performance
  - 52-account-structure
  - 55-scaling-ads
---

# A/B Test Setup

## Thu thap thong tin

### Buoc 0: Kiem tra context
Doc `.agents/product-marketing-context.md` neu co.

### Buoc 1: Hoi user
1. **Test cai gi?** (Headline ads / Landing page / Email subject / Gia / CTA button / Creative video)
2. **Metric chinh?** (CTR / Conversion rate / CPMess / Revenue / Open rate)
3. **Traffic hang ngay cua trang/ads?** (De tinh sample size can thiet)
4. **Muc tieu test?** (Tang X% metric chinh / Tim ra version tot nhat)

---

## 7 Nguyen tac A/B test

### 1. Test 1 bien duy nhat
**Quy tac cot loi.** Neu test 2 bien cung luc → khong biet bien nao tac dong.

- XAU: Doi headline + doi CTA + doi anh → khong ket luan duoc
- TOT: Chi doi headline (A vs B), moi thu khac giu nguyen

**Mot ngoai le duy nhat — test hook video.** Hook va doan on-ramp 3-15s ngay sau no la mot cap khong tach roi: doi hook ma bung nguyen than video cu se lam dut mach va hold rate sup, khien ket qua vo nghia. Khi test hook, viet lai on-ramp cho khop tung hook va ghi bien test la "hook + on-ramp". Chi tiet: `references/hook-formulas-vn.md`.

### 2. Gia thuyet co the kiem dinh
**Format:** "Neu lam [X], metric [Y] se tang [Z%]"

- TOT: "Neu doi CTA tu 'Dang ky' sang 'Nhan tu van mien phi', conv rate tang 15%"
- XAU: "Copy moi tot hon" (khong cu the, khong do duoc)

### 3. Sample size du
**Khong duoc dung test som.**
- Toi thieu: **100 conversion moi variant** (khong phai 100 visitor)
- Tot nhat: Tinh truoc (xem cong thuc ben duoi)

### 4. Thoi gian du
**Test tung tuan tron** (khong 3 ngay, khong 10 ngay) — khach mua hanh vi khac nhau cac ngay.
- Toi thieu: 7 ngay
- Nen co: 14 ngay

### 5. Khong peek som
**Khong check ket qua moi gio.** Dung ket qua cho den khi het thoi han + du sample.
- Peek som + stop som = false positive.

### 6. Significance > 95%
**Chi tin khi p-value < 0.05.** Neu khong: ngau nhien, khong phai do bien cua ban.

### 7. Documented
**Ghi lai:**
- Gia thuyet
- Ngay bat dau / ket thuc
- Sample size
- Ket qua
- Ket luan

→ De sau nay ban khong test lai cai da test.

---

## Cong thuc tinh Sample Size

> Khong muon tinh tay, hoac dang bi ket khong biet test gi tiep: doc `references/sample-size-va-y-tuong-test.md` — co bang tra sample size da tinh san, loi thoat khi traffic qua thap, va ngan hang 70+ y tuong test kem gia thuyet theo tung be mat.

### Cong thuc don gian

```
Sample size/variant =
  16 × p × (1-p) / MDE²

Trong do:
  p = Baseline conversion rate hien tai (vi du 0.02 = 2%)
  MDE = Minimum Detectable Effect (muc do thay doi toi thieu ban muon phat hien, vi du 0.2 = 20% tang)
```

### Vi du

**Landing page hien co conv rate 3%, muon phat hien thay doi 20%+:**
- p = 0.03
- MDE = 0.2 × 0.03 = 0.006 (tuc tang tu 3% len 3.6%)
- Sample size = 16 × 0.03 × 0.97 / 0.006² = 12,933 visit/variant

=> Can 25,866 visit total, neu 500 visit/ngay → 52 ngay.

**Landing page hien conv rate 10%, muon phat hien 20%+:**
- p = 0.10
- MDE = 0.02 (tu 10% len 12%)
- Sample size = 16 × 0.10 × 0.90 / 0.02² = 3,600/variant

=> 7,200 visit total, 500/ngay → 14 ngay (kha thi).

### Quy tac nhanh

| Traffic/ngay | Conv rate | Thoi gian can | Co nen test? |
|-------------|-----------|--------------|-------------|
| < 100 visit | Bat ky | 2+ thang | Khong — traffic thap |
| 100-500 | 2-5% | 3-6 tuan | Co, nhung kien nhan |
| 500-2K | 2-5% | 2-3 tuan | Co — ly tuong |
| 2K+ | Bat ky | 1-2 tuan | Co — nhanh |

**Neu traffic thap** (< 100/ngay) → khong test, thay vao do tap trung tang traffic truoc.

---

## 8 Yeu to nen test (uu tien)

### 1. Headline
**Tac dong cao nhat.** 80% nguoi doc headline, 20% doc body → headline thay doi toi uu = bien nho nhat.

Idea:
- Question vs Statement
- Number specific vs generic
- Outcome-focused vs Feature-focused
- Short (5-7 tu) vs Long (12-15 tu)

### 2. CTA Button
**Do thay doi duoc de test.** Thuong tang 5-25%.

Test:
- Text: "Dang ky" vs "Nhan tu van mien phi" vs "Bat dau ngay"
- Color: Xanh primary vs Do vs Cam
- Size: Standard vs Lon
- Position: Tren cung vs Cuoi trang

### 3. Hero Image / Video
Test:
- Anh san pham vs Anh nguoi dung
- Video vs Anh tinh
- Testimonial video vs Demo video

### 4. Price Display
Test:
- 299K vs 299,000 vs 299.000đ
- Co discount strikeout vs khong
- Monthly vs Yearly highlight

### 5. Social Proof
Test:
- So con so vs Review chi tiet
- Logo bao chi vs So khach
- Testimonial video vs text

### 6. Form Fields
Test:
- 3 fields vs 5 fields vs 7 fields
- Label tren vs ben trai
- Placeholder example vs khong co

### 7. Email Subject Line
Test:
- Question vs Benefit
- Personalization ([Ten]) vs Khong
- Emoji vs Khong (VN: khong emoji tot hon)

### 8. Ad Creative
Test:
- Hook 3s dau khac nhau
- UGC vs Brand
- Format: Single image vs Carousel vs Video

---

## Ma tran uu tien bien test

Khong test theo hung. Chon bien theo **tac dong** truoc, **do de** sau.

| Bien | Tac dong len ket qua | Do kho thuc hien | Uu tien | Metric chinh |
|------|---------------------|-----------------|---------|-------------|
| Creative — hook 0-3s | Rat cao (quyet dinh CTR va CPM) | De — chi doi 3 giay dau | **1** | Hook rate, CTR |
| Audience / tep | Cao (ai nhin thay ads) | De — doi setting | **2** | CPM, CPL |
| Offer / CTA | Rat cao (ho nhan duoc gi) | Trung binh — can quyet dinh kinh doanh | **3** | CVR, CPL |
| Landing page | Cao (trai nghiem sau click) | Kho — can dev/design | **4** | CVR, bounce |
| Ad copy (than bai) | Trung binh | De | **5** | CTR, CVR |
| Mau sac / font / chi tiet nho | Thap | De | **6** | — |

**Quy tac:** het bien uu tien 1 roi moi xuong 2. Dung nhay thang vao test mau nut khi hook chua bao gio duoc test.

---

## Quy trinh test ads tren nen tang

### Thu tu test creative (chay lan luot, khong chay song song)

| Vong | Test gi | Cach lam | Metric doc |
|------|--------|---------|-----------|
| 1 | **Hook 0-3s** | 3-5 hook khac nhau, **giu nguyen than bai va CTA** — Pain vs To mo vs Social proof | Hook rate |
| 2 | **Format** | Video doc vs Anh tinh vs Carousel | CTR, CPM, CPL |
| 3 | **Goc nhin** | Loi ich vs Van de vs Bien doi (before-after) | CTR, CVR |
| 4 | **Do dai** | 15s vs 30s vs 60s | Watch rate, CTR, CPL |

### Khung test tep

| Test | Phuong an A | Phuong an B |
|------|------------|------------|
| Broad vs Interest | Tep rong (de he thong tu tim) | Interest cu the |
| Interest A vs B | [Nhom so thich 1] | [Nhom so thich 2] |
| Do tuoi | 25-34 | 35-44 |
| Lookalike | 1% LAL | 3% LAL |
| Vi tri hien thi | Tu dong | Chi Feed |

### Ngan sach va thoi gian test

| Hang muc | Nguong thuc dung |
|---------|-----------------|
| % ngan sach danh cho testing | 30% tong ngan sach (Testing 30% · Scale 50% · Retarget 15% · Lookalike 5%) |
| Ngan sach toi thieu | Du de moi bien the ra it nhat 1 conversion/ngay — duoi muc nay test khong bao gio ket luan duoc |
| Thoi gian toi thieu | 7 ngay tron (khong 3 ngay, khong 10 ngay le tuan) |
| Sample toi thieu — test ads tren nen tang | 50 conversion/bien the (hoac 1,000 click neu test CTR) |
| Sample ly tuong — test landing page | 100 conversion/bien the, hoac tinh theo cong thuc o tren |
| Dung som | Chi dung truoc han khi 1 bien the CPL > 2x target sau 3 ngay — dung bien the do, khong dung ca test |

> Hai nguong sample khac nhau la co chu y: **50** la nguong thuc dung cho test ads (nen tang chay lien tuc, con nhieu vong test phia sau), **100** la nguong ly tuong khi test landing page (test 1 lan, sua xong kho lam lai).

---

## Tieu chi winner va quy trinh quyet dinh

### Du dieu kien ket luan khi dat CA 4

- [ ] Da chay >= 7 ngay
- [ ] >= 50 conversion moi bien the (hoac >= 1,000 click neu la test CTR)
- [ ] Confidence >= 95% (p-value < 0.05)
- [ ] Bien the thang cai thien metric chinh >= 15%

### Bang quyet dinh

| Ket qua | Quyet dinh | Buoc tiep |
|---------|-----------|----------|
| Winner ro (>= 15%, du data, p < 0.05) | Scale winner, luu tru loser | `55-scaling-ads` |
| Chenh lech < 15% | Hoa — giu control, chuyen sang test bien khac | Quay lai ma tran uu tien |
| Cac metric mau thuan nhau (VD: CTR B cao hon nhung CPL A tot hon) | Theo **metric chinh** da chot tu dau, khong doi metric giua chung | — |
| Chua du sample khi het thoi gian | Keo dai them 3-7 ngay, hoac ket luan "khong du du lieu" va ghi vao log | — |
| Ca 2 bien the deu te hon baseline | Van de khong nam o bien dang test | `21-audit-ads-performance` |

**Winner hom nay = baseline de test tiep.** Khong co diem dung — moi vong test lay winner cu lam control moi.

---

## Test log — nhat ky test tich luy

Bang nay quan trong khong kem ket qua tung test. Sau 6-12 thang, pattern trong log cho biet **loai bien nao thuc su tao ra khac biet o nganh cua minh**.

| # | Ngay bat dau | Ngay ket thuc | Bien test | Control (A) | Variant (B) | Metric chinh | Ket qua | p-value | Uplift | Hanh dong | Bai hoc |
|---|-------------|--------------|----------|------------|-------------|-------------|---------|---------|--------|----------|---------|
| 1 | | | | | | | Winner A / Winner B / Hoa | | | Scale / Luu tru / Test lai | |
| 2 | | | | | | | | | | | |

### Ky luat ghi log

1. **Ghi ca test thua va test hoa.** Test that bai la thong tin — no ngan minh test lai dieu da biet la khong hieu qua.
2. **Cot "Bai hoc" khong duoc de trong.** Neu khong rut ra duoc gi thi thiet ke test do co van de.
3. **Ra soat log moi quy.** Dem xem loai bien nao hay thang → uu tien loai do o quy sau.
4. **Toi thieu 1 test/thang** neu du traffic. Khong test = khong cai thien, chi lap lai.

---

## Setup tracking

### Tool khuyen dung

| Tool | Phu hop | Chi phi |
|------|---------|---------|
| **Meta Ads A/B test built-in** | Test ads (creative/audience/placement) | Free |
| **TikTok Ads Split test** | Test TikTok ads | Free |
| **Google Optimize** (deprecated) | Da ngung — dung thay the: VWO, Convert.com | Tu $199/thang |
| **PostHog** | Test product features, landing | Free tier OK |
| **Unbounce / Instapage** | Landing page built-in A/B | $90+/thang |
| **Manual (split URL)** | Don gian, 50/50 URL redirect | Free |

### Setup don gian (no-tool)

```
1. Tao 2 phien ban landing page: /page-a va /page-b
2. Split traffic 50/50:
   - Qua Meta Ads: 2 ad set cung audience, khac link dich
   - Qua Google Ads: 2 ad cung traffic, khac link
   - Qua organic: dung URL rewrite (rare)
3. Tracking conversion rieng tung page:
   - Meta Pixel: event "Lead" voi custom parameter "page_version" = A/B
   - GA4: UTM campaign=test-header, utm_content=a/b
4. Sau 14 ngay + du sample, export data
```

---

## Phan tich ket qua

### Tinh significance (p-value)

**Dung calculator online:** https://www.evanmiller.org/ab-testing/chi-squared.html

**Input:**
- Variant A: Visitor count + Conversion count
- Variant B: Visitor count + Conversion count

**Output:**
- p-value: Neu < 0.05 → significant (95% confidence)
- Uplift: Tang bao nhieu %

### Ket luan

| p-value | Uplift | Ket luan |
|---------|--------|---------|
| < 0.05 | > 5% | B thang — implement B |
| < 0.05 | < 5% | Significant nhung nho — can nhac cost |
| 0.05-0.10 | > 10% | Ket qua borderline — keo dai test |
| > 0.10 | Bat ky | Khong significant — giu A hoac test tiep |

### Bay thuong gap

1. **Peek som roi stop.** Test ngan → ket qua ngau nhien.
2. **Sample khong deu.** Neu split 30/70 thay vi 50/50 → kiem tra xem truyen thong co van de.
3. **Seasonality.** Test T6 Chu nhat khac T2-T3 → luon test du tuan.
4. **Novelty effect.** Phien ban moi thu hut chu y 2-3 ngay dau → sau do bang cu.

---

## Output template

```markdown
# A/B Test: [Ten test]
Ngay tao: [YYYY-MM-DD]
Chu so huu: [Ten nguoi]

## 1. Gia thuyet
"Neu [thay doi X], [metric Y] se tang [Z%]"

## 2. Bien test
- Variant A (Control): [Mo ta hien tai]
- Variant B (Challenger): [Mo ta thay doi]
- Chi thay doi: [1 thing]

## 3. Metric
- Primary: [VD: Conversion rate]
- Secondary: [VD: Bounce rate, Time on page]

## 4. Sample size & Duration
- Baseline: [p = %]
- MDE: [% change muon phat hien]
- Sample/variant: [so]
- Traffic/ngay: [so]
- Thoi gian can: [so ngay]

## 5. Setup
- Tool: [Ten]
- URL A: [...]
- URL B: [...]
- Tracking: [Meta Pixel / GA4 / PostHog events]
- Split: 50/50 (hoac khac ghi ro)

## 6. Timeline
- Start: [ngay]
- End: [ngay]
- Review: [ngay]

## 7. Ket qua (dien sau khi ket thuc)
| Variant | Visitors | Conversions | Rate | Uplift vs A |
|---------|----------|-------------|------|-------------|
| A | | | | — |
| B | | | | +X% |

p-value: [x]
Significant (p<0.05): [Yes/No]

## 8. Ket luan
[B thang / A thang / Khong significant]

## 9. Hanh dong
[Implement / Test tiep / Rollback]

## 10. Bai hoc
[Dieu hoc duoc → ap dung cho test sau]
```

---

## Checklist chat luong

- [ ] Chi test 1 bien
- [ ] Co gia thuyet cu the voi so %
- [ ] Sample size du (toi thieu 100 conv/variant)
- [ ] Thoi gian du (toi thieu 1 tuan tron, ly tuong 2 tuan)
- [ ] Khong peek som
- [ ] p-value < 0.05 truoc khi ket luan
- [ ] Document ket qua du thang hay thua
- [ ] Toi thieu 1 test/thang neu traffic du
- [ ] Bien dang test duoc chon theo ma tran uu tien — khong test chi tiet nho khi chua test hook
- [ ] Test creative chay dung thu tu: hook → format → goc nhin → do dai
- [ ] Ngan sach test nam trong 30% tong ngan sach, du de moi bien the ra >= 1 conversion/ngay
- [ ] Da chot metric chinh TRUOC khi chay — khong doi metric giua chung
- [ ] Winner phai cai thien >= 15% moi duoc goi la winner
- [ ] Da ghi vao Test log, cot "Bai hoc" khong de trong
