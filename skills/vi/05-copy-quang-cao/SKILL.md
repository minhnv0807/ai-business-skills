---
name: 05-copy-quang-cao
description: "Dung khi can viet copy quang cao TRA TIEN cho Meta, TikTok hoac Google — 6 bien the theo 3 tang pheu TOFU/MOFU/BOFU, tuan thu gioi han ky tu va chinh sach nen tang. Co Mode A cho san pham va Mode B cho personal brand, tu chon theo file context. Kich hoat khi user nhac 'viet copy quang cao', 'noi dung chay ads', 'copy Facebook Ads', 'copy TikTok Ads', 'google rsa', 'tieu de quang cao', 'copy retarget'. Khong dung cho — caption dang organic khong chay tien thi dung skill 37-caption-social; loi thoai video thi dung skill 04-script-video; duyet copy da viet thi dung skill 62-marketing-review."
argument-hint: "<sản phẩm + key message + kênh>"
metadata:
  version: 2.5.1
  category: content
triggers:
  - "viet quang cao"
  - "copy quang cao"
  - "noi dung chay ads"
  - "copy Facebook Ads"
  - "copy TikTok Ads"
  - "tieu de quang cao"
  - "copy retarget"
  - "ads personal brand"
  - "promote LinkedIn profile"
  - "boost personal post"
  - "quang cao tang follow ca nhan"
  - "review copy truoc khi len camp"
  - "google rsa"
  - "duyet copy ads"
output: file .md gom 6 bien the copy (2 TOFU, 2 MOFU, 2 BOFU), moi bien the co primary text, headline, description, CTA button
related:
  - 04-script-video
  - 02-brief-chien-dich
  - 09-insight-khach-hang
  - 10-tinh-kpi-nguoc
  - 36-content-brief
  - 52-account-structure
  - 62-marketing-review
  - references/copy-frameworks-vn
  - references/quality-gates-vn
  - references/hook-formulas-vn
---

# Copy Quang Cao

## Buoc 0: Kiem tra context file

Truoc khi viet copy ads, doc ca 2 file (neu ton tai):

1. `.agents/product-marketing-context.md`   (marketing san pham)
2. `.agents/personal-brand-context.md`      (personal brand)

Quyet dinh mode:
- Chi co `product-marketing-context.md` → **MODE A** (mac dinh — 6 bien the TOFU/MOFU/BOFU ben duoi)
- Chi co `personal-brand-context.md` → **MODE B** (Personal Brand Mode — section ben duoi)
- Co ca 2 → **HOI 1 cau**: "Ban dang chay ads ban SP hay boost personal brand?"
- Khong co → De xuat tao context phu hop

---

## Thu thap thong tin

Hoi toi da 4 cau truoc khi viet:

1. **San pham / dich vu gi?** Mo ta ngan, USP chinh, gia, uu dai dang chay (neu co).
2. **Nen tang quang cao?** Meta Ads (Facebook/Instagram), TikTok Ads, Google Ads. Neu khong chon — mac dinh Meta Ads.
3. **Doi tuong muc tieu?** Gioi tinh, do tuoi, noi dau chinh, nguoi quyet dinh mua. Cold (chua biet) hay Warm (da tuong tac)?
4. **Muc tieu quang cao?** Tin nhan (CPMess), Lead form, Traffic, Chuyen doi. Neu khong chon — mac dinh tin nhan.

---

## Nguyen tac cot loi

### Quy tac 125 ky tu

Tren Meta Ads, chi **125 ky tu dau** hien thi truoc nut "Xem them". Dong 1 cua primary text phai:
- Gay to mo hoac cham noi dau
- Chua USP hoac con so cu the
- Tu hoan chinh ve nghia (khong cat giua cau)

```
TOT:  "Da ban len mun 3 nam chua het? 1 lieu trinh 28 ngay — cam ket sau sach."  (74 ky tu)
XAU:  "Chao ban, cam on ban da quan tam den dich vu cua chung toi. Hom nay minh muon gioi thieu..." (cat giua)
```

#### Tieu chuan do dong 1 (do duoc, khong cam tinh)

| Tieu chi | Nguong dat | Cach kiem tra |
|----------|-----------|--------------|
| Do dai | 60-125 ky tu (ke ca dau cach) | Dem ky tu, khong uoc luong |
| Ky tu thu 126 tro di | Phai roi vao giua cau, khong cat mat y chinh | Doc rieng 125 ky tu dau — van hieu duoc |
| Vi tri thong tin quan trong | Trong 40 ky tu dau | Doc 40 ky tu dau — da biet noi ve gi chua |
| Chao hoi / ten brand | 0 — khong duoc xuat hien o dong 1 | Tim tu "Chao", "Xin chao", ten brand |
| Con so cu the | >=1 con so hoac chi tiet dinh luong | Co chu so trong dong 1 |
| Thoi gian doc | <=1.5 giay | Doc to len — vuot 1.5s la dai |

**Cam tuyet doi trong dong 1:** "Chao ban", "Ban co biet khong", ten thuong hieu, emoji mo dau, hashtag.

#### Tu ngu cam trong toan bo copy

Khong dung neu khong co bang chung kem theo: "sieu hot", "khong the bo lo", "hang trieu khach hang tin dung", "so 1 Viet Nam", "tot nhat thi truong", "duy nhat".
Neu co bang chung that → viet lai thanh con so: "1,247 khach da dung" thay vi "hang trieu khach tin dung".

### Thu vien cam xuc trigger

| # | Trigger | Mo ta | Vi du ap dung |
|---|---------|-------|---------------|
| 1 | Noi dau (Pain) | Cham vao van de dang gap — tao dong cam | "Met moi vi da mun? Ban khong co loi..." |
| 2 | Khat vong (Aspiration) | Ve hinh anh tuong lai tot dep | "Tuong tuong da ban dep tu tin khong can filter" |
| 3 | FOMO | So bo lo co hoi, so lieu gioi han | "Chi con 12 slot thang nay — 89 nguoi da dat" |
| 4 | Bang chung xa hoi (Social proof) | Nguoi khac da lam va thanh cong | "1,200 chi da trai nghiem — 4.8/5 sao" |
| 5 | Uy tin (Authority) | Chuyen gia, chung nhan, kinh nghiem | "10 nam kinh nghiem — bac si da lieu truc tiep tu van" |
| 6 | To mo (Curiosity) | Gay thac mac, muon biet tiep | "Co 1 thu 90% nguoi dung skincare sai — ban co biet?" |

**Quy tac chon trigger theo pheu:**
- TOFU: To mo (6), Noi dau (1), Khat vong (2)
- MOFU: Bang chung xa hoi (4), Uy tin (5), Noi dau (1)
- BOFU: FOMO (3), Bang chung xa hoi (4), Noi dau (1)

---

## 6 Framework Copy Chuyen Nghiep

> **Reference day du:** `skills/vi/references/copy-frameworks-vn.md` — template char-limit theo tung nen tang, vi du VN cho moi framework.

### Chon framework theo nhiet do audience

| Nhiet do | Framework uu tien | Ly do |
|---------|------------------|-------|
| **Cold** (chua biet san pham) | AIDA, Star·Story·Solution | Dan dat logic tu dau; ke chuyen khong lo quang cao |
| **Warm** (da tuong tac, chua mua) | PAS, 4P | Nhac lai noi dau; tang trust bang proof |
| **Hot** (co intent, gan mua) | FAB, BAB | Rap dap loi ich cu the; visual transformation |
| **Retarget** (da xem, chua mua) | PAS hoac BAB | Nhan manh hau qua hoac bien doi |

### Tom tat 6 frameworks

| Framework | Cau truc | Dung khi | Platform phu hop |
|-----------|---------|---------|-----------------|
| **AIDA** | Attention → Interest → Desire → Action | Cold audience, launch san pham moi | Meta feed, TikTok, YouTube pre-roll |
| **PAS** | Problem → Agitate → Solution | Warm audience, nganh co pain point ro (spa, y te, GD) | Meta feed, LinkedIn, Google RSA |
| **BAB** | Before → After → Bridge | Transformation offer (spa, fitness, giao duc) | Meta Reels/Stories, TikTok |
| **4P** | Promise → Picture → Proof → Push | High-ticket, can nhieu trust (BDS, khoa hoc, B2B) | LinkedIn, Google, Meta feed dai |
| **FAB** | Features → Advantages → Benefits | Khach co intent cao, dang so sanh | Google RSA, Meta retarget |
| **Star·Story·Solution** | Star → Story → Solution | Brand storytelling, UGC-style, khong muon lo quang cao | TikTok, Reels, YouTube Shorts |

> **Sai lam pho bien VN:** Viet theo cau truc tu do (gioi thieu → tinh nang → CTA) thay vi ap framework. Ket qua: copy nhat, it cam xuc, CTR thap. Moi bien the trong 6 bien the output nen dung **1 framework khac nhau**.

### Andromeda Warning — Khong clone ads

> **Meta 2026:** He thong Andromeda cluster cac quang cao co **Creative Similarity Score > 60%** — giam delivery tu dong. 100 bien the nho (doi mau, cat clip, thay font) KHONG tot hon 10 creative thuc su khac biet.

**Nguong an toan:**

| Similarity Score | Trang thai | Hanh dong |
|-----------------|-----------|-----------|
| < 40% | An toan | Tiep tuc chay |
| 40–60% | Canh bao | Kiem tra lai — co the bi cluster |
| > 60% | Nguy hiem | Andromeda cluster → giam delivery tu dong |

**5 chieu da dang de vuot Andromeda:**
1. **Hook khac nhau** — Pain vs To mo vs Aspiration (khong chi thay text, phai thay goc nhin)
2. **Format khac nhau** — Video doc 9:16 vs Anh vuong 1:1 vs Carousel
3. **Nhan vat khac nhau** — Founder vs Khach hang review vs KOC/bac si
4. **Am nhac khac nhau** — Trending VN vs Nhac cam trang vs Giong noi/voiceover
5. **Boi canh khac nhau** — Studio vs Ngoai canh vs UGC phong khach

> Xem them: `skills/vi/references/quality-gates-vn.md` Gate 5 (Andromeda Creative Diversity)

---

### 6 kieu hook quang cao — Dong 1 quyet dinh tat ca

> Hieu chinh cho ads VN. Chi tiet: `skills/vi/references/hook-formulas-vn.md`.

125 ky tu dau cua primary text = hook quang cao. Moi bien the nen dung **kieu hook khac nhau**:

| # | Kieu hook | Cong thuc | Vi du VN |
|---|-----------|-----------|----------|
| 1 | **Con so** | So lieu cu the, bat ngo | "1,247 chi da trai nghiem — 98% quay lai lan 2" |
| 2 | **Nguoc doi** | Lat nguoc niem tin pho bien | "Chay ads nhieu hon KHONG giup ban co them khach" |
| 3 | **Truoc/Sau** | Ket qua bien doi cu the | "Tu 5 don/tuan len 40 don/tuan — chi trong 60 ngay" |
| 4 | **Muon uy tin** | Nhac ten chuyen gia, chung nhan, brand | "Bac si da lieu 15 nam khuyen dung — ly do bat ngo" |
| 5 | **Thu nhan** | Chia se sai lam, bai hoc that | "Toi da tieu 200 trieu chay ads sai — bay gio toi lam khac" |
| 6 | **Khan cap** | Gioi han thoi gian, so luong | "Con 8 slot thang 6 — 34 nguoi dang cho" |

**Quy tac chon hook theo tang pheu:**
- TOFU (cold): Uu tien hook 1 (con so), 2 (nguoc doi) — thu hut chu y
- MOFU (warm): Uu tien hook 3 (truoc/sau), 4 (uy tin) — tang tin tuong
- BOFU (hot): Uu tien hook 5 (thu nhan), 6 (khan cap) — thuc day hanh dong

**Kiem tra hook:**
- [ ] Dong 1 ≤ 125 ky tu va tu hoan chinh ve nghia
- [ ] Co con so hoac chi tiet cu the (khong chung chung)
- [ ] Gay to mo hoac cham cam xuc — nguoi doc MUON bam "Xem them"
- [ ] 6 bien the dung 6 kieu hook KHAC nhau

---

### Copy Scoring — Cham diem truoc khi giao

> Thang cham diem hieu chinh cho quang cao VN.

Cham 5 tieu chi, moi tieu chi 1–10 diem. **Chi giao khi dat ≥ 35/50.**

| Tieu chi | 8–10 diem | 5–7 diem | 1–4 diem |
|----------|----------|----------|----------|
| **Hook strength** | Gay to mo manh, co con so/chi tiet, khop tang pheu | Chap nhan duoc nhung chua gay an tuong | Chung chung, khong co diem nhan |
| **Cam xuc trigger** | Trigger ro rang (Pain/FOMO/Social proof), cam nhan duoc | Co trigger nhung nhe | Khong co trigger, doc xong khong cam giac gi |
| **CTA clarity** | CTA cu the, hanh dong ro, 1 buoc duy nhat | CTA co nhung chua cu the | CTA mo ho ("Tim hieu them", "Click vao day") |
| **Compliance** | 0 vi pham chinh sach | 1 canh bao nhe | Co vi pham se bi reject |
| **Platform fit** | Dung char limit, giong van khop platform | Gan dung | Sai char limit hoac giong van khong phu hop |

| Tong | Danh gia | Hanh dong |
|------|---------|----------|
| 45–50 | Xuat sac | Giao ngay, theo doi hieu suat |
| 35–44 | Tot | Giao duoc, ghi chu cai thien |
| 25–34 | Trung binh | Chinh lai truoc khi giao |
| < 25 | Yeu | Viet lai tu dau |

> **Moi lan giao copy, them dong:** `Copy Score: [X]/50 — [Danh gia]` vao cuoi file output.

---

### Quy tac theo nen tang

| Quy tac | Meta Ads | TikTok Ads | Google Ads |
|---------|----------|-----------|------------|
| Do dai primary text | 125 char dong 1 + 300–500 char toan bo | 80–100 char (text overlay) | Khong co primary text |
| Headline | Toi da 40 char | Khong co | Toi da 30 char x 3 |
| Description | Toi da 30 char | Khong co | Toi da 90 char x 2 |
| Giong van | Chuyen nghiep nhung gan gui | Tre, tu nhien, nhu noi chuyen | Truc tiep, keyword-driven |
| CTA button | Chon tu danh sach Meta | Khong co nut — CTA trong text | Khong co nut — CTA trong headline |
| Hinh anh / Video | 1:1 (feed), 9:16 (story/reel) | 9:16 bat buoc | Khong ap dung (search) |

### CTA — Thu tu uu tien

Cu the > chung chung. Hanh dong ro > mo ho.

| Muc do | CTA | Khi nao dung |
|--------|-----|-------------|
| Manh nhat | "Nhan tin ngay de dat lich" | Muc tieu tin nhan, BOFU |
| Manh | "Dat lich tu van mien phi" | Lead form, MOFU/BOFU |
| Trung binh | "Xem bang gia chi tiet" | Traffic, MOFU |
| Nhe | "Tim hieu them" | Awareness, TOFU |

**Tranh dung:** CTA chung chung khong co hanh dong ("Click vao day", "Lien he ngay").

### Chinh sach quang cao — Compliance checklist

| Quy tac | Chi tiet | Vi pham = bi tu choi ads |
|---------|---------|-------------------------|
| Khong cam ket tuyet doi | Tranh "dam bao", "100%", "chac chan" | Co |
| Khong dung "mien phi" trong headline | Meta flag tu "mien phi" trong headline — dung trong body | Co |
| Khong dung "khuyen mai" qua nhieu | 1 lan trong body — khong lap | Co |
| Khong nhac den dac diem ca nhan | Tranh "Ban bi mun?", "Ban thua can?" — dung "Nhieu nguoi gap tinh trang..." | Co |
| Truoc/sau phai thuc te | Khong chinh sua anh truoc/sau qua muc | Co |
| Khong dung hinh anh nhay cam | Khong close-up mun, da bi thuong, co the lo lieu | Co |
| Disclaimer bat buoc | Thuc pham chuc nang, y te — can dong disclaimer | Co |

---

## Khau viet copy theo tang pheu

Moi tang co luat rieng. Viet sai luat tang = copy khong sai chinh ta nhung khong ra so.

### Bang luat tung tang

| | **TOFU** (Cold) | **MOFU** (Warm) | **BOFU** (Hot) |
|---|---|---|---|
| Muc tieu | Dat ten van de, khuech dai nhan thuc | Xay trust, khac biet hoa | Chot — offer + urgency |
| Do dai primary text | 100-150 chu | 80-120 chu | 60-100 chu |
| **BAT BUOC co** | Noi dau duoc goi ten cu the | Social proof (so lieu / testimonial / case) | Gia hoac uu dai + deadline + guarantee |
| **CAM co** | Gia, bang gia, uu dai | Push ban truc tiep | Noi dung giao duc dai dong |
| Hook variant A | Pain hook — bat dau bang noi dau, khong gioi thieu brand | Social proof hook — con so / ket qua cu the | Direct offer hook — offer kem con so |
| Hook variant B | Curiosity hook — cau hoi hoac statement nguoc doi | Objection hook — xu ly lo ngai pho bien nhat | Testimonial close — quote ngan khach that |
| CTA | "Tim hieu them" / "Xem ngay" | "Dang ky tu van" / "Xem chi tiet" | "Mua ngay" / "Dat lich ngay" / "Toi muon ket qua tuong tu" |
| Chi so danh gia | CTR, CPM, thruplay | CPC, cost per landing view, add-to-cart | CPMess, CPL, CPA, ROAS |

### Trinh tu viet (khong dao thu tu)

1. **Doc insight truoc, khong viet ngay.** Mo `09-insight-khach-hang` — lay Pain Map, Objection List, Ngan hang ngon ngu khach hang. Neu chua co → chay skill 09 truoc.
2. **Chot 1 message cho 1 ad.** Moi bien the chi mang 1 thong diep. Nhoi 3 benefit vao 1 bai = khong benefit nao duoc nho.
3. **Viet hook truoc, than bai sau.** Viet 6 hook 125 ky tu truoc — chon xong moi viet phan than.
4. **Gan framework cho tung bien the.** 6 bien the = 6 framework khac nhau (AIDA, PAS, BAB, 4P, FAB, Star-Story-Solution) — tranh Andromeda cluster.
5. **Cam con so vao.** Moi bien the phai co it nhat 1 con so that. Khong co so that → lay tu `13-phan-tich-du-lieu` hoac bo bien the do.
6. **Viet CTA cuoi cung.** CTA = dong tu + loi ich cu the, khong phai "Lien he ngay".
7. **Cham diem Copy Scoring** (bang o tren) — <35/50 thi viet lai, khong gui di duyet.

### Google Ads — Responsive Search Ad (RSA)

Khi platform la Google Search, output khac hoan toan (khong co primary text):

| Thanh phan | So luong | Gioi han | Yeu cau |
|-----------|---------|---------|---------|
| Headlines | 15 | <=30 ky tu | 15 goc do KHAC nhau theo intent: keyword match, benefit, gia, uu dai, thuong hieu, dia diem, urgency, social proof |
| Descriptions | 4 | <=90 ky tu | Benefit + CTA + diem khac biet |
| Display path | 2 doan | <=15 ky tu/doan | Chua keyword chinh |

**Quy tac RSA:** it nhat 3 headline chua keyword chinh xac, it nhat 3 headline khong chua keyword (de Google test). Khong ghim (pin) qua 2 headline — ghim nhieu lam giam Ad Strength.

---

## Quy trinh review copy truoc khi len camp

Copy khong duoc di thang tu nguoi viet vao Ads Manager. Chay 3 gate — tong thoi gian 20-30 phut.

### Gate 1 — Self-check (nguoi viet, 10 phut)

- [ ] Dem ky tu dong 1 tung bien the — tat ca <=125
- [ ] 6 bien the dung 6 framework + 6 kieu hook khac nhau
- [ ] Moi bien the co >=1 con so that, ghi ro nguon so
- [ ] Doi chieu tu ngu cam va compliance checklist
- [ ] Copy Score >= 35/50, ghi diem vao cuoi file

### Gate 2 — Marketing review (leader, 10 phut)

Chuyen sang `62-marketing-review` — che do review ads copy. Nguoi duyet cham 4 cau hoi:

| Cau hoi duyet | Dat | Khong dat → tra ve |
|--------------|-----|-------------------|
| Copy nay co dung tang pheu cua adset se chay khong? | | Sai tang → viet lai |
| Message co khop offer va landing page khong? | | Lech message → sua copy hoac sua LP |
| Con so trong copy co that va co nguon khong? | | Bia so → xoa, khong duoc "lam tron len" |
| Co bien the nao trung goc nhin voi ads dang chay khong? | | Trung → thay goc nhin, tranh Andromeda |

Ket qua duyet ghi 1 trong 3: **DUYET** · **DUYET CO DIEU KIEN** (sua roi chay, khong can duyet lai) · **TRA VE** (viet lai, duyet lai tu dau).

### Gate 3 — Pre-launch check (performance, 5-10 phut)

- [ ] Copy da duoc paste dung adset dung tang (`52-account-structure`)
- [ ] Link trong copy co UTM day du (`53-tracking-setup`)
- [ ] Landing page dung copy da duyet — headline LP khop hook ads (`12-brief-landing-page`)
- [ ] Creative di kem dung bien the — khong dung nham anh cua bien the khac
- [ ] Bien the retarget dung creative khac ads lan 1

### Timeline

| Moc | Viec | Nguoi lam |
|-----|------|----------|
| T-5 | Nhan brief + insight, bat dau viet | Content |
| T-4 | Nop copy 6 bien the, tu cham diem | Content |
| T-3 | Gate 2 marketing review | Leader |
| T-2 | Sua theo review, chot ban cuoi | Content |
| T-1 | Gate 3 pre-launch, setup camp | Performance |
| T-0 | Launch | Performance |

**Luat:** copy tra ve o Gate 2 sau T-3 thi lui launch, khong chay copy chua duyet. Ngoai le duy nhat: camp retarget khan cap dung lai copy da duyet truoc do.

---

## Cau truc ket qua

> Khung output day du: header thong tin chung, bang chi tiet cho tung bien the 1-6 theo 3 tang (TOFU · MOFU · BOFU + retarget) voi day du truong trigger / primary text 125 char / primary text day du / headline / description / CTA button / ghi chu creative, bang tong hop 6 bien the, va huong dan A/B test kem quy tac test: doc `references/cau-truc-output-6-bien-the.md`.

---

## Lien ket skill lien quan

- **04-script-video** — Dung copy ads lam voice-over hoac text overlay cho video ads
- **02-brief-chien-dich** — Copy ads la mot phan cua brief chien dich tong the
- **09-insight-khach-hang** — Lay noi dau, ngon ngu cua khach de viet copy chinh xac
- **10-tinh-kpi-nguoc** — Tinh CPMess muc tieu de danh gia hieu qua copy
- **36-content-brief** — Brief dau vao cho nguoi viet copy (message, angle, proof point)
- **52-account-structure** — Copy tang nao vao adset nao — kiem tra o Gate 3
- **62-marketing-review** — Gate 2 duyet copy truoc khi len camp
- **19-ab-test-setup** — Thiet ke test giua cac bien the copy sau khi launch

---

## Personal Brand Mode

> Chi doc khi da xac dinh MODE B o Buoc 0. Bang khac biet Mode A vs Mode B (pheu, goal, tone, CTA, proof), 6 bien the copy personal brand (2 Awareness · 2 Trust · 2 Soft Sell) kem vi du day du, va 3 canh bao bat buoc truoc khi chay ads (nguong 500 follower huu co, niche phai ro, disclosure AI avatar theo Nghi dinh 147/2024): doc `references/personal-brand-mode.md`.

---

## Checklist chat luong

Kiem tra truoc khi giao copy:

- [ ] Co du 6 bien the: 2 TOFU + 2 MOFU + 2 BOFU (gom 1 retarget)
- [ ] Dong 1 cua moi bien the khong vuot 125 ky tu
- [ ] Headline khong vuot 40 ky tu
- [ ] Moi bien the dung trigger cam xuc khac nhau
- [ ] CTA cu the, hanh dong duoc — khong chung chung
- [ ] Khong vi pham chinh sach quang cao (xem compliance checklist)
- [ ] Khong dung "mien phi" trong headline
- [ ] Khong nhac den dac diem ca nhan ("Ban bi...", "Ban thua...")
- [ ] Co ghi chu creative (hinh anh/video) di kem moi bien the
- [ ] Giong van phu hop nen tang (Meta vs TikTok vs Google)
- [ ] Co huong dan A/B test ro rang
- [ ] Retarget copy khac creative voi ads lan 1
- [ ] Moi bien the dung dung framework phu hop voi nhiet do audience (Cold/Warm/Hot)
- [ ] Khong co 2 bien the nao dung cung framework + cung hook → Andromeda risk
- [ ] Creative di kem moi bien the thuc su khac biet — khong chi doi mau/cat clip
- [ ] TOFU khong nhac gia; MOFU co social proof; BOFU co gia + deadline + guarantee
- [ ] Do dai primary text dung chuan tung tang (150/120/100 chu)
- [ ] Moi bien the co >=1 con so that kem nguon — khong bia so
- [ ] Khong dung tu ngu cam ("sieu hot", "so 1 Viet Nam"...) neu khong co bang chung
- [ ] Da qua Gate 1 self-check va ghi Copy Score vao cuoi file
- [ ] Da qua Gate 2 marketing review, ghi ket qua DUYET / DUYET CO DIEU KIEN / TRA VE
- [ ] Neu la Google RSA: du 15 headline <=30 char + 4 description <=90 char, khong ghim qua 2 headline
