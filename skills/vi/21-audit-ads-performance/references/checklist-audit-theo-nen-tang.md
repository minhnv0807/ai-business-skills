# Checklist Audit Chi Tiet Theo Nen Tang

> Reference cua skill 21-audit-ads-performance. Doc khi bat dau cham diem chi tiet cho mot nen tang cu the — chi doc phan cua nen tang user yeu cau, khong doc ca file.

## Audit META ADS (50 Checks)

> Trong so danh muc: Pixel/CAPI (30%) · Creative Diversity (25%) · Cau truc (20%) · Audience (15%) · Settings (10%)

### Nhom 1 — Pixel & Tracking (30% trong so)

| # | Check | Muc do | Cach kiem tra |
|---|-------|--------|--------------|
| M01 | Meta Pixel da cai tren tat ca trang web | Critical | Business Manager → Events Manager |
| M02 | Purchase/Lead event dang fire chinh xac | Critical | Events Manager → Test Events |
| M03 | Event Match Quality (EMQ) >= 6.0 | High | Events Manager → Bang diem EMQ |
| M04 | Conversion API (CAPI) da setup | High | Cai thiet bat tay hoac qua partner |
| M05 | Khong bi duplicate event (mua 1 tinh 2) | Critical | Events Manager → xem so luong/ngay |
| M06 | Domain da verify | Medium | Business Manager → Brand Safety |
| M07 | UTM parameter day du tren tat ca quang cao | Medium | URL Builder → kiem tra link |
| M08 | Aggregated Event Measurement da cau hinh (neu can) | Medium | Events Manager → AEM |

**Sub-score Tracking:** _____ / 10 diem (tinh theo trong so)

### Nhom 2 — Creative Diversity (25% trong so)

| # | Check | Muc do | Cach kiem tra |
|---|-------|--------|--------------|
| M09 | Co it nhat 10 creative thuc su khac biet | High | Ads Manager → Creative tab |
| M10 | Khong co creative nao chay > 21 ngay lien tuc | High | Xem ngay bat dau creative |
| M11 | Frequency < 3.5 (cold audience) | High | Ads Manager → Cot Frequency |
| M12 | CTR creative lon nhat va nho nhat khong chenh > 3x | Medium | Sort by CTR |
| M13 | Co ca 3 format: video, image, carousel | Medium | Creative library |
| M14 | Video co am thanh / nhac nen (neu dung video) | High | Xem tung video |
| M15 | Hook 3 giay dau gay chu y (HookRate > 25%) | High | TikTok-style: 3s view / Impression |
| M16 | Co UGC hoac review-style creative (1+) | Medium | Kiem tra creative list |
| M17 | Creative khong bi blur, mo, cua so sai | Low | Xem preview tung ad |

**Sub-score Creative:** _____ / 10 diem

### Nhom 3 — Cau truc tai khoan (20% trong so)

| # | Check | Muc do | Cach kiem tra |
|---|-------|--------|--------------|
| M18 | So luong campaign phu hop (khong qua 3-5 campaign chu luc) | Medium | Campaign list |
| M19 | Cac campaign co muc tieu ro rang, khong bi chong cheo | High | Xem Objective moi campaign |
| M20 | Moi ad set co ngan sach it nhat 5x CPMess muc tieu/ngay | Critical | Tinh: ngan sach / CPMess muc tieu ≥ 5 |
| M21 | Khong co > 5 ad set chay cung luc trong 1 campaign (chia nho qua) | High | Dem ad set |
| M22 | Exclusion audience da thiet lap (loai khach cu, loai remarketing khoi cold) | High | Ad set → Exclusions |
| M23 | Campaign retarget tach biet voi campaign cold | High | Kiem tra campaign objectives |
| M24 | Budget Campaign-level hoac Ad Set-level (nhat quan) | Medium | Kiem tra Budget type |

**Sub-score Structure:** _____ / 10 diem

### Nhom 4 — Audience (15% trong so)

| # | Check | Muc do | Cach kiem tra |
|---|-------|--------|--------------|
| M25 | Custom Audience (website, video, page) da cap nhat du lieu moi | High | Audiences → cap nhat ngay |
| M26 | Lookalike audience duoc tao tu nguon chat luong (khach mua, khach nhắn tin) | High | LAL sources |
| M27 | Khong dung age/gender restriction qua tat (tru khi co data ro) | Medium | Ad set targeting |
| M28 | Co test Broad Targeting voi creative tot | Medium | Ad set → No detailed targeting |
| M29 | Audience overlap giua cac ad set < 25% | High | Audience Overlap tool |

**Sub-score Audience:** _____ / 10 diem

### Nhom 5 — Settings (10% trong so)

| # | Check | Muc do | Cach kiem tra |
|---|-------|--------|--------------|
| M30 | Bid strategy phu hop voi muc tieu (Lowest Cost neu moi, Cost Cap khi on dinh) | High | Kiem tra bid strategy |
| M31 | Ad scheduling (lich chay) phu hop voi gio khach hang online | Medium | Ad Scheduling |
| M32 | Placement dang su dung Advantage+ (khong lock cung 1 placement) | Medium | Placement settings |
| M33 | Campaign spending limit da thiet lap (tranh chi qua) | Low | Campaign → Spending Limit |
| M34 | Trang thai tai khoan: khong co Warning / Hạn chế | Critical | Account Quality |

**Sub-score Settings:** _____ / 10 diem

### Meta Health Score
```
Meta Score = (M_Tracking × 0.30) + (M_Creative × 0.25) + (M_Structure × 0.20) + (M_Audience × 0.15) + (M_Settings × 0.10)
```

---

## Audit TIKTOK ADS (30 Checks)

> Trong so danh muc: Creative Quality (30%) · Technical Setup (25%) · Bidding/Learning (20%) · Cau truc (15%) · Settings (10%)

### Nhom 1 — Creative Quality (30%)

| # | Check | Muc do |
|---|-------|--------|
| T01 | Video co am thanh / nhac nen (khong im lang) | Critical |
| T02 | 3 giay dau gay hook — co chu y hoac hanh dong | Critical |
| T03 | Video dung ty le 9:16 (doc) | High |
| T04 | Do phan giai >= 720p | High |
| T05 | Co text overlay / caption | Medium |
| T06 | CTA ro rang trong video (giong noi hoac text) | High |
| T07 | Creative phu hop vibe TikTok (khong qua "quang cao lo") | High |
| T08 | Co it nhat 3 creative hoan toan khac nhau | High |
| T09 | Creative khong chay qua 10 ngay lien tuc | High |

### Nhom 2 — Technical Setup (25%)

| # | Check | Muc do |
|---|-------|--------|
| T10 | TikTok Pixel da cai va fire chinh xac | Critical |
| T11 | Events API (CAPI) da setup | High |
| T12 | ViewContent / AddToCart / Purchase events dang fire | High |
| T13 | URL da co UTM parameter | Medium |
| T14 | Khong duplicate event | Critical |

### Nhom 3 — Bidding & Learning (20%)

| # | Check | Muc do |
|---|-------|--------|
| T15 | Ad group ngan sach it nhat 5x CPA muc tieu/ngay | Critical |
| T16 | Khong chinh sua ad group dang trong Learning Phase (0-7 ngay) | High |
| T17 | Bid strategy phu hop (Lowest Cost khi moi, Target CPA khi on dinh) | High |
| T18 | Khong chay > 5 ad group tren cung 1 audience cung luc | Medium |

### Nhom 4 — Cau truc (15%)

| # | Check | Muc do |
|---|-------|--------|
| T19 | Retarget tach campaign voi Cold | High |
| T20 | Custom Audience tu web/app da thiet lap | High |
| T21 | Exclusion audience dung (loai nguoi da mua) | Medium |
| T22 | So ad group hoi ly — khong chia qua nho | Medium |

### Nhom 5 — Settings (10%)

| # | Check | Muc do |
|---|-------|--------|
| T23 | Tai khoan: khong co Warning / Han che | Critical |
| T24 | Quoc gia target chinh xac (VN, khong target sai) | High |
| T25 | Nganh hang comply TikTok Ads policy | High |

---

## Audit GOOGLE ADS (35 Checks)

> Trong so danh muc: Conversion Tracking (25%) · Cau truc / Quality Score (20%) · Keywords (20%) · Ads/Assets (20%) · Settings (15%)

### Nhom 1 — Conversion Tracking (25%)

| # | Check | Muc do |
|---|-------|--------|
| G01 | Conversion tracking da cai dat va fire | Critical |
| G02 | Import GA4 goal vao Google Ads | High |
| G03 | Chi count ENABLED conversion (khong tinh HIDDEN/REMOVED) | High |
| G04 | Khong bi duplicate conversion | Critical |
| G05 | Value-based bidding (neu co the) da thiet lap | Medium |

### Nhom 2 — Cau truc & Quality Score (20%)

| # | Check | Muc do |
|---|-------|--------|
| G06 | Ad group khong qua 20 keywords/group (best: 5-15) | High |
| G07 | Quality Score trung binh >= 6/10 | High |
| G08 | Moi ad group co it nhat 2 RSA (responsive search ads) | High |
| G09 | Keyword match type mix phu hop (Broad Match + Smart Bidding, hoac Phrase/Exact) | High |
| G10 | Khong dung ECPC (da deprecated March 2025) | Critical |

### Nhom 3 — Keywords (20%)

| # | Check | Muc do |
|---|-------|--------|
| G11 | Negative keywords list da thiet lap | High |
| G12 | Wasted spend keywords (spend >200K, 0 conversion) da pause | Critical |
| G13 | Search Term Report duoc review dinh ky | High |
| G14 | Broad Match chi dung voi Smart Bidding | High |
| G15 | Brand keywords co campaign tach biet | Medium |

### Nhom 4 — Ads & Assets (20%)

| # | Check | Muc do |
|---|-------|--------|
| G16 | RSA co it nhat 8/15 headline va 4/4 description da dien | High |
| G17 | Asset strength >= "Good" tren moi RSA | Medium |
| G18 | Sitelink extensions (it nhat 4) | Medium |
| G19 | Callout extensions (it nhat 4) | Medium |
| G20 | Call extension (neu la dich vu local) | High |
| G21 | Dynamic Search Ads (DSA) cho website nhieu trang | Low |

### Nhom 5 — Settings (15%)

| # | Check | Muc do |
|---|-------|--------|
| G22 | Bid strategy phu hop voi muc tieu (Maximize Conv hoac Target CPA/ROAS) | High |
| G23 | Location targeting chinh xac (khong target toan cau) | Critical |
| G24 | Ad scheduling: tat quang cao ngoai gio lam viec (neu la B2B/dich vu) | Medium |
| G25 | Google Analytics 4 da link voi Google Ads | High |

---

## Audit ZALO ADS (20 Checks)

> Trong so danh muc: Setup & Technical (40%) · Content Quality (35%) · Audience (25%)

| # | Check | Muc do |
|---|-------|--------|
| Z01 | Zalo OA da verify va du follow (> 1,000) | High |
| Z02 | Zalo Official Account co rating > 4.0 | High |
| Z03 | Tracking URL da thiet lap | Medium |
| Z04 | Tin nhan broadcast co ca nhan hoa (khong spam chung) | High |
| Z05 | Hinh anh quang cao dung ti le (4:3 hoac 1:1) | Medium |
| Z06 | CTA ro rang trong noi dung | High |
| Z07 | Database Zalo duoc phan khuc (theo hanh vi, lich su mua) | High |
| Z08 | Frequency broadcast <= 2 lan/tuan (tranh unsub) | Critical |
| Z09 | Unsubscribe rate < 5%/broadcast | High |
| Z10 | Read rate > 40% (benchmark trung binh VN) | High |
