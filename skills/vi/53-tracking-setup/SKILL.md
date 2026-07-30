---
name: 53-tracking-setup
description: "Setup he thong tracking truoc khi chay ads: Pixel + Conversion API, GA4, UTM convention, event mapping, offline conversion, va checklist verify xanh truoc khi len camp. Quy tac cung: khong chay ads khi tracking chua verify. Kich hoat khi user nhac 'setup tracking', 'pixel', 'UTM', 'conversion API', 'CAPI', 'GA4', 'do luong campaign'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "setup tracking"
  - "pixel setup"
  - "cai pixel"
  - "UTM"
  - "conversion API"
  - "CAPI"
  - "GA4 setup"
  - "theo doi chuyen doi"
  - "tracking cho ads"
output: "File .md — checklist setup tracking theo platform, UTM template, event mapping, offline conversion, checklist verify truoc launch, bang xu ly su co"
related:
  - 52-account-structure
  - 54-media-plan
  - 21-audit-ads-performance
  - 11-thiet-lap-kenh
  - 13-phan-tich-du-lieu
---

# Tracking Setup — Do Luong Truoc Khi Chay Ads

> Ads khong co tracking = lai xe bit mat. QUY TAC CUNG: khong chay ads khi tracking chua verify xanh — chay la lang phi 100%. Setup dung tu dau; sua tracking giua campaign lam hong data lich su.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Platform chay ads?** Meta / TikTok / Google / Zalo / YouTube — va objective: Lead (form/inbox) / Purchase / Traffic?
2. **Website / landing page dung gi?** WordPress / Ladipage / Webflow / Shopify / Custom — co quyen sua header hoac cai GTM khong?
3. **Co developer ho tro khong?** (quyet dinh cach cai CAPI: partner integration hay code)
4. **Chot don o dau?** Tren web (do duoc bang pixel) hay qua inbox/goi dien (can lead log + offline conversion)?

## Nguyen tac

1. **Khong chay ads khi tracking chua xanh.** Moi dong tien chi truoc khi verify la tien mu.
2. **Setup dung tu dau.** Doi event/pixel giua campaign = data lich su khong so sanh duoc.
3. **1 cach cai duy nhat.** Cai ca GTM lan hard-code = duplicate event = data ao gap doi.
4. **UTM nhat quan.** Dat sai 1 lan la GA4 loc khong noi — dinh nghia convention truoc, ca team dung chung.
5. **Do den tan don, khong dung o lead.** 1000 lead ma 10 don thi phai biet loi o ads hay o sales — can offline conversion / lead log.

## Quy trinh

### Buoc 1 — Setup theo platform

**Meta Ads — Pixel + CAPI (bat buoc ca hai):**
- [ ] Tao Pixel trong Events Manager; cai len website qua GTM hoac header
- [ ] Setup Standard Events: PageView, ViewContent, Lead, Purchase
- [ ] Verify bang Meta Pixel Helper — trang thai Active
- [ ] Setup Conversions API (CAPI) — bat buoc sau iOS 14; uu tien partner integration (Ladipage, WordPress plugin, Shopify) neu khong co dev
- [ ] Bat dedup (event_id trung nhau giua pixel va CAPI)
- [ ] Test Events: bam thu form/nut → thay event trong Events Manager
- [ ] Event Match Quality (EMQ) >= 6.0 (gui them email/phone/ten qua CAPI de tang match)

**TikTok Ads:**
- [ ] Tao + cai TikTok Pixel; setup Events: ViewContent, SubmitForm, Purchase
- [ ] Setup Events API neu co the; verify bang TikTok Pixel Helper

**Google Ads:**
- [ ] Tao Conversion Action; cai Google Tag (gtag.js) hoac qua GTM
- [ ] Link GA4 voi Google Ads; import goal tu GA4
- [ ] Chi de ENABLED conversion dung cho bidding — tranh dem trung

**Zalo Ads:** cai Zalo Pixel, setup conversion, verify.
**YouTube Ads:** dung chung conversion tracking cua Google Ads.

### Buoc 2 — UTM convention

```
https://domain.com/lp?utm_source=[source]&utm_medium=[medium]&utm_campaign=[campaign]&utm_content=[ad_name]
```

| Parameter | Quy uoc | Vi du |
|-----------|---------|-------|
| utm_source | facebook / tiktok / google / zalo / email | facebook |
| utm_medium | paid_social / paid_search / display / email / organic | paid_social |
| utm_campaign | `[product]_[audience]_[MMYY]` | course-a_cold_0726 |
| utm_content | `[creative-type]_[hook-type]_[version]` — khop ten ad | vid_pain_v1 |

Quy tac: viet thuong, khong dau, khong khoang trang. `utm_content` phai trung ten ad trong `52-account-structure` de doi chieu 2 chieu Ads Manager ↔ GA4.

### Buoc 3 — Event mapping GA4

| Event GA4 | Trigger | Map voi platform event |
|-----------|---------|------------------------|
| page_view | Tat ca trang | PageView (Meta), ViewContent (TikTok) |
| view_item | Xem trang san pham/offer | ViewContent (Meta) |
| generate_lead | Submit form / click inbox | Lead (Meta), SubmitForm (TikTok), Conversion (Google) |
| purchase | Thanh toan thanh cong | Purchase (Meta/TikTok/Google) |

Moi event chi fire 1 lan cho 1 hanh dong. Dat conversion chinh trong GA4 = event khop objective ads.

### Buoc 4 — Offline conversion & Lead Log

Ap dung khi chot don qua inbox / goi dien / tai quay (pho bien o VN):

1. **Lead Log** — ghi moi lead ngay khi nhan, moi hang 1 lead: `ID | Ngay vao | Ten | SDT | Kenh nguon | Loai tuong tac (inbox/form/goi) | Trang thai (moi/qualified/chot/khong chot) | Ly do khong chot | Doanh thu neu chot | Sales phu trach`. Hoi moi khach "biet minh qua kenh nao?" ngay cau dau.
2. **Offline conversion import:** upload danh sach chot don (SDT/email + thoi gian) len Meta Offline Events / Google Ads offline conversion theo tuan — de thuat toan hoc tu don that, khong chi lead.
3. Doi chieu thang: so lead trong Lead Log vs so lead Ads Manager bao — lech >20% la co van de tracking hoac attribution.

### Buoc 5 — Checklist verify XANH truoc khi len camp

Tat ca phai PASS — thieu 1 muc = KHONG LAUNCH:

- [ ] Pixel fire dung tren landing page + thank you page (Pixel Helper xanh)
- [ ] Conversion event dung loai (Lead/Purchase) — khong nham PageView
- [ ] Khong duplicate event (1 hanh dong = 1 event trong Events Manager)
- [ ] CAPI hoat dong, dedup bat, EMQ >= 6.0
- [ ] Test Events: tu bam thu 1 conversion that va thay no ghi nhan
- [ ] UTM day du tren tat ca link ads, dung convention
- [ ] GA4 nhan duoc session tu nguon paid (test bang realtime)
- [ ] Lead Log san sang (neu chot qua inbox/goi dien)

### Buoc 6 — Daily / weekly check sau launch

**Daily (2 phut):** Events Manager 24h co event deu khong; Google Ads conversions dang ghi; GA4 co session tu paid.
**Weekly:** CAPI match rate > 70%; co duplicate event khong; so lead 3 nguon (Ads Manager / GA4 / Lead Log) lech <20%; UTM co link nao thieu/sai.

## Xu ly su co

| Van de | Nguyen nhan thuong gap | Cach fix |
|--------|------------------------|----------|
| Pixel khong fire | Cai sai vi tri / thieu tren LP | Check GTM preview, hard-code lai header |
| Event duplicate | Cai ca GTM lan hard-code | Chon 1 cach, go cach kia; check event_id dedup |
| CAPI match rate thap | Khong gui email/phone | Them customer data vao payload CAPI |
| Conversion khong ghi | Sai ten event / sai trang trigger | Check chinh ta event, trigger dung thank you page |
| GA4 lech xa Ads Manager | Attribution window khac nhau + UTM thieu | Chuan hoa UTM, so sanh cung window |
| Lead nhieu nhung khong ro nguon | Quen hoi kenh, khong ghi Lead Log | Bat buoc cau hoi nguon trong script sales |

## Cau truc ket qua

Ten file: `tracking-setup-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Tracking Setup — [San pham/Campaign]
Platform: [danh sach] · Website: [nen tang] · Objective: [Lead/Purchase]

## 1. Checklist setup theo platform  [bang trang thai tung muc]
## 2. UTM convention               [bang parameter + vi du cua project]
## 3. Event mapping                [bang GA4 ↔ platform events]
## 4. Offline conversion & Lead Log [cach ghi + lich upload]
## 5. Verify truoc launch          [checklist xanh — ngay verify + nguoi verify]
## 6. Lich check daily/weekly      [ai lam, luc nao]
```

## Lien ket skill

- `52-account-structure`: setup campaign SAU khi tracking xanh; utm_content khop ten ad.
- `54-media-plan`: plan xac dinh objective → quyet dinh event can track.
- `21-audit-ads-performance`: audit tracking dinh ky (EMQ, duplicate, match rate).
- `11-thiet-lap-kenh`: setup kenh va tai san (page, OA, website) truoc tracking.
- `13-phan-tich-du-lieu`: doc data sach tu he thong tracking nay.

## Checklist chat luong

- [ ] Du checklist setup cho moi platform se chay
- [ ] UTM convention co bang quy uoc + vi du thuc te, khop naming ads
- [ ] Event mapping day du tu page_view den purchase
- [ ] Co phuong an offline conversion / Lead Log neu chot ngoai web
- [ ] Checklist verify xanh day du — ghi ro trang thai tung muc
- [ ] Co lich daily/weekly check va nguong canh bao (match rate >70%, lech <20%)
- [ ] Nhac lai quy tac: tracking chua xanh = khong launch
