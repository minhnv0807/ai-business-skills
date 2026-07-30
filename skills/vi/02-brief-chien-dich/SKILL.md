---
name: 02-brief-chien-dich
description: Brief chien dich marketing — 9 phan day du tu Context den Risk, bao gom creative direction, RACI, budget allocation theo phase, va auto-trigger cac skill lien quan.
argument-hint: "<brand + campaign objective + timeline>"
metadata:
  version: 2.1.0
  category: strategy
triggers:
  - "brief chien dich"
  - "brief sang tao"
  - "brief Tet"
  - "brief ra mat san pham"
  - "viet brief"
  - "creative brief"
  - "timeline campaign"
  - "phan cong task campaign"
  - "ai lam gi trong chien dich"
output: File .md brief chien dich 9 phan — Context, Objectives, Target, Core Message, Creative Direction, Channel System, Timeline, Deliverables, Risks
related:
  - 00-ke-hoach-mkt
  - 01-lich-noi-dung
  - 04-script-video
  - 05-copy-quang-cao
  - 06-brief-ugc-egc
  - 09-insight-khach-hang
  - 41-campaign-asset-list
  - 62-marketing-review
  - 63-campaign-retrospective
  - 64-team-brief
---

# Brief Chien Dich

---

## Thu thap thong tin

Hoi user toi da 4 cau truoc khi bat dau:

1. **Chien dich gi?** Ra mat san pham / Seasonal (Tet, 8/3) / Brand awareness / Clearance sale / Re-launch?
2. **Muc tieu chinh?** Tang doanh thu [so tien] / Tang follower [so luong] / Thu lead [so luong] / Brand awareness [reach muc tieu]?
3. **Ngan sach va thoi gian?** Tong ngan sach, thoi gian chien dich (bao nhieu tuan), ngay bat dau.
4. **Da co gi san?** Asset thuong hieu (logo, brand guide)? Testimonial/UGC? Data khach hang cu? Landing page?

---

### Khi dùng skill / repo khác

| Tình huống | Use |
|------------|-----|
| Single TVC 1-page brief (1 clip, 1 channel mix) | **`opa-prd --mode=creative`** (OPA KIT) — 10-section lightweight |
| Full campaign brief (multi-creative, multi-channel, 14-21 ngày) | **02-brief-chien-dich** (this skill) |
| Content calendar dài hạn (3-6 tháng) | **`01-lich-noi-dung`** |
| Ad copy actual text production | **`05-copy-quang-cao`** |
| Workflow chain 7 skills launch campaign | **`campaign-launch`** workflow (workflows/vi/) |

> Note: `opa-prd` ở OPA KIT focus 1-page brief lightweight cho fast handoff sang AI agents (Seedance, Kling, Claude). Skill này (`02-brief-chien-dich`) focus full campaign với multiple touch points.

---

## Phan 1 — Context (Boi canh)

### 1.1 Tong quan

| Hang muc | Noi dung |
|----------|----------|
| Ten chien dich | [ten chien dich] |
| Loai | Launch / Seasonal / Awareness / Sales / Re-launch |
| Thuong hieu | [ten thuong hieu] |
| San pham / Dich vu | [mo ta ngan] |
| Ly do chay chien dich | [tai sao chay luc nay? trigger la gi?] |

### 1.2 Tinh hinh thi truong

| Yeu to | Mo ta |
|--------|-------|
| Xu huong nganh | [xu huong hien tai] |
| Hanh vi khach hang mua nay | [thay doi gi?] |
| Doi thu dang lam gi | [hoat dong noi bat cua doi thu] |
| Co hoi khai thac | [khe thi truong] |

### 1.3 Bai hoc tu chien dich truoc

| Chien dich truoc | Ket qua | Bai hoc |
|------------------|---------|---------|
| [ten chien dich] | [KPI dat / khong dat] | [dieu gi hieu qua / khong hieu qua] |

---

## Phan 2 — Objectives (Muc tieu)

### 2.1 Muc tieu SMART

| Loai | Muc tieu | Do bang gi | Deadline |
|------|----------|-----------|----------|
| Business | [VD: Doanh thu 500 trieu trong 4 tuan] | Doanh so, GMV | [ngay] |
| Marketing | [VD: 5,000 tin nhan, CPMess <30K] | So mess, CPMess, ROAS | [ngay] |
| Brand | [VD: Reach 2 trieu, tang 3K follower] | Reach, follower, mention | [ngay] |

### 2.2 KPI chi tiet

| KPI | Muc tieu | Benchmark nganh | Gap |
|-----|----------|-----------------|-----|
| CPMess | [so] | [benchmark tu references/benchmarks-vietnam.md] | |
| ROAS | [so]x | >3x | |
| CPL | [so] | [benchmark] | |
| Reach | [so] | | |
| Engagement rate | [so]% | | |
| So don hang | [so] | | |

---

## Phan 3 — Target Audience (Doi tuong muc tieu)

### 3.1 Chan dung khach hang

| Thuoc tinh | Primary | Secondary |
|-----------|---------|-----------|
| Do tuoi | [khoang tuoi] | [khoang tuoi] |
| Gioi tinh | [nam/nu/tat ca] | |
| Khu vuc | [tinh/thanh] | |
| Thu nhap | [khoang] | |
| Nghe nghiep | [nghe] | |
| Noi dau chinh | [van de lon nhat] | |
| Mong muon | [dieu ho muon] | |
| Rao can | [ly do chua mua] | |
| Kenh ho dung | [TikTok/FB/Zalo/IG] | |
| Ai anh huong ho | [nguoi/kenh tin tuong] | |

### 3.2 Insight khach hang

> Goi skill `09-insight-khach-hang` de khai thac sau.

**Insight chinh:** [phat bieu insight]

### 3.3 Insight Validation Checklist

Kiem tra xem insight co that su la insight hay chi la observation:

| Tieu chi | Dat | Khong dat |
|----------|-----|-----------|
| **Specific** — Cu the cho nhom khach nay, khong chung chung? | [ ] | [ ] |
| **Hidden** — Khach hang khong tu noi ra, phai khai thac? | [ ] | [ ] |
| **Actionable** — Co the bien thanh thong diep/creative? | [ ] | [ ] |
| **Emotional** — Cham vao cam xuc, khong chi ly tri? | [ ] | [ ] |
| **True** — Dua tren du lieu/quan sat thuc, khong phai gia dinh? | [ ] | [ ] |

**Quy tac:** Phai dat it nhat 4/5 tieu chi. Neu khong → do la observation, chua phai insight. Tim lai.

**Phan biet:**
- Observation: "Phu nu 25–35 quan tam cham soc da" → ai cung biet, khong co gi moi
- Insight: "Ho mua serum khong phai vi da dep hon — ma vi cam giac dang tu thuong minh sau 1 ngay met moi" → cham cam xuc, co the lam creative

---

## Phan 4 — Core Message (Thong diep cot loi)

### 4.1 Message Framework

| Tang | Thong diep | Dung cho |
|------|-----------|----------|
| Tagline | [5–8 tu, de nho] | Moi noi — nhat quan xuyen suot |
| Key message | [1–2 cau, giai thich gia tri] | Website, landing page, ads chinh |
| Supporting message #1 | [bang chung/tinh nang ho tro] | Content giao duc |
| Supporting message #2 | [bang chung/tinh nang ho tro] | Content thuyet phuc |
| Supporting message #3 | [bang chung/tinh nang ho tro] | Content chot don |

### 4.2 Tone of Voice

| Thuoc tinh | La | Khong phai |
|-----------|-----|-----------|
| Giong dieu | [VD: than thien, chuyen gia] | [VD: kho khan, xa cach] |
| Ngon ngu | [VD: don gian, doi thuong] | [VD: hoc thuat, chuyen nganh] |
| Cam xuc | [VD: tu tin, an tam] | [VD: lo lang, ap luc] |

---

## Phan 5 — Creative Direction (Dinh huong sang tao)

### 5.1 Creative Territory

| Hang muc | Chi tiet |
|----------|----------|
| Visual mood | [VD: am ap, tu nhien, dang tin — khong bong bay, fake] |
| Color palette | [mau chinh + mau phu] |
| Typography | [font heading + body] |
| Photography style | [VD: lifestyle that, khong stock photo] |
| Video style | [VD: talking head + b-roll, UGC style, cinematic] |
| Do's | [lam gi — VD: dung anh khach that, quay vertical] |
| Don'ts | [khong lam gi — VD: khong dung nhac buon, khong font nhieu mau] |

### 5.2 Key Visual

| Yeu to | Mo ta |
|--------|-------|
| Hero image/video | [mo ta visual chinh] |
| Thumbnail style | [mo ta] |
| Text overlay | [co/khong, style] |
| Logo placement | [vi tri, kich thuoc] |

### 5.3 Creative brief theo kenh

| Kenh | Dinh dang | Kich thuoc | Thoi luong | So luong creative |
|------|-----------|-----------|------------|-------------------|
| TikTok | Video dung | 9:16 (1080x1920) | 15–60s | [so] |
| Facebook (feed) | Video + anh | 1:1, 4:5 | 15–30s | [so] |
| Instagram (Reels) | Video dung | 9:16 | 15–30s | [so] |
| Instagram (feed) | Carousel | 1:1 (1080x1080) | 5–7 slide | [so] |
| Zalo OA | Banner + text | 600x315 | -- | [so] |
| Email | Banner + body | 600px width | -- | [so] |
| Landing page | Hero + sections | Responsive | -- | 1 |

---

## Phan 6 — Channel System (He thong kenh)

### 6.1 Kenh su dung

> Tham khao `references/channel-system.md`

| Kenh | Vai tro | Ngay bat dau | Ngan sach | KPI |
|------|---------|-------------|-----------|-----|
| TikTok (organic) | Reach + awareness | [ngay] | [production cost] | View, follower |
| TikTok (ads) | Mess + conversion | [ngay] | [so tien] | CPMess, ROAS |
| Facebook (ads) | Retarget + conversion | [ngay] | [so tien] | CPMess, ROAS |
| UGC Network | Social proof | [ngay] | [thu lao] | View, trust |
| Zalo OA | Nurture | [ngay] | -- | Read rate |
| Email | Nurture + offer | [ngay] | -- | Open rate |
| Landing page | Conversion | [ngay] | [thiet ke] | Conv rate |

### 6.2 Paid Media Plan

| Kenh | Muc tieu | Audience | Ngan sach/ngay | Creative | Thoi gian |
|------|----------|----------|---------------|----------|-----------|
| Meta — Awareness | Reach | Broad, LAL 1–3% | [so tien] | Video 15s hook | [tuan] |
| Meta — Conversion | Mess/Lead | Retarget + Interest | [so tien] | Video + carousel | [tuan] |
| TikTok — Reach | View + Mess | Broad | [so tien] | UGC style video | [tuan] |

---

## Phan 7 — Timeline & Phases

### 7.1 Phan bo ngan sach theo phase

| Phase | Thoi gian | % Ngan sach | Muc dich | Kenh chinh |
|-------|----------|-------------|----------|------------|
| Teasing | Tuan 1 (truoc launch) | 15% | Tao to mo, build anticipation | Organic TikTok/FB, Email teaser |
| Bung nhe (Soft launch) | Tuan 2 | 20% | Test creative, thu data | Paid ads ngan sach nho, UGC |
| Bung manh (Full launch) | Tuan 3–4 | 40% | Scale winning creative, chot don | Paid ads toan luc, retarget |
| Duy tri (Sustain) | Tuan 5+ | 25% | Re-engage, retarget, thu hep | Retarget, email, Zalo nurture |

### 7.2 Chi tiet timeline

| Ngay | Hang muc | Chi tiet | Nguoi chiu TN | Trang thai |
|------|----------|----------|--------------|------------|
| [D-14] | Creative production | San xuat video + anh | [ten] | |
| [D-7] | UGC brief gui | Brief cho UGC creators | [ten] | |
| [D-5] | Landing page live | Setup + test toan bo | [ten] | |
| [D-3] | Teasing bat dau | Organic post + story | [ten] | |
| [D-Day] | Launch chinh thuc | Ads live, blast email, broadcast | [ten] | |
| [D+3] | Review data dau | Check CPMess, CTR, creative nao tot | [ten] | |
| [D+7] | Toi uu vong 1 | Cut creative kem, scale creative tot | [ten] | |
| [D+14] | Review giua chien dich | So sanh vs KPI, dieu chinh | [ten] | |
| [D+21] | Retarget phase | Focus retarget warm audience | [ten] | |
| [D+28] | Ket thuc + bao cao | Tong ket, bai hoc, de xuat tiep theo | [ten] | |

---

## Phan 8 — Deliverables & RACI

### 8.1 Danh sach san pham ban giao

| STT | Deliverable | So luong | Deadline | Nguoi lam | Nguoi duyet |
|-----|------------|----------|----------|-----------|-------------|
| 1 | Video TikTok (30s) | [so] | [ngay] | [ten] | [ten] |
| 2 | Video Facebook (15s) | [so] | [ngay] | [ten] | [ten] |
| 3 | Carousel (5–7 slide) | [so] | [ngay] | [ten] | [ten] |
| 4 | Copy quang cao (3 phien ban) | [so] | [ngay] | [ten] | [ten] |
| 5 | Landing page | 1 | [ngay] | [ten] | [ten] |
| 6 | Email template (welcome + offer) | 2 | [ngay] | [ten] | [ten] |
| 7 | UGC brief | [so] | [ngay] | [ten] | [ten] |
| 8 | Script video | [so] | [ngay] | [ten] | [ten] |
| 9 | Zalo broadcast noi dung | [so] | [ngay] | [ten] | [ten] |
| 10 | Bao cao ket thuc chien dich | 1 | [ngay] | [ten] | [ten] |

### 8.2 RACI Matrix

| Deliverable | Marketing Lead | Content Creator | Designer | Ads Specialist | Founder |
|-------------|---------------|----------------|----------|---------------|---------|
| Brief chien dich | **R** (Responsible) | I | I | I | **A** (Accountable) |
| Creative production | A | **R** | **R** | C (Consulted) | I (Informed) |
| Copy quang cao | A | **R** | I | C | I |
| Setup ads | A | I | I | **R** | I |
| Landing page | A | C | **R** | C | I |
| UGC coordination | **R** | C | I | I | I |
| Toi uu hang ngay | A | I | I | **R** | I |
| Bao cao | **R** | C | I | C | **A** |

**Chu thich RACI:**
- **R** (Responsible): Nguoi lam
- **A** (Accountable): Nguoi chiu trach nhiem cuoi cung, duyet
- **C** (Consulted): Duoc hoi y kien truoc khi lam
- **I** (Informed): Duoc thong bao ket qua

---

## Phan 9 — Risks & Mitigation

### 9.1 Bang rui ro chien dich

| Rui ro | Xac suat | Anh huong | Severity | Ke hoach giam thieu | Trigger canh bao |
|--------|----------|-----------|----------|---------------------|------------------|
| CPMess tang >50% vs target | Cao | Cao | **CRITICAL** | Chuan bi 5 creative du phong, giam spend + chuyen organic | CPMess > target + 30% sau 3 ngay |
| Creative khong hieu qua | Cao | Cao | **CRITICAL** | A/B test tu ngay 1, 3–5 creative moi/tuan | CTR < 1% sau 2 ngay |
| Landing page conv rate thap | Trung binh | Cao | **HIGH** | Test A/B headline + CTA, heatmap | Conv rate < 10% sau 1 tuan |
| UGC giao tre | Trung binh | Trung binh | **MEDIUM** | Brief som, co noi dung backup | Chua nhan UGC D-3 |
| Doi thu chay deal cung luc | Thap | Cao | **HIGH** | Tang USP messaging, khong canh tranh gia | Phat hien doi thu ads cung thoi diem |
| Phan hoi tieu cuc | Thap | Rat cao | **CRITICAL** | Crisis protocol: phan hoi <2h, transparent, co template | Comment/review tieu cuc vuot 5 trong 1 ngay |
| Audience fatigue | Trung binh | Trung binh | **MEDIUM** | Rotate creative moi 5–7 ngay, expand audience | Frequency > 3, CTR giam 30% |
| Budget vuot ke hoach | Thap | Trung binh | **MEDIUM** | Cap daily budget, review chi phi hang ngay | Spend > 110% ke hoach |

### 9.2 Ke hoach B (Fallback)

| Tinh huong | Hanh dong |
|-----------|-----------|
| Ngan sach bi cat 50% | Chuyen 100% sang organic + UGC, chi chay retarget |
| Kenh chinh bi gian doan (bi ban ads, ...) | Chuyen ngan sach sang kenh phu trong 24h |
| Khong dat KPI giua chien dich | Hop khan, re-brief creative, thu hep audience |

---

## Khau chuyen brief → timeline phan cong

Brief xong chua trien khai duoc. Phai chuyen thanh **bang task co owner va dependency** — day la khau hay bi bo qua nhat va cung la ly do chinh khien chien dich tre.

> Timeline khong phai cai lich. No la cong cu quan ly **dependency**: viec A phai xong thi viec B moi lam duoc. Nhin timeline phat hien duoc nut that TRUOC khi no xay ra, khong doi den deadline moi biet tre.

### Nguyen tac lap timeline

1. **Bat dau tu ngay launch, lui nguoc lai.** Khong tinh xuoi tu hom nay.
2. **Moi task co dung 1 owner.** Khong ghi "ca team cung lam" — viec khong ai chiu trach nhiem la viec khong ai lam.
3. **Chua 1 ngay buffer truoc launch** cho viec phat sinh.
4. **Task nao co dependency phai ghi ro phu thuoc vao task nao** — thieu cot nay, timeline chi la danh sach viec.

### Phase 1 — Chuan bi (truoc launch)

| # | Task | Owner | Thoi luong | Phu thuoc vao | Deadline | Gate duyet |
|---|------|-------|-----------|--------------|---------|-----------|
| 1.1 | Chot offer + landing page | Lead + Dev | 3 ngay | Brief duoc duyet | | Lead duyet |
| 1.2 | Setup tracking + verify | Performance | 1 ngay | Landing page live | | Xanh moi qua |
| 1.3 | Brief cho team content | Lead | 0.5 ngay | Brief xong | | `64-team-brief` |
| 1.4 | Chot danh sach asset can lam | Lead + Designer | 0.5 ngay | Brief content | | `41-campaign-asset-list` |
| 1.5 | San xuat content dot 1 | Content + Designer | 5 ngay | Nhan brief | | |
| 1.6 | Review content | Lead | 1 ngay | Content ban nhap | | `62-marketing-review` |
| 1.7 | Sua va chot ban cuoi | Content + Designer | 1 ngay | Feedback review | | Lead duyet |
| 1.8 | Brief cho team ads | Lead | 0.5 ngay | Content duoc duyet | | |
| 1.9 | Setup ads + copy | Performance | 2 ngay | Brief + creative | | Pre-launch check |

### Phase 2 — Teasing

| # | Task | Owner | Kenh | Ngay dang |
|---|------|-------|------|----------|
| 2.1 | Bai teasing 1 (goc noi dau) | Content + Designer | Facebook, TikTok | |
| 2.2 | Bai teasing 2 (giao duc / insight) | Content | Facebook | |
| 2.3 | Bat ads cho tep warm | Performance | Meta | |
| 2.4 | Email / Zalo ham nong truoc launch | Lead | Email, Zalo OA | |
| 2.5 | Seeding vao group | Content | Group Facebook | |
| 2.6 | Bai teasing 3 (he lo) | Content + Designer | Facebook, TikTok | |

### Phase 3 — Launch (chi tiet theo gio)

| Ngay | Gio | Hoat dong | Owner | Kenh |
|------|-----|----------|-------|------|
| D-day | 08:00 | Dang bai cong bo chinh thuc | Content | Tat ca |
| D-day | 09:00 | Bat ads BOFU | Performance | Meta, TikTok |
| D-day | 12:00 | Broadcast Zalo OA | Lead | Zalo OA |
| D+1 | 08:00 | Email follow-up lead chua mua | Lead | Email |
| D+2 | | Dang social proof (review khach dau tien) | Content | Facebook |
| D+3 | | Bao cao giua chang → Lead quyet dinh | Performance | — |
| D+5 | | Day urgency | Content | Tat ca |
| D+7 | | Nhac lan cuoi (email + bai dang) | Lead + Content | Email + Social |
| D+7 | 23:59 | Dong offer | Lead | — |

### Phase 4 — Sau launch

| # | Hoat dong | Owner | Moc | Skill |
|---|----------|-------|-----|-------|
| 4.1 | Keo data va tong hop so lieu | Performance | D+8 | `13-phan-tich-du-lieu` |
| 4.2 | Viet bao cao chien dich | Lead | D+9 | `07-bao-cao-marketing` |
| 4.3 | Thu thap phan hoi khach hang | Lead | D+10 | |
| 4.4 | Hop rut kinh nghiem voi team | Lead | D+10 | `63-campaign-retrospective` |
| 4.5 | Setup camp evergreen (neu can) | Performance | D+14 | `57-next-ads-plan` |

### Checklist truoc launch (D-1)

**Content**
- [ ] Toan bo caption, script, creative da duoc duyet (`62-marketing-review`)
- [ ] Hinh anh dung kich thuoc tung nen tang (`50-asset-resize`)
- [ ] Hashtag va link UTM da dien day du
- [ ] Bai da len lich hoac co nguoi truc dang

**Performance**
- [ ] Pixel / tracking da verify xanh — **khong chay ads khi chua xanh**
- [ ] Ads da setup xong, dang o trang thai Paused cho bat
- [ ] Ngan sach dung theo plan
- [ ] Landing page tai nhanh, form hoat dong dung
- [ ] UTM day du tren tat ca link ads

**Van hanh**
- [ ] Co nguoi truc inbox trong ngay launch
- [ ] Co kich ban tra loi comment / inbox thuong gap
- [ ] Lead lien lac duoc trong suot ngay launch

### Escalation — khi nao bao Lead ngay lap tuc

| Tinh huong | Hanh dong |
|-----------|----------|
| Tracking khong fire | Bao ngay — **khong bat ads** |
| Ads bi tu choi | Bao ngay |
| CPL ngay dau > 2x target | Bao, cho quyet dinh — khong tu tang ngan sach |
| Comment tieu cuc lan rong | Bao ngay → `66-crisis-playbook` |
| Landing page loi / form hong | Bao ngay, tam dung ads lien quan |

---

## Auto-trigger cac skill lien quan

Khi brief hoan thanh, tu dong de xuat chay:

```
02-brief-chien-dich (HOAN THANH)
  |
  |-- [Tiep theo 1] 05-copy-quang-cao  → Viet copy ads dua tren core message
  |-- [Tiep theo 2] 04-script-video    → Viet script dua tren creative direction
  |-- [Tiep theo 3] 01-lich-noi-dung   → Len lich dang bai dua tren timeline + kenh
  |-- [Tiep theo 4] 06-brief-ugc-egc   → Brief cho UGC creators dua tren deliverables
  |-- [Tiep theo 5] 41-campaign-asset-list → Chot danh sach asset thiet ke can lam
  |-- [Tiep theo 6] 64-team-brief      → Chuyen brief thanh viec giao cho tung nguoi
  |-- [Trong khi chay] 62-marketing-review → Gate duyet content va ads truoc launch
  |-- [Sau chien dich] 63-campaign-retrospective → Hop rut kinh nghiem D+10
```

---

## Checklist chat luong

Truoc khi giao brief, kiem tra:

- [ ] Du 9 phan (Context, Objectives, Target, Core Message, Creative Direction, Channel, Timeline, Deliverables, Risks)
- [ ] Muc tieu SMART — cu the, do duoc, co deadline
- [ ] Insight da qua 5 tieu chi validation — khong phai observation
- [ ] Core message co 3 tang: tagline + key message + supporting
- [ ] Creative direction co Do's va Don'ts ro rang
- [ ] Ngan sach phan bo 4 phase cong dung 100% (Teasing 15% + Bung nhe 20% + Bung manh 40% + Duy tri 25%)
- [ ] Timeline co milestone review cu the (D+3, D+7, D+14)
- [ ] RACI ro rang — moi deliverable co R va A
- [ ] Rui ro co it nhat 5 muc, moi muc co severity + trigger canh bao
- [ ] Co ke hoach B (fallback) cho it nhat 3 tinh huong
- [ ] Benchmark su dung so lieu Vietnam 2025–2026
- [ ] Tone of voice nhat quan voi thuong hieu
- [ ] Tat ca deadline kha thi — khong bi chen nhau
- [ ] Da chuyen brief thanh bang task theo phase, co cot Owner va Phu thuoc vao
- [ ] Moi task co dung 1 owner — khong co task ghi "ca team"
- [ ] Timeline duoc tinh lui tu ngay launch, co 1 ngay buffer truoc launch
- [ ] Cac gate duyet duoc ghi ro (review content, verify tracking, pre-launch check)
- [ ] Co checklist D-1 du 3 nhom: Content, Performance, Van hanh
- [ ] Co quy tac escalation — nhung tinh huong phai bao Lead ngay
