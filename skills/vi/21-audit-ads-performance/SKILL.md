---
name: 21-audit-ads-performance
description: "Dung khi can ra soat CAU HINH tai khoan quang cao mot cach he thong — 6 khau tu account, campaign, adset, creative, landing den tracking, cham Health Score 0-100 va liet ke Quick Wins. Kich hoat khi user nhac 'audit tai khoan ads', 'kiem tra tai khoan quang cao', 'health score ads', 'tai khoan chay kem qua', 'setup ads co dung khong', 'review tai khoan Meta'. Ho tro Meta, TikTok, Google, Zalo Ads. Khong dung cho — chan doan nhanh tai sao so xau thi dung skill 03-danh-gia-hieu-suat; lap ngan sach ky moi thi dung skill 54-media-plan."
argument-hint: "<platform + account + period>"
metadata:
  version: 1.3.2
  category: performance
triggers:
  - "audit tai khoan ads"
  - "kiem tra tai khoan quang cao"
  - "health score ads"
  - "cho diem quang cao"
  - "audit Meta Ads"
  - "audit TikTok Ads"
  - "audit Google Ads"
  - "audit Zalo Ads"
  - "tai khoan chay kem qua"
  - "review tai khoan ads"
  - "account audit"
  - "CPL cao"
  - "ROAS thap"
  - "ads khong ra so"
  - "chan doan ads"
output: File .md gom Health Score 0-100, danh sach Quick Wins, vi pham Quality Gates, chuyen sau theo nen tang, va action plan 7 ngay.
related:
  - 03-danh-gia-hieu-suat
  - 05-copy-quang-cao
  - 10-tinh-kpi-nguoc
  - 00-ke-hoach-mkt
  - 12-brief-landing-page
  - 53-tracking-setup
  - 55-scaling-ads
  - 56-retargeting-plan
references:
  - references/checklist-audit-theo-nen-tang.md
  - skills/vi/references/quality-gates-vn.md
  - skills/vi/references/copy-frameworks-vn.md
  - skills/vi/references/mcp-ads-integration.md
---

# Audit Ads Performance — Health Score & Action Plan

> **Skill nay khac `03-danh-gia-hieu-suat` o cho:**
> - `03` = Danh gia hieu qua hien tai (CPMess, ROAS, funnel) — chan doan trieu chung
> - `21` = Audit cau hinh tai khoan (setup, cau truc, tracking, creative) — cho diem 0-100 va tim loi he thong

---

## Thu thap thong tin

Hoi toi da 4 cau truoc khi bat dau:

1. **Nen tang can audit?** Meta Ads / TikTok Ads / Google Ads / Zalo Ads / Tat ca?
2. **Nganh kinh doanh va muc tieu chinh?** (Spa, F&B, BDS, E-com... + Muc tieu: CPMess, ROAS, Lead, Don hang)
3. **Ngan sach quang cao/thang?** (Giup tinh ngan sach min/ad set + danh gia muc do uu tien)
4. **Co the cung cap data?** (Paste data tu Ads Manager: Spend, CPM, CTR, CPMess, ROAS, so conversion)

### Auto-pull data qua MCP (neu co ket noi)

> **Reference:** `skills/vi/references/mcp-ads-integration.md` — huong dan setup day du.
> **Endpoint Meta Official:** `https://mcp.facebook.com/ads` — 29 tools, setup 5 phut qua `claude.ai/settings/integrations`

Neu user da ket noi MCP server, co the pull data tu dong thay vi yeu cau paste:

| Nen tang | MCP khuyen dung | Tool su dung |
|----------|----------------|-------------|
| Meta Ads | **Meta Official MCP** (`mcp.facebook.com/ads`) | 29 tools — xem chi tiet ben duoi |
| Meta Ads (alt) | Pipeboard (`mcp.pipeboard.co/meta-ads-mcp`) | 29 tools — targeting research manh hon |
| Google Ads | Google Official MCP | `search` voi GAQL query |
| TikTok Ads | AdsMCP/tiktok-ads-mcp-server | Performance report tools |
| Cross-platform | Adspirer ads-mcp | Unified analytics 222 metrics |

**Meta Official MCP — Tools dung cho Audit (uu tien):**

```
AUDIT INSIGHTS (dung nhieu nhat):
  ads_insights_anomaly_signal             ← KPI bat thuong so voi baseline
  ads_insights_auction_ranking_benchmarks ← CTR, CPM, quality vs dau gia
  ads_insights_industry_benchmark         ← So sanh voi trung binh nganh
  ads_insights_performance_trend          ← Xu huong metric theo thoi gian
  ads_get_opportunity_score               ← Diem co hoi toi uu tu Meta

TRACKING QUALITY:
  ads_get_dataset_quality                 ← Chat luong matching (pixel + CAPI)
  ads_get_dataset_stats                   ← Event count, deduplication
  ads_get_errors                          ← Loi dataset gan day

CATALOG (E-commerce):
  ads_catalog_get_diagnostics             ← Errors va warnings catalog
  ads_catalog_get_product_feed_details    ← Trang thai feed

ACCOUNT:
  ads_get_ad_entities                     ← List campaigns/ad sets/ads
```

**Quy trinh audit voi Meta Official MCP:**
```
Buoc 1: ads_get_ad_accounts → chon account
Buoc 2: ads_get_ad_entities → lay tat ca campaigns
Buoc 3: ads_insights_performance_trend → xu huong 30 ngay
Buoc 4: ads_insights_anomaly_signal → tim KPI bat thuong
Buoc 5: ads_insights_auction_ranking_benchmarks → so voi dau gia
Buoc 6: ads_insights_industry_benchmark → so voi nganh
Buoc 7: ads_get_dataset_quality → kiem tra tracking
Buoc 8: ads_get_opportunity_score → co hoi toi uu
→ Tong hop vao Health Score + Action Plan
```

**GAQL query mau cho Google Ads audit:**
```sql
SELECT campaign.name, campaign.status, campaign.bidding_strategy_type,
       metrics.impressions, metrics.clicks, metrics.cost_micros,
       metrics.conversions, metrics.cost_per_conversion,
       metrics.search_impression_share
FROM campaign
WHERE segments.date DURING LAST_30_DAYS
  AND campaign.status != 'REMOVED'
ORDER BY metrics.cost_micros DESC
```

**Meta Insights fields mau (dung khi KHONG co Official MCP):**
```
fields=spend,impressions,clicks,ctr,cpc,cpm,actions,cost_per_action_type,
       purchase_roas,frequency,reach
date_preset=last_30d
level=adset
breakdowns=age,gender
```

---

## Quy trinh audit theo khau (SOP)

Audit **tu tren xuong**, khong nhay coc. Sua creative khi tracking sai = tu lua minh bang so ao.

```
1 ACCOUNT  →  2 CAMPAIGN  →  3 ADSET  →  4 CREATIVE  →  5 LANDING  →  6 TRACKING
   (nen)       (muc tieu)     (tep)      (noi dung)     (chuyen doi)   (do luong)

Nhung khi CHAY thi doc nguoc: TRACKING truoc — so sai thi 5 khau tren deu vo nghia.
```

### Bang cac khau audit

| # | Khau | Kiem gi | Thoi gian | Dau hieu hong |
|---|------|---------|-----------|--------------|
| 1 | **Account** | Trang thai tai khoan, han muc chi tieu, canh bao chinh sach, quyen truy cap, phuong thuc thanh toan, lich su reject | 10 phut | Tai khoan bi han che, nhieu ads reject, spending limit chan delivery |
| 2 | **Campaign** | Objective co dung muc tieu kinh doanh khong, so luong campaign, budget phan bo (Testing 30% · Scale 50% · Retarget 15% · Lookalike 5%), naming convention | 15 phut | Objective sai (chay Traffic de mong ra don), qua nhieu campaign chia nho ngan sach |
| 3 | **Adset** | Trung tep giua cac adset, ngan sach toi thieu/adset, learning phase, bid strategy, lich chay, exclusion list | 20 phut | Tep chong nhau tu dau gia lan nhau, adset ngan sach qua nho khong thoat learning |
| 4 | **Creative** | So creative dang chay, do da dang (Andromeda), frequency, hook rate, ad fatigue, creative reserve | 20 phut | 1-2 creative chay ca thang, frequency > 3, tat ca creative cung 1 goc nhin |
| 5 | **Landing** | Toc do tai, message match voi ads, above the fold, so field form, social proof, mobile | 15 phut | CTR tot nhung CPL cao = van de gan nhu chac chan o day |
| 6 | **Tracking** | Pixel fire, event mapping, CAPI match rate, UTM, doi chieu GA4 vs Ads Manager | 20 phut | So Ads Manager lech GA4 > 20%, event trung hoac thieu |

**Tong thoi gian audit day du: 1.5 - 2 gio.** Neu chi co 30 phut → chay Quick Health Check + khau 6 (Tracking) + khau 4 (Creative).

### Quick Health Check — 6 chi so doc dau tien

| Chi so | Thuc te | Tham chieu | Trang thai |
|--------|---------|-----------|-----------|
| CPM | | Meta 30–80K · TikTok 20–60K | Xanh / Vang / Do |
| CTR | | Meta >= 1.5% · Google >= 3% | |
| CPMess / CPL | | Target tu `10-tinh-kpi-nguoc` | |
| ROAS | | >= Target ROAS da tinh | |
| Frequency | | < 3 tot · > 4 fatigue | |
| Hook Rate (video) | | >= 30% (3s view / impression) | |

Xanh = dat; Vang = lech 1 den 1.5 lan nguong; Do = lech tren 1.5 lan nguong. Cham 2 o Do tro len → audit day du, khong sua vun vat.

---

## Chan doan: trieu chung → nguyen nhan → hanh dong

CPL cao va ROAS thap la **trieu chung**, khong phai benh. Bang nay tra ve nguyen nhan goc theo dung khau.

| Trieu chung | Nguyen nhan co the (theo thu tu kiem) | Khau lien quan | Hanh dong |
|-------------|--------------------------------------|---------------|----------|
| **CPM cao bat thuong** | Tep qua hep · bid strategy sai · ad relevance thap · dung mua cao diem (Tet, 11.11, 12.12) | Adset | Mo rong tep, doi bid, cai thien creative de tang relevance, chap nhan CPM mua vu va tinh lai KPI |
| **CTR thap (< 1%)** | Hook khong du manh · creative sai format kenh · sai tang pheu · copy qua dai | Creative | Thay hook (khong phai thay tep), doi format dung kenh, doi chieu tang pheu, cat ngan copy |
| **CTR tot nhung CPL cao** | Landing tai cham (> 3s) · LP khong khop message ads · form qua nhieu field · offer khong hap dan | Landing | Toi uu toc do, viet lai headline LP khop hook ads, giam field, sua offer |
| **CPL tot nhung ROAS thap** | Chat luong lead thap · follow-up yeu / cham · offer chua thuyet phuc · friction o thanh toan | Ngoai ads | Siet tieu chi lead, sua kich ban va toc do reply, sua offer, don gian hoa checkout |
| **Delivery thap / khong tieu tien** | Tep qua hep · ngan sach duoi nguong · dang learning phase · ad bi reject · spending limit tai khoan | Adset + Account | Mo tep, tang ngan sach adset len nguong toi thieu, cho het learning, kiem notification reject |
| **Dang chay tot roi tut** | Ad fatigue (frequency > 3) · bao hoa tep · yeu to mua vu · tracking hong giua chung | Creative + Tracking | Thay creative, mo rong tep hoac lookalike, kiem lai pixel/CAPI truoc khi ket luan |
| **Scale len la CPL vot** | Tang ngan sach qua nhanh (> 30%/lan) · reset learning · tep khong con du rong | Adset | Lui ve muc ngan sach cu, tang lai tu tu +20-30%/lan, cho 48h moi tang tiep — xem `55-scaling-ads` |
| **So Ads Manager lech CRM** | Attribution window khac nhau · pixel duplicate · CAPI match rate thap · thieu UTM | Tracking | Thong nhat window, xoa event trung, tang match rate, chuan hoa UTM — xem `53-tracking-setup` |

### Creative audit — 5 cau hoi

| Yeu to | Cau hoi | Neu KHONG |
|--------|---------|----------|
| Hook 0-3s | Co chan duoc ngon tay dang luot khong? | Test hook moi (`04-script-video`, `05-copy-quang-cao`) |
| Do lien quan | Co cham dung noi dau cua tep dang target khong? | Viet lai copy tu insight (`09-insight-khach-hang`) |
| Bang chung | Co so lieu / testimonial that khong? | Bo sung proof, khong bia so |
| CTA | Ro rang va cu the khong? | Thay CTA — 1 hanh dong duy nhat |
| Ad fatigue | Frequency > 3 chua? | Refresh creative, chuan bi creative reserve |

### Landing page audit — 6 diem

- [ ] Toc do tai < 3 giay (do bang PageSpeed Insights, do o mang 4G khong phai wifi)
- [ ] Message match: ads noi gi, headline LP phai noi dung dieu do
- [ ] Above the fold: headline + CTA thay ngay khong can cuon
- [ ] Form <= 4 field
- [ ] Social proof hien thi trong man hinh dau hoac ngay duoi
- [ ] Toi uu mobile — phan lon traffic ads o VN la mobile

Chi tiet sua landing → `12-brief-landing-page`.

### Tracking audit — 5 diem

- [ ] Pixel dang fire dung (kiem bang Meta Pixel Helper hoac cong cu tuong duong)
- [ ] Conversion event mapping dung (Lead / Purchase / Contact) — khong dung nham event
- [ ] CAPI match rate >= 70%
- [ ] UTM day du tren tat ca link, dung chuan naming
- [ ] So GA4 doi chieu duoc voi Ads Manager (lech < 20% la chap nhan)

Setup lai tu dau → `53-tracking-setup`.

### Luat sua sau audit

1. **Sua tu tren xuong theo khau** — tracking va account truoc, creative sau.
2. **Moi lan chi doi 1 bien.** Doi 3 thu cung luc thi khong biet thu nao co tac dung.
3. **Sau khi sua, cho 3-5 ngay moi danh gia.** Doc so sau 1 ngay la doc nhieu.
4. **Giu/tat/scale theo thang CPA duy nhat** trong `skills/vi/references/quality-gates-vn.md` Gate 1 — dung tu dat nguong rieng o day. Tom tat: chua du data khi spend < 3x CPA muc tieu · winner ≤ 1.0x · theo doi 1.0-1.5x · thay creative khi > 1.5x keo dai 7 ngay · tat khi > 3.0x. Ghi ly do vao log truoc khi tat.
5. **Sua xong va so on dinh >= 5 ngay → chuyen sang `55-scaling-ads`.** Chua on dinh thi khong scale.

---

## He thong cho diem Health Score

### Cong thuc
```
Health Score = Σ(Check_pass × Weight_severity × Weight_category) 
               / Σ(Check_total × Weight_severity × Weight_category) × 100
```

### Muc do nghiem trong (Severity)
| Muc do | He so | Mo ta |
|--------|-------|-------|
| Critical | 5.0x | Dang gay mat tien / mat du lieu ngay — fix ngay |
| High | 3.0x | Anh huong lon den hieu qua — fix trong 7 ngay |
| Medium | 1.5x | Best practice bi thieu — fix trong 30 ngay |
| Low | 0.5x | Toi uu them — fix khi co thoi gian |

### Phan loai diem so
| Diem | Grade | Y nghia |
|------|-------|---------|
| 90-100 | **A** | Xuat sac — duy tri va scale |
| 75-89 | **B** | Tot — mot so diem can cai thien |
| 60-74 | **C** | Trung binh — can dau tu cai thien nghiem tuc |
| 40-59 | **D** | Kem — nhieu van de lam giam hieu qua dang ke |
| < 40 | **F** | Nguy hiem — co the dang mat tien khong hieu qua |

---

## Audit META ADS (50 Checks)

> 5 nhom check M01-M34 (Pixel & Tracking, Creative Diversity, Cau truc tai khoan, Audience, Settings) — moi check co muc do nghiem trong + cach kiem tra, kem trong so tung nhom, o ghi sub-score va cong thuc Meta Health Score: doc `references/checklist-audit-theo-nen-tang.md` muc "Audit META ADS (50 Checks)".

---

## Audit TIKTOK ADS (30 Checks)

> 5 nhom check T01-T25 (Creative Quality, Technical Setup, Bidding & Learning, Cau truc, Settings) kem trong so tung nhom va muc do nghiem trong: doc `references/checklist-audit-theo-nen-tang.md` muc "Audit TIKTOK ADS (30 Checks)".

---

## Audit GOOGLE ADS (35 Checks)

> 5 nhom check G01-G25 (Conversion Tracking, Cau truc & Quality Score, Keywords, Ads & Assets, Settings) kem trong so tung nhom va muc do nghiem trong: doc `references/checklist-audit-theo-nen-tang.md` muc "Audit GOOGLE ADS (35 Checks)".

---

## Audit ZALO ADS (20 Checks)

> Check Z01-Z10 (OA verify, rating, tracking URL, ca nhan hoa broadcast, ti le hinh, CTA, phan khuc database, frequency, unsub rate, read rate) kem trong so 3 danh muc: doc `references/checklist-audit-theo-nen-tang.md` muc "Audit ZALO ADS (20 Checks)".

---

## Aggregate Score — Tong diem tai khoan

```
Tong Score = Σ(Platform_Score × Platform_Budget_Share)

Vi du:
  Meta (75 diem) × 60% ngan sach = 45.0
  TikTok (82 diem) × 30% ngan sach = 24.6
  Google (68 diem) × 10% ngan sach = 6.8
  ─────────────────────────────────────
  Tong Score = 76.4 → Grade B
```

---

## Quality Gates — Kiem tra truoc moi su

Truoc khi di vao chi tiet audit, kiem tra 10 Quality Gates trong `skills/vi/references/quality-gates-vn.md`:

| Gate | Vi pham? | Muc do |
|------|---------|--------|
| Gate 1 — 3x Kill Rule | □ Co □ Khong | Critical |
| Gate 2 — Budget Sufficiency | □ Co □ Khong | Critical |
| Gate 3 — Learning Phase | □ Co □ Khong | High |
| Gate 4 — Pixel Integrity | □ Co □ Khong | Critical |
| Gate 5 — Andromeda Diversity | □ Co □ Khong | High |
| Gate 6 — Compliance | □ Co □ Khong | Critical |
| Gate 7 — TikTok Sound | □ Co □ Khong | High |
| Gate 8 — Scale Speed | □ Co □ Khong | High |
| Gate 9 — Min Data | □ Co □ Khong | Medium |
| Gate 10 — LTV:CAC | □ Co □ Khong | High |

> **Neu vi pham Gate 1, 2, 4, 6 → Fix ngay truoc khi lam bat cu dieu gi khac.**

---

## Quick Wins — Cai thien nhanh (< 15 phut)

Xac dinh va liet ke cac hanh dong:
- Muc do: Critical hoac High
- Thoi gian thuc hien: < 15 phut
- Sap xep theo: (Muc do × Uoc tinh impact) giam dan

| STT | Hanh dong | Nen tang | Muc do | Thoi gian | Ket qua ky vong |
|-----|-----------|---------|--------|-----------|-----------------|
| 1 | | | Critical | < 5p | |
| 2 | | | Critical | < 10p | |
| 3 | | | High | < 15p | |
| ... | | | | | |

---

## Cau truc ket qua output

```markdown
# Audit Ads Performance: [Ten Brand / San pham]
Ngay audit: [YYYY-MM-DD]
Nguoi audit: [Agency]

## Tong quan

| Nen tang | Diem | Grade | Trang thai |
|---------|------|-------|-----------|
| Meta Ads | [so]/100 | [A/B/C/D/F] | [mo ta ngan] |
| TikTok Ads | [so]/100 | | |
| Google Ads | [so]/100 | | |
| Zalo Ads | [so]/100 | | |
| **TONG DIEM** | **[so]/100** | **[Grade]** | |

## Quality Gates Vi Pham (xu ly TRUOC TIEN)
[Liet ke cac gate bi vi pham voi hanh dong cu the]

## Quick Wins (Thuc hien ngay hom nay)
[Top 5-10 hanh dong < 15 phut, sap xep theo impact]

## Chi tiet theo nen tang

### Meta Ads — [Diem]/100 ([Grade])
#### Tracking: [x/10]
[Liet ke checks pass/fail + mo ta van de]

#### Creative: [x/10]
[...]

[Tiep tuc cho tung nhom]

### TikTok Ads — [Diem]/100
[...]

## Action Plan 7 Ngay

| Ngay | Hanh dong | Nen tang | Nguoi TH | Ket qua ky vong |
|------|-----------|---------|---------|----------------|
| Hom nay | [Quick wins] | | | |
| Ngay 2-3 | [High priority] | | | |
| Ngay 4-5 | [Medium] | | | |
| Ngay 6-7 | [Setup + test] | | | |

## Ket qua ky vong sau 30 ngay
[Uoc tinh cai thien KPI neu fix du vấn de]
```

---

## Cross-reference

| Khi can | Goi skill |
|---------|-----------|
| Danh gia KPI va funnel hien tai | `03-danh-gia-hieu-suat` |
| Viet lai copy sau khi audit creative | `05-copy-quang-cao` |
| Tinh lai ngan sach sau khi fix tracking | `10-tinh-kpi-nguoc` |
| Lap ke hoach marketing moi sau audit | `00-ke-hoach-mkt` |
| Sua landing page sau khi audit khau Landing | `12-brief-landing-page` |
| Setup lai pixel/CAPI/UTM sau khi audit khau Tracking | `53-tracking-setup` |
| Da fix xong va so on dinh >= 5 ngay — muon scale | `55-scaling-ads` |
| Frequency cao / can nham lai nguoi da tuong tac | `56-retargeting-plan` |
| Lap ke hoach ads ky sau tu ket qua audit | `57-next-ads-plan` |

---

## Checklist chat luong

Truoc khi giao audit:

- [ ] Da kiem tra tat ca 10 Quality Gates — vi pham nao duoc danh dau ro rang
- [ ] Health Score da tinh cho tung nen tang rieng biet + Aggregate Score
- [ ] Quick Wins da liet ke — < 15 phut, sap xep theo impact
- [ ] Chi tiet audit co check_pass / check_fail ro rang (khong chi noi "can cai thien")
- [ ] Action Plan 7 ngay co nguoi chiu trach nhiem va ket qua ky vong
- [ ] Khong de xuat Scale khi chua qua Gate 1 + Gate 4
- [ ] Khong de xuat chinh sua khi ad set dang Learning Phase (Gate 3)
- [ ] Moi van de Critical duoc uu tien len dau action plan
- [ ] Da chay Quick Health Check 6 chi so truoc khi di sau
- [ ] Da audit du 6 khau: Account → Campaign → Adset → Creative → Landing → Tracking
- [ ] Moi trieu chung duoc quy ve nguyen nhan goc theo dung khau — khong dung lai o "CPL cao"
- [ ] Da kiem tracking truoc khi ket luan creative hoac tep co van de
- [ ] Action plan chi doi 1 bien moi lan, co moc danh gia sau 3-5 ngay
- [ ] Khong de xuat scale khi so chua on dinh >= 5 ngay
