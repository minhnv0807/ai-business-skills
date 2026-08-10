---
name: 14-email-marketing
description: "Dung khi can xay chuoi email hoac Zalo OA gui theo kich ban — welcome series, nurture, promotion, win-back: phan tep, luong automation, subject line, tan suat gui, A/B test va KPI open/click. Kich hoat khi user nhac 'email marketing', 'chuoi email tu dong', 'welcome email', 'email nurture', 'broadcast Zalo OA', 'co list ma khong biet gui gi', 'email khong ai mo', 'cham soc khach qua Zalo'. Khong dung cho — code file HTML email chay duoc tren moi client thi dung skill 49-html-email-template; xay he thong giu chan khach da mua thi dung skill 69-giu-chan-khach-hang; thiet ke qua tang doi thong tin lien he thi dung skill 70-lead-magnet."
argument-hint: "<audience + objective + sequence type>"
metadata:
  version: 2.1.2
  category: operations
triggers:
  - "email marketing"
  - "chuoi email"
  - "email tu dong"
  - "welcome email"
  - "email nurture"
  - "email sequence"
  - "Brevo"
  - "thiet lap email"
  - "Zalo OA broadcast"
  - "broadcast Zalo"
  - "tin Zalo cham soc khach"
output: File .md chua chien luoc email marketing day du — sequence template, automation flow, subject line, segmentation, A/B test, va KPI tracking
related:
  - 01-lich-noi-dung
  - 05-copy-quang-cao
  - 09-insight-khach-hang
  - 12-brief-landing-page
  - 15-social-listening
  - 49-html-email-template
  - 13-phan-tich-du-lieu
---

# Email Marketing

> Email la kenh so huu — khong phu thuoc thuat toan, khong mat tien tiep can lai nguoi da dang ky.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **San pham/dich vu gi?** Mo ta ngan + doi tuong khach hang.
2. **Muc tieu email?** Thu lead moi, nurture lead cu, ban hang, hay re-engage khach cu?
3. **Da co list email chua?** Bao nhieu subscriber? Da phan loai nhom chua?
4. **Dang dung tool nao?** Brevo, Mailchimp, Kit, hay chua co? Da setup domain chua?

---

## Nguyen tac cot loi

| Nguyen tac | Giai thich |
|------------|-----------|
| Gia tri truoc ban hang | 80% email cung cap gia tri, 20% email ban hang |
| Phan khuc truoc gui | Khong bao gio gui cung 1 email cho toan bo list |
| 1 email = 1 muc dich | Moi email chi co 1 CTA chinh |
| Mobile-first | 70%+ doc email tren dien thoai — thiet ke cho man hinh nho truoc |
| Test lien tuc | A/B test subject line va thoi gian gui moi tuan |
| Ton trong nguoi nhan | Co link unsubscribe ro rang, khong spam |

---

## Cau truc 1 email

| Thanh phan | Gioi han | Vai tro |
|------------|---------|--------|
| Subject line | 50 ky tu (30 ky tu hien thi tren mobile) | Quyet dinh open rate |
| Preview text | 90 ky tu | Bo sung cho subject line, tang open rate |
| Header | Logo + ten thuong hieu | Nhan dien nhanh |
| Body | 150–300 tu (nurture), 100–200 tu (promotion) | Noi dung chinh |
| CTA | 1 CTA chinh, toi da 1 CTA phu | Chuyen doi |
| Footer | Unsubscribe + dia chi + lien he | Tuan thu phap luat |

---

## Cong thuc Subject Line

### 5 cong thuc hieu qua

| Cong thuc | Vi du | Khi dung |
|-----------|------|---------|
| **Curiosity** (To mo) | "Dieu 90% nguoi lam sai khi [chủ de]" | TOFU, nurture |
| **Benefit** (Loi ich) | "[Ket qua] trong [thoi gian] — day la cach" | MOFU, nurture |
| **Urgency** (Khan cap) | "Con 24h — [uu dai] het han ngay mai" | BOFU, promotion |
| **Personalization** (Ca nhan) | "[Ten], minh co thu nay cho ban" | Re-engage, VIP |
| **Number** (So lieu) | "5 buoc de [dat ket qua] — buoc 3 quan trong nhat" | Giao duc, nurture |

### Quy tac subject line

- Viet ngan, khong qua 50 ky tu
- Khong dung ALL CAPS
- Tranh spam trigger: "Mien phi", "100%", qua nhieu dau cham than
- Test 2 subject line moi lan gui (A/B test)
- Preview text phai bo sung, khong lap lai subject line

---

## Phan khuc doi tuong (Segmentation)

### Theo hanh vi

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Active | Mo email trong 30 ngay gan nhat | Tat ca loai email |
| Warm | Mo email 31–60 ngay truoc | Nurture + offer nhe |
| Cold | Khong mo email 60+ ngay | Re-engage sequence |
| Engaged | Click link trong 14 ngay | Offer cu the, BOFU |
| New | Dang ky trong 7 ngay | Welcome sequence |

### Theo lich su mua hang

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Chua mua | Dang ky nhung chua mua | Nurture → Trial offer |
| Da mua 1 lan | Mua 1 lan, chua quay lai | Re-purchase offer + cross-sell |
| Khach trung thanh | Mua 3+ lan | VIP offer, loyalty, referral |
| Khach cu (Churned) | Mua truoc, khong hoat dong 90+ ngay | Win-back offer |

### Theo muc do quan tam

| Nhom | Tieu chi | Email phu hop |
|------|---------|--------------|
| Quan tam [A] | Click vao noi dung ve [chu de A] | Noi dung sau ve [A] |
| Quan tam [B] | Click vao noi dung ve [chu de B] | Noi dung sau ve [B] |
| Chua xac dinh | Chua click du de phan loai | Survey email hoac noi dung da dang |

---

## Sequence Template

### Welcome Series (3 email — gui khi dang ky moi)

| # | Thoi diem | Subject line | Noi dung chinh | CTA |
|---|----------|-------------|----------------|-----|
| 1 | Ngay lap tuc | "Chao mung [Ten] — day la mon qua cho ban" | Gioi thieu thuong hieu + giao gia tri ngay (ebook, checklist, voucher) | Download/Su dung ngay |
| 2 | +2 ngay | "[Ten], 3 dieu ban nen biet ve [thuong hieu]" | Cau chuyen thuong hieu + gia tri khac biet + social proof | Doc them tren blog/website |
| 3 | +4 ngay | "Cach [thuong hieu] giup [X nguoi] dat duoc [ket qua]" | Case study/Testimonial + CTA den buoc tiep theo | Dat lich / Xem san pham |

### Nurture Sequence (5 email — gui sau Welcome)

| # | Thoi diem | Chu de | Loai noi dung |
|---|----------|--------|--------------|
| 1 | +7 ngay | Giai quyet pain point #1 | Giao duc — chia se kien thuc |
| 2 | +10 ngay | Giai quyet pain point #2 | Giao duc — huong dan cu the |
| 3 | +14 ngay | Social proof manh | Case study + so lieu ket qua |
| 4 | +17 ngay | Soft offer | Gioi thieu san pham/dich vu nhu giai phap |
| 5 | +21 ngay | Hard offer + khan cap | Uu dai co thoi han + CTA manh |

### Re-engage Sequence (3 email — gui cho nhom Cold)

| # | Thoi diem | Subject line | Noi dung chinh | CTA |
|---|----------|-------------|----------------|-----|
| 1 | Ngay 1 | "Lau roi khong gap [Ten] — minh nho ban" | Nhac lai gia tri + hoi co con quan tam khong | Click de tiep tuc nhan email |
| 2 | +3 ngay | "[Ten], day la thu minh danh rieng cho ban" | Offer doc quyen cho nguoi quay lai | Su dung offer |
| 3 | +7 ngay | "Email cuoi cung — ban co muon tiep tuc?" | Thong bao se ngung gui neu khong phan hoi | Click de o lai / Tu dong xoa |

### Promotional (1 email don le hoac chuoi 2–3 email)

| # | Thoi diem | Vai tro |
|---|----------|--------|
| 1 | 3 ngay truoc | Thong bao — "Sap co uu dai dac biet" |
| 2 | Ngay khai truong | Offer chinh — gia, loi ich, deadline, CTA |
| 3 | 24h truoc het han | Nhac nho — "Con 24h" + khan cap |

### Transactional (tu dong theo hanh dong)

| Trigger | Email | Noi dung |
|---------|-------|---------|
| Dat hang thanh cong | Xac nhan don hang | Chi tiet don + buoc tiep theo |
| Thanh toan thanh cong | Hoa don / Bien lai | So tien, ma don, lien he ho tro |
| Dat lich thanh cong | Xac nhan lich hen | Thoi gian, dia diem, chuan bi gi |
| Hoan thanh dich vu | Cam on + khao sat | Hoi trai nghiem + de nghi review |

---

## Automation Flow

### Flow co ban

```
Trigger: [Hanh dong cua user]
  │
  ├── Gui email 1 (ngay lap tuc)
  │
  ├── Doi 2 ngay
  │
  ├── Dieu kien: Da mo email 1?
  │   ├── Co → Gui email 2A (noi dung tiep theo)
  │   └── Khong → Gui email 2B (subject line khac, noi dung giong)
  │
  ├── Doi 3 ngay
  │
  ├── Dieu kien: Da click link trong email 2?
  │   ├── Co → Chuyen sang nhom "Engaged" → Gui offer
  │   └── Khong → Gui email 3 (gia tri cao, thu hut lai)
  │
  └── Ket thuc sequence → Chuyen sang email dinh ky
```

### Flow Welcome → Nurture → Convert

```
Dang ky moi
  │
  ├── Welcome Email 1 (ngay) — Chao mung + qua
  ├── Welcome Email 2 (+2 ngay) — Cau chuyen
  ├── Welcome Email 3 (+4 ngay) — Social proof
  │
  ├── Dieu kien: Da click bat ky link nao?
  │   ├── Co → Nhom "Warm" → Bat dau Nurture Sequence
  │   └── Khong → Nhom "Cold" → Re-engage Sequence
  │
  ├── Nurture 1–5 (+7 den +21 ngay)
  │
  ├── Dieu kien: Da mua hang?
  │   ├── Co → Chuyen sang Post-purchase flow
  │   └── Khong → Offer cuoi + khan cap → Chuyen sang email dinh ky
  │
  └── Email dinh ky (1/tuan) — 80% gia tri, 20% offer
```

---

## A/B Test Plan

### Thu tu test (uu tien cao truoc)

| Uu tien | Yeu to | Bien the A | Bien the B | Chi so do | Mau toi thieu |
|---------|--------|-----------|-----------|-----------|--------------|
| 1 | Subject line | Curiosity | Benefit | Open rate | 500 email/bien the |
| 2 | Thoi gian gui | 8:30 AM | 8:00 PM | Open rate | 500 email/bien the |
| 3 | CTA | Button mau cam | Button mau xanh | Click rate | 500 email/bien the |
| 4 | Do dai email | Ngan (150 tu) | Dai (300 tu) | Click rate | 500 email/bien the |
| 5 | Ten nguoi gui | Ten thuong hieu | Ten ca nhan | Open rate | 500 email/bien the |

### Quy tac A/B test email

- Chi test 1 yeu to moi lan
- Chia deu random: 50/50 hoac 20/20/60 (test nho truoc, gui phan thang cho winner)
- Doi toi thieu 24h truoc khi ket luan
- Toi thieu 500 email moi bien the de co y nghia thong ke
- Luu ket qua test vao spreadsheet de tich luy kien thuc

---

## Thoi gian gui toi uu — Viet Nam

| Khung gio | Hieu qua | Ly do | Loai email phu hop |
|-----------|---------|-------|-------------------|
| 8:00–9:00 AM | Cao | Dau ngay lam viec, kiem tra email | Nurture, giao duc, B2B |
| 12:00–1:00 PM | Trung binh–Cao | Nghi trua, luot dien thoai | Promotion, uu dai |
| 8:00–9:00 PM | Cao | Toi, thu gian, doc email ca nhan | Promotion, re-engage, B2C |
| 6:00–7:00 AM | Trung binh | Nguoi day som, truoc khi di lam | Newsletter, digest |

**Luu y:**
- Ngay gui tot nhat: Thu 3, Thu 4, Thu 5 (tranh Thu 2 ban va cuoi tuan)
- Tranh gui: ngay le, Tet, 30–31 hang thang (nhieu email khac canh tranh)
- B2B: gui trong gio hanh chinh (8AM–5PM)
- B2C: gui ngoai gio hanh chinh (12PM trua, 8PM toi)

---

## Nhanh Zalo OA — kenh so huu thu hai

O Viet Nam, Zalo OA doc cao hon email rat nhieu nhung **giay phep hep hon**: gui nhieu la mat follower, khong lay lai duoc. Coi Zalo la kenh "danh cho tin quan trong", email la kenh "danh cho noi dung dai".

### Zalo OA vs Email — chon kenh cho tung loai tin

| | **Email** | **Zalo OA** |
|---|---|---|
| Read / Open rate tham chieu | 15-25% TB · 25-35% tot | 40-60% TB · **60-80% tot** · >80% xuat sac |
| Do dai phu hop | Dai — ke chuyen, giao duc, nhieu link | Rat ngan — 3-6 dong, 1 y duy nhat |
| Tan suat an toan | 1-3 lan/tuan tuy sequence | **Toi da 2-3 lan/tuan, an toan nhat <= 2 lan/tuan** |
| Chi phi | Gan nhu mien phi theo goi tool | Tinh theo tin gui — ~500d/tin (TB), ~300d (tot), <200d (xuat sac) |
| Rui ro khi lam qua | Vao spam, unsubscribe | **Follower bam bo quan tam — mat vinh vien** |
| Loai tin phu hop | Nurture, giao duc, newsletter, chuoi dai | Nhac lich, xac nhan don, uu dai gioi han, tin khan |

### Gioi han va ky luat gui Zalo

| Nguyen tac | Nguong | Ly do |
|-----------|--------|-------|
| Tan suat broadcast | <= 2 lan/tuan (tran 3) | Vuot nguong la ty le bo quan tam tang manh |
| Ty le bo quan tam moi broadcast | < 5% | Vuot 5% → dung broadcast, xem lai noi dung va tep |
| Read rate | >= 40% moi chap nhan duoc; muc tieu 60-80% | Duoi 40% = tep khong dung hoac tin khong lien quan |
| Ca nhan hoa | Bat buoc co ten nguoi nhan hoac phan khuc ro | Broadcast chung chung cho ca list = tin spam |
| Phan khuc | Phai chia tep theo hanh vi / lich su mua | Gui uu dai san pham A cho nguoi vua mua A la mat uy tin |

> **Ve han muc va chi phi tin:** so tin va cach tinh phi thay doi theo goi OA va theo loai tin (broadcast vs tin cham soc vs ZNS). Kiem tra chinh sach hien hanh cua Zalo OA truoc khi lap ke hoach gui — dung gia dinh theo so cu.

### Ty le noi dung broadcast

| Loai noi dung | Ty trong | Vi du |
|--------------|---------|-------|
| Gia tri (huong dan, meo, kien thuc) | 40% | "3 dau hieu cho thay ban dang [van de]" |
| Cau chuyen / cap nhat | 30% | Hau truong, cau chuyen khach hang, tin moi cua brand |
| Bang chung xa hoi | 20% | Review, ket qua khach hang, con so |
| Offer / ban hang | **10%** | Uu dai, deadline |

Dao nguoc ty le nay (gui toan offer) la cach nhanh nhat de mat list Zalo.

### Cau truc 1 tin Zalo OA

```
[Dong 1 — hook ngan, <= 40 ky tu, noi thang van de hoac loi ich]
[2-4 dong noi dung — 1 y duy nhat, cau ngan, xuong dong ro rang]
[1 CTA duy nhat — dong tu + loi ich cu the]
[Link rut gon kem UTM]
```

**Quy tac viet tin Zalo:**
1. **1 tin = 1 y = 1 CTA.** Khong nhoi 2 uu dai vao 1 tin.
2. **Khong copy nguyen email sang Zalo.** Email 300 chu → tin Zalo 60-80 chu.
3. **Ca nhan hoa ten nguoi nhan** ngay dong dau khi co the.
4. **Link phai co UTM** (`utm_source=zalo&utm_medium=oa&utm_campaign=...`) — neu khong se khong tach duoc dong gop cua Zalo khoi organic.
5. **Khong gui ngoai khung gio** — tin Zalo bat len man hinh khoa, gui sai gio la lam phien that su.

### Khung gio gui Zalo tot (Viet Nam)

| Khung | Phu hop |
|-------|---------|
| 7:00 - 8:30 sang | Nhac lich, tin can hanh dong trong ngay |
| 11:30 - 12:30 trua | Offer, noi dung ngan de luot |
| 20:00 - 21:30 toi | Noi dung ca nhan, cau chuyen, uu dai B2C |

---

## Sequence email + Zalo chay song song

Khong chay 2 kenh doc lap. Ghep vao 1 lich duy nhat de tranh cham nhau va tan dung the manh tung kenh.

### Mau sequence 14 ngay (nurture → chot)

| Ngay | Email | Zalo OA | Ghi chu phoi hop |
|------|-------|---------|-----------------|
| D+0 | **E1 — Welcome**, gui tai lieu, set ky vong | Tin xac nhan ngan: "Da gui [tai lieu] vao email cua ban" | Zalo dam bao nguoi dung biet co email — tang open rate E1 |
| D+2 | **E2 — Cau chuyen / ly do lam nghe** | — | Noi dung dai, chi hop email |
| D+4 | **E3 — Kien thuc / meo huu ich** | Tin gia tri ngan trich tu E3 + link doc day du | Zalo keo nguoi chua mo email quay lai |
| D+6 | **E4 — Bang chung xa hoi (case study)** | — | |
| D+8 | **E5 — Xu ly objection lon nhat** | — | |
| D+10 | **E6 — Chao offer (soft pitch)** | Tin thong bao offer, 1 CTA | Zalo lam nhiem vu "danh thuc" |
| D+12 | **E7 — Push urgency + FAQ** | — | |
| D+14 | **E8 — Nhac lan cuoi / breakup** | Tin nhac deadline (chi gui cho nguoi da click nhung chua mua) | Tin cuoi cua Zalo chi gui tep hep, khong broadcast ca list |

**Luat phoi hop:**
1. **Zalo khong gui trung ngay voi email quan trong** — tru ngay D+0 (xac nhan) va ngay chot deadline.
2. **Tong tin Zalo trong 14 ngay: toi da 4 tin.** Vuot la vi pham tran 2 tin/tuan.
3. **Tin Zalo o cuoi sequence chi gui cho tep da tuong tac** (da mo email hoac da click), khong broadcast toan bo.
4. **Email lam viec nang (giai thich, thuyet phuc), Zalo lam viec nhac** — dung bat Zalo lam nhiem vu cua email.

### Do luong 2 kenh chung

| Chi so | Email | Zalo OA |
|--------|-------|---------|
| Do mo | Open rate | Read rate |
| Do quan tam | CTR (>= 3%) | Ty le click / tin |
| Do phien toai | Unsubscribe (< 0.5%/email) | Bo quan tam (< 5%/broadcast) |
| Do dong gop | Lead / don gan UTM `utm_medium=email` | Lead / don gan UTM `utm_medium=oa` |

Doi chieu 2 cot nay hang thang trong `13-phan-tich-du-lieu`. Kenh nao chi phi/lead thap hon thi tang ty trong o sequence sau — nhung khong pha tran tan suat Zalo.

---

## Deliverability — Dam bao email vao Inbox

> Checklist ky thuat bat buoc (SPF, DKIM, DMARC, domain rieng, warm-up, list hygiene) + lich warm-up domain moi theo tuan + quy tac tranh spam: doc `references/deliverability-tool-va-kpi.md` muc "Deliverability — Dam bao email vao Inbox".

---

## Tool khuyen dung — Viet Nam

> Bang so sanh 3 tool (Brevo, Mailchimp, Kit) theo free tier, gia, diem manh, khi dung + 7 buoc setup Brevo co ban: doc `references/deliverability-tool-va-kpi.md` muc "Tool khuyen dung — Viet Nam".

---

## Tuan thu phap luat

> Bang 5 yeu cau PDPA Viet Nam (Nghi dinh 13/2023/ND-CP) kem cach thuc hien + checklist compliance 6 diem: doc `references/deliverability-tool-va-kpi.md` muc "Tuan thu phap luat".

---

## KPI va Benchmark

> Bang benchmark VN 6 KPI hang tuan (open rate, CTR, CTOR, unsubscribe, bounce, spam complaint) chia 4 muc Kem/TB/Tot/Xuat sac + 4 KPI hang thang kem cong thuc: doc `references/deliverability-tool-va-kpi.md` muc "KPI va Benchmark".

---

## Template ket qua

> Khung markdown day du 8 muc (Muc tieu · Phan khuc doi tuong · Welcome Sequence · Nurture Sequence · Lich gui dinh ky · Automation Flow · A/B Test Plan · Checklist thiet lap): doc `references/template-ket-qua-email.md` va copy nguyen khung de dien noi dung.

---

## Lien ket skill

- **`09-insight-khach-hang`** — hieu pain point de viet email nurture dung noi dau
- **`05-copy-quang-cao`** — dung chung cong thuc copywriting cho subject line va body
- **`01-lich-noi-dung`** — dong bo email voi lich content tong the
- **`12-brief-landing-page`** — landing page la dich den cua CTA trong email
- **`13-phan-tich-du-lieu`** — phan tich hieu suat email marketing hang tuan/thang
- **`15-social-listening`** — bat xu huong de tao noi dung email kip thoi
- **`49-html-email-template`** — dung template HTML cho email (bo cuc, responsive, dark mode) sau khi chot noi dung
- **`53-tracking-setup`** — chuan hoa UTM cho ca email va Zalo OA de tach duoc dong gop tung kenh

---

## Checklist chat luong

### Truoc khi gui moi email

- [ ] Subject line < 50 ky tu, preview text < 90 ky tu
- [ ] Chi co 1 CTA chinh
- [ ] Link hoat dong (click test tung link)
- [ ] Hien thi tot tren mobile (test tren dien thoai that)
- [ ] Co link unsubscribe
- [ ] Khong co loi chinh ta hoac loi ten (merge tag test)
- [ ] Test spam score (Brevo co san)

### Truoc khi bat automation

- [ ] Flow logic dung (ve so do ra giay)
- [ ] Dieu kien re nhanh hoat dong (test ca 2 nhanh)
- [ ] Thoi gian delay hop ly
- [ ] Exit condition ro rang (khi nao nguoi dung ra khoi flow)
- [ ] Khong trung lap voi email dinh ky khac

### Hang thang

- [ ] Review open rate va click rate — so voi thang truoc
- [ ] Xoa email bounce khoi list
- [ ] Cap nhat phan khuc dua tren hanh vi moi
- [ ] Lam moi subject line dua tren ket qua A/B test
- [ ] Kiem tra list growth rate

### Rieng nhanh Zalo OA

- [ ] Tan suat broadcast <= 2 lan/tuan (tran 3) — dem ca thang truoc khi len lich
- [ ] Ty le noi dung dung chuan 40 gia tri / 30 cau chuyen / 20 bang chung / 10 offer
- [ ] Moi tin <= 6 dong, 1 y, 1 CTA duy nhat — khong copy nguyen email sang Zalo
- [ ] Tin da duoc ca nhan hoa hoac gui theo phan khuc, khong broadcast chung chung
- [ ] Link co UTM `utm_medium=oa` de tach duoc dong gop
- [ ] Gui trong khung gio (7:00-8:30 · 11:30-12:30 · 20:00-21:30)
- [ ] Read rate >= 40%, muc tieu 60-80%; ty le bo quan tam < 5%/broadcast
- [ ] Lich Zalo va lich email da ghep chung — khong cham nhau trong cung 1 ngay (tru D+0 va ngay chot)
