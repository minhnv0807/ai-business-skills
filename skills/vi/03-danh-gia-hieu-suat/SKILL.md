---
name: 03-danh-gia-hieu-suat
description: Danh gia hieu suat marketing — audit performance ads va organic, chan doan root cause, de xuat toi uu voi action plan 48h va checklist hang tuan.
metadata:
  version: 2.3.1
  category: performance
triggers:
  - "danh gia chien dich"
  - "audit performance"
  - "review quang cao"
  - "phan tich ket qua"
  - "CPMess cao qua"
  - "ROAS thap"
  - "toi uu ads"
  - "so dang xau"
  - "chan doan root cause"
output: File .md gom diagnostic, root cause analysis, benchmark comparison, 48h action plan, va weekly optimization checklist
related:
  - 07-bao-cao-marketing
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 05-copy-quang-cao
  - 04-script-video
  - 21-audit-ads-performance
  - 55-scaling-ads
  - 57-next-ads-plan
  - references/quality-gates-vn
---

# Danh Gia Hieu Suat

---

## Thu thap thong tin

Hoi user toi da 4 cau truoc khi bat dau:

1. **Kenh nao can audit?** Meta Ads / TikTok Ads / Google Ads / Organic TikTok / Facebook / Email / Tat ca?
2. **So lieu hien tai?** Cung cap data: Spend, Impressions, Click, CTR, CPMess/CPL, So mess/lead, ROAS, thoi gian chay.
3. **Van de dang gap?** CPMess tang / ROAS giam / Lead chat luong kem / Khong co don / Creative khong hieu qua?
4. **Muc tieu la gi?** KPI muc tieu ban dau la bao nhieu? (CPMess, ROAS, so lead/don/thang)

### Auto-pull data qua MCP (neu co ket noi)

> Neu user da setup MCP server, pull data tu dong thay vi yeu cau paste.
> Xem huong dan: `skills/vi/references/mcp-ads-integration.md`
> **Meta Official MCP:** `https://mcp.facebook.com/ads` — setup 5 phut qua `claude.ai/settings/integrations`

| Nen tang | MCP khuyen dung | Data pull |
|----------|----------------|----------|
| Meta Ads | **Meta Official MCP** (`mcp.facebook.com/ads`) | 29 tools — xem chi tiet ben duoi |
| Meta Ads (alt) | Pipeboard (`mcp.pipeboard.co/meta-ads-mcp`) | 29 tools — targeting research manh hon |
| Google Ads | Google Official MCP | GAQL query — cost, clicks, conversions, impression share |
| TikTok Ads | TikTok Ads MCP | Campaign/ad group performance reports |
| Nhieu nen tang | Adspirer ads-mcp | 222 metrics, cross-platform unified |

**Meta Official MCP — Tools dung cho Danh gia hieu suat:**

```
DIAGNOSTIC (chan doan):
  ads_insights_anomaly_signal             ← Tim KPI bat thuong vs baseline → feed vao 5 Whys
  ads_insights_performance_trend          ← Xu huong 7/14/30 ngay → phat hien suy giam

BENCHMARK (so sanh):
  ads_insights_industry_benchmark         ← CPM, CTR, CPC cua ban vs trung binh nganh
  ads_insights_auction_ranking_benchmarks ← Quality ranking, engagement rate ranking vs doi thu
  ads_insights_advertiser_context         ← Boi canh nganh va khu vuc

OPTIMIZATION:
  ads_get_opportunity_score               ← Meta goi y co hoi toi uu → action plan
  ads_get_dataset_quality                 ← Chat luong tracking (pixel + CAPI)
```

**Quy trinh danh gia nhanh voi MCP:**
```
1. ads_insights_performance_trend → Co dang giam khong?
2. ads_insights_anomaly_signal → KPI nao bat thuong?
3. ads_insights_industry_benchmark → So voi nganh the nao?
4. ads_get_opportunity_score → Meta goi y gi?
→ Dien vao Benchmark Table + chay Diagnostic Tree
```

---

## Phan 0 — Ads Health Score (0-100)

> **Audit day du:** Dung `21-audit-ads-performance` khi can chay full 84 checkpoints cho Meta/TikTok/Google/Zalo.
> Phan nay la quick-check — danh gia nhanh truoc khi di sau vao diagnostic.

### Cong thuc tinh Health Score

```
Health Score = Σ(Check_pass × W_severity × W_category) / Σ(Check_total × W_severity × W_category) × 100
```

**He so muc do (W_severity):**

| Muc do | He so | Vi du checkpoints |
|--------|-------|------------------|
| Critical | 5× | Pixel khong fire, CAPI chua setup, CPA > 3× target |
| High | 3× | Creative similarity > 60%, budget duoi 5× CPA/ngay |
| Medium | 1.5× | Chua co retarget audience, headline qua 40 char |
| Low | 0.5× | Ten chien dich khong theo naming convention |

### Bang diem va hanh dong

| Diem | Grade | Nhan xet | Hanh dong |
|------|-------|---------|-----------|
| 90–100 | **A** ✅ | Xuat sac | Giu nguyen, tap trung scale |
| 75–89 | **B** 🟢 | Tot | Fix Medium issues, tang budget nhe |
| 60–74 | **C** 🟡 | Trung binh | Fix High issues truoc khi scale |
| 40–59 | **D** 🔴 | Kem | Fix Critical + High truoc toan bo |
| < 40 | **F** ⛔ | Nguy hiem | Pause, audit toan dien, rebuild |

### 10 Quality Gates — Bat buoc kiem tra truoc moi de xuat

> **Reference:** `skills/vi/references/quality-gates-vn.md` — 10 hard rules KHONG bao gio vi pham.

| Gate | Quy tac | Nguong vi pham | Hanh dong bat buoc |
|------|---------|---------------|-------------------|
| **G1** 3× Kill Rule | CPA > 3× CPA muc tieu | > 3× | Pause ad set NGAY |
| **G2** Budget Sufficiency | Ngan sach < 5× CPA/ad set/ngay | < 5× | Gop ad set, tang budget |
| **G3** Learning Phase | Ad set dang "Learning" | Dang hoc | KHONG chinh sua bat ky thu gi |
| **G4** Pixel Integrity | EMQ < 6.0, duplicate event | < 6.0 | Fix tracking TRUOC khi chay |
| **G5** Creative Diversity | Similarity Score > 60% | > 60% | Lam creative moi thuc su khac biet |
| **G6** Compliance | Nganh dac biet chua kiem tra | Chua check | Review policy truoc launch |
| **G7** TikTok Sound | Video TikTok khong co am thanh | Khong audio | Them nhac/voiceover |
| **G8** Scale Speed | Tang ngan sach > 20%/72h | > 20% | Giam toc do tang, toi da 20%/lan |
| **G9** Min Data | < 1,000 impression (Meta) | < 1K impr | Doi du data moi ket luan |
| **G10** LTV:CAC | LTV:CAC < 3:1 | < 3:1 | Khong nen scale, kiem tra churn |

> ⚠️ **Vi pham bat ky gate nao = CRITICAL** — phai fix truoc toan bo de xuat toi uu.

---

## Phan 1 — Diagnostic Decision Tree

### Quy trinh chan doan 5 layer (chay TRUOC khi doc cay trieu chung)

So xau la trieu chung, khong phai benh. Dao tung layer tu tren xuong, moi layer phai sach truoc khi di tiep — dung thay creative khi van de nam o tracking.

**Layer 1 — Tracking va chat luong data.** Pixel co fire dung khong (dung Pixel Helper)? Conversion event dang do dung thu can do hay dang do PageView? UTM day du chua? Co event trung lap khong?
→ Neu tracking sai: fix tracking truoc, khong lam gi khac. Moi so lieu phia sau deu vo nghia.

**Layer 2 — Delivery va dau gia.** CPM co tang khong? Frequency dang o dau (>3.5 canh bao, >5 phai tat)? Co dang trong learning phase khong (khong dung vao adset trong learning)?
→ CPM tang + frequency cao = audience bao hoa → mo rong tep hoac doi creative.
→ CPM tang + frequency thap = CPM thi truong tang theo mua → cho hoac chinh bid, khong doi creative.

**Layer 3 — Creative va hook.** CTR co giam khong? Hook rate (3s view) co giam khong? Creative nay chay bao lau roi?
→ CTR giam + creative cu = creative fatigue → refresh (goi `48-quick-visual-brief`).
→ CTR thap ngay tu ngay dau = hook chua du manh hoac sai audience — khong phai fatigue.

**Layer 4 — Landing page va offer.** CTR on nhung CPL cao? LP load qua 3 giay? Form qua 4 truong? Thong diep ads va LP co khop khong?
→ CTR on ma CPL cao gan nhu luon la van de LP hoac offer, khong phai creative.

**Layer 5 — Chat luong audience.** Lead nhieu nhung close rate thap? Tep qua rong hay qua hep?
→ Lead nhieu ma khong chot duoc = van de chat luong lead → them cau hoi loc, hoac doi tep.

Sau khi xac dinh layer co van de, ghi ro: root cause co kha nang nhat · bang chung ung ho (2-3 data point) · gia thuyet da loai tru · muc do tu tin (cao/trung binh/thap — neu thap thi can test them truoc khi hanh dong lon).

### Cay chan doan: Tu trieu chung den nguyen nhan

> 4 cay chan doan dang ASCII cho 4 trieu chung ([CPMess CAO], [ROAS THAP <2x], [LEAD CHAT LUONG KEM], [CREATIVE KHONG HIEU QUA]) — moi cay phan nhanh theo dieu kien va chi thang hanh dong tuong ung: doc `references/cay-chan-doan-va-checklist-tuan.md` muc "Cay chan doan: Tu trieu chung den nguyen nhan".

---

## Phan 2 — Vietnam Benchmark Table 2025–2026

> 4 bang benchmark day du (Paid Ads 12 chi so Meta/TikTok/Google chia 4 muc Kem/TB/Tot/Xuat sac · Funnel Conversion 6 buoc · Organic Content 8 chi so · Benchmark theo 5 nganh) — moi bang co san cot "Data cua ban" de dien: doc `references/benchmark-vietnam-2025-2026.md`.

---

## Phan 3 — Root Cause Analysis (5 Whys)

### Framework phan tich

Khi gap van de, hoi "Tai sao?" 5 lan de tim nguyen nhan goc:

**Vi du: CPMess tang tu 25K len 45K**

| Lan | Tai sao? | Tra loi |
|-----|---------|---------|
| 1 | Tai sao CPMess tang? | Vi CTR giam tu 2.5% xuong 1.1% |
| 2 | Tai sao CTR giam? | Vi creative da chay 12 ngay, audience da thay qua nhieu lan |
| 3 | Tai sao creative chay qua lau? | Vi team khong co lich lam creative moi |
| 4 | Tai sao khong co lich? | Vi khong co quy trinh review creative dinh ky |
| 5 | Tai sao khong co quy trinh? | Vi chua setup SOP creative rotation |

**Nguyen nhan goc:** Thieu SOP creative rotation
**Giai phap:** Lap lich lam 3–5 creative moi/tuan, review performance moi 3–5 ngay

### Template 5 Whys

| Lan | Tai sao? | Tra loi |
|-----|---------|---------|
| 1 | [van de] | [nguyen nhan truc tiep] |
| 2 | Tai sao [nguyen nhan 1]? | [nguyen nhan sau hon] |
| 3 | Tai sao [nguyen nhan 2]? | [nguyen nhan sau hon] |
| 4 | Tai sao [nguyen nhan 3]? | [nguyen nhan sau hon] |
| 5 | Tai sao [nguyen nhan 4]? | [nguyen nhan goc] |

**Nguyen nhan goc:** [tom tat]
**Giai phap:** [hanh dong cu the]

---

## Phan 4 — Creative Fatigue Detection

### Tieu chi nhan biet creative met

| Dau hieu | Nguong canh bao | Nguong nguy hiem | Hanh dong |
|----------|-----------------|------------------|-----------|
| Frequency | >2.5 | >4 | Doi creative, expand audience |
| CTR giam | Giam 20% vs 3 ngay dau | Giam 40% | Thay creative moi |
| CPA tang | Tang 25% vs 3 ngay dau | Tang 50% | Pause creative, test moi |
| Thoi gian chay | >7 ngay | >14 ngay | Bat buoc thay moi |
| Engagement giam | Comment/share giam 30% | Giam 50% | Doi goc do noi dung |
| Negative feedback | >3% | >5% | Tat ngay, review creative |

### Lich rotation creative khuyen nghi

| Loai creative | Thoi gian hieu qua | Khi nao lam moi |
|---------------|-------------------| --------------|
| Video ads (cold audience) | 5–10 ngay | Khi frequency > 2.5 hoac CTR giam 20% |
| Image ads | 7–14 ngay | Khi CTR giam 30% |
| Carousel | 10–21 ngay | Khi engagement giam 25% |
| UGC video | 10–14 ngay | Khi CPA tang 30% |

---

## Phan 5 — Audience Saturation Indicators

| Chi so | Binh thuong | Bao dong | Hanh dong |
|--------|-------------|---------|-----------|
| Audience overlap (giua cac ad sets) | <20% | >30% | Gop ad sets hoac loai tru |
| Frequency | <2.5 | >4 | Expand audience, doi creative |
| Reach vs Audience size | <50% | >70% | Audience qua nho, mo rong |
| Cost per incremental result | On dinh | Tang 30%+ | Dang bao hoa, can audience moi |
| New user % (trong click) | >60% | <40% | Dang re-show cho nguoi cu |

### Hanh dong khi audience bao hoa

1. Mo rong Lookalike tu 1% len 3–5%
2. Test interest moi chua dung
3. Chay broad targeting voi creative tot
4. Chuyen ngan sach sang kenh khac
5. Tang organic content de mo rong funnel

---

## Phan 6 — Trend Analysis

### Week-over-Week (WoW)

| Chi so | Tuan truoc | Tuan nay | Thay doi | Xu huong |
|--------|-----------|---------|---------|---------|
| Spend | [so] | [so] | [+/-]% | Tang / Giam / On dinh |
| CPMess | [so] | [so] | [+/-]% | |
| So mess | [so] | [so] | [+/-]% | |
| CTR | [so]% | [so]% | [+/-]% | |
| ROAS | [so]x | [so]x | [+/-]% | |
| So don | [so] | [so] | [+/-]% | |
| AOV | [so] | [so] | [+/-]% | |

### Month-over-Month (MoM)

| Chi so | Thang truoc | Thang nay | Thay doi | Xu huong 3 thang |
|--------|------------|---------|---------|-----------------|
| Tong spend | [so] | [so] | [+/-]% | [mo ta] |
| Tong mess/lead | [so] | [so] | [+/-]% | |
| CPMess trung binh | [so] | [so] | [+/-]% | |
| ROAS | [so]x | [so]x | [+/-]% | |
| Doanh thu tu ads | [so] | [so] | [+/-]% | |
| LTV:CAC | [so]:1 | [so]:1 | [+/-] | |

### Quy tac doc xu huong

- **3 tuan lien tuc tang/giam** → xu huong that, can hanh dong
- **1 tuan dot bien** → kiem tra yeu to ben ngoai (mua le, doi thu, algorithm)
- **On dinh 4+ tuan** → can breakthrough, thu creative/audience moi

---

## Phan 7 — 48h Action Plan

> Ap dung khi phat hien van de can xu ly gap.

### Template action plan

| STT | Thoi gian | Hanh dong | Muc do | Ket qua ky vong | Nguoi TH |
|-----|----------|-----------|--------|-----------------|----------|
| 1 | Trong 2h | Pause creative/ad set co CPA > 2x target | **CRITICAL** | Ngung chay mau ngan sach | [ten] |
| 2 | Trong 4h | Phan tich data chi tiet: creative nao, audience nao, gio nao | **CRITICAL** | Xac dinh nguyen nhan | [ten] |
| 3 | Trong 8h | Duplicate winning ad set, test creative moi | **HIGH** | Co creative thay the | [ten] |
| 4 | Trong 12h | Dieu chinh audience: loai tru overlap, test LAL moi | **HIGH** | Giam frequency | [ten] |
| 5 | Trong 24h | A/B test 3 hook moi cho creative | **HIGH** | Tim hook tot hon | [ten] |
| 6 | Trong 24h | Kiem tra landing page/inbox flow | **MEDIUM** | Fix leak trong funnel | [ten] |
| 7 | Trong 36h | Review ket qua thay doi, so sanh | **MEDIUM** | Co data de quyet dinh tiep | [ten] |
| 8 | Trong 48h | Bao cao va de xuat ke hoach tuan tiep | **MEDIUM** | Ke hoach cu the | [ten] |

---

## Phan 8 — Nhip kiem tra hang ngay va hang tuan

### Daily check — 15 phut moi sang

Ba viec, khong hon. Muc tieu la bat van de trong ngay, khong phai phan tich sau:

1. **CPL vs target** → quyet dinh scale hay pause theo decision rules trong `references/benchmarks-vietnam.md` (muc "Decision rules theo target").
2. **Frequency** → neu vuot 2.5 thi chuan bi creative moi; vuot 3.5 thi brief gap qua `48-quick-visual-brief`.
3. **Pace spend** → dang tieu dung tien do hay overspend? Overspend som trong ngay thuong keo CPL len vao khung gio dat.

Nguyen tac khi kiem tra hang ngay: chi thay MOT bien moi lan. Doi nhieu thu cung luc thi khong biet cai nao co tac dung. Va 3 ngay data chua du de ket luan — toi thieu 5-7 ngay sau khi sua moi danh gia lai.

### Sau khi sua — ke hoach theo doi

| Chi so | Baseline truoc khi sua | Muc tieu sau sua | Kiem tra ngay |
|--------|------------------------|------------------|---------------|
| [chi so chinh] | | | D+3 |
| [chi so chinh] | | | D+7 |

Neu sau 7 ngay khong cai thien: dung tiep tuc tinh chinh nho — quay lai Layer 1 de chan doan lai, hoac chuyen huong (doi offer, doi tep, doi kenh).

### Weekly Optimization Checklist

> Checklist chia theo tung ngay Thu 2 → Thu 6 (Review tuan truoc · Creative & Content · Ads Optimization · Funnel & Sales · Report & Plan), moi ngay 4-5 muc tick: doc `references/cay-chan-doan-va-checklist-tuan.md` muc "Weekly Optimization Checklist".

---

## Phan 9 — Tom tat danh gia

### Bang tong ket

| Hang muc | Trang thai | Chi tiet | Hanh dong |
|----------|-----------|---------|-----------|
| **Paid Ads** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Organic Content** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Funnel Conversion** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Creative Health** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **Audience Health** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |
| **ROAS/ROI** | [Xanh/Vang/Do] | [tom tat] | [hanh dong] |

**Trang thai:**
- **Xanh:** On track, dat hoac vuot KPI
- **Vang:** Can theo doi, lech 10–25% vs target
- **Do:** Can xu ly gap, lech >25% vs target hoac xu huong xau 2+ tuan

### Top 3 uu tien

| STT | Uu tien | Ly do | Deadline | Ket qua ky vong |
|-----|---------|-------|----------|-----------------|
| 1 | [hanh dong] | [ly do] | [ngay] | [ket qua] |
| 2 | [hanh dong] | [ly do] | [ngay] | [ket qua] |
| 3 | [hanh dong] | [ly do] | [ngay] | [ket qua] |

---

## Cross-reference

| Khi can | Goi skill |
|---------|-----------|
| Audit day du voi Health Score 0-100 (84 checkpoints) | `21-audit-ads-performance` |
| Bao cao marketing hang thang day du | `07-bao-cao-marketing` |
| Tinh lai ngan sach va KPI tu doanh thu | `10-tinh-kpi-nguoc` |
| Viet lai copy quang cao theo 6 frameworks | `05-copy-quang-cao` |
| Viet lai script video | `04-script-video` |
| Len ke hoach lai toan bo | `00-ke-hoach-mkt` |
| Review doi thu (neu nghi doi thu chay deal) | `08-nghien-cuu-doi-thu` |
| Sau khi fix xong, muon scale winner | `55-scaling-ads` |
| Can creative thay the gap trong ngay | `48-quick-visual-brief` |
| Van de nam o tracking (Layer 1) | `53-tracking-setup` |
| Van de nam o audience (Layer 5) | `51-audience-research`, `56-retargeting-plan` |
| Lap plan ads ky sau tu ket qua chan doan | `57-next-ads-plan` |
| Tra cuu 10 Quality Gates va 6 copy frameworks | `references/quality-gates-vn`, `references/copy-frameworks-vn` |

---

## Checklist chat luong

Truoc khi giao danh gia, kiem tra:

- [ ] 10 Quality Gates da kiem tra — bat ky vi pham = CRITICAL, fix truoc toan bo de xuat
- [ ] Health Score da uoc tinh (neu co du data) — neu < 60 thi focus fix truoc khi toi uu
- [ ] Data cua user da dien day du vao bang benchmark
- [ ] Da chay quy trinh 5 layer (tracking → delivery → creative → landing/offer → audience) truoc khi ket luan
- [ ] Root cause co bang chung data, co ghi muc do tu tin, va co gia thuyet da loai tru
- [ ] Diagnostic decision tree da chay — xac dinh dung nhanh nguyen nhan
- [ ] Khong de xuat tang budget khi CPL dang xau; khong de xuat doi creative khi loi nam o tracking
- [ ] Moi de xuat chi thay 1 bien mot lan, co moc do lai D+3 va D+7
- [ ] 5 Whys da thuc hien — tim duoc nguyen nhan goc, khong dung o trieu chung
- [ ] So sanh voi benchmark Vietnam 2025–2026 — co cot "Data cua ban" va "Gap"
- [ ] Creative fatigue da kiem tra — frequency, CTR, thoi gian chay
- [ ] Audience saturation da kiem tra — overlap, reach vs size
- [ ] Trend analysis co WoW va MoM — khong chi nhin 1 ngay
- [ ] 48h action plan cu the — co thoi gian, nguoi chiu TN, ket qua ky vong
- [ ] Tong ket co trang thai mau (Xanh/Vang/Do) de nhau
- [ ] Top 3 uu tien ro rang voi deadline
- [ ] Tat ca so lieu co the verify — khong co so lieu "uoc tinh" khong co co so
- [ ] De xuat kha thi voi nguon luc hien tai cua user
