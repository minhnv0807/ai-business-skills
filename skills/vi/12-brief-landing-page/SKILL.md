---
name: 12-brief-landing-page
description: "Dung khi can viet brief de XAY landing page moi hoac trang ban hang moi — cau truc section, copy tung khoi, yeu cau ky thuat, tracking va timeline giao dev. Kich hoat khi user nhac 'brief landing page', 'lam trang ban hang', 'can trang dich', 'thue dev lam landing', 'landing page can gi', 'viet noi dung cho trang'. Khong dung cho — trang DA CHAY ma khong ra don thi dung skill 68-cro-audit-trang; email HTML thi dung skill 49-html-email-template; danh sach asset cho ca campaign thi dung skill 41-campaign-asset-list."
metadata:
  version: 2.1.2
  category: content
triggers:
  - "brief landing page"
  - "trang ban hang"
  - "trang thu lead"
  - "brief cho lap trinh vien lam landing"
  - "landing page"
  - "trang dich"
  - "code landing page"
  - "build landing page HTML"
  - "MVP landing page"
output: File .md chua brief day du 7 section voi copy template, yeu cau ky thuat, A/B test plan, va tracking plan
related:
  - 02-brief-chien-dich
  - 05-copy-quang-cao
  - 09-insight-khach-hang
  - 10-tinh-kpi-nguoc
  - 41-campaign-asset-list
  - 46-brand-guideline
  - 47-design-review
  - 49-html-email-template
  - 53-tracking-setup
---

# Brief Landing Page

> 1 page = 1 goal = 1 CTA. Khong menu, khong link ngoai, khong xao nhang.

---

## Thu thap thong tin

Hoi user toi da 4 cau:

1. **San pham/dich vu gi?** Mo ta ngan + gia ban + doi tuong muc tieu.
2. **Muc tieu landing page?** Thu lead (form), dat lich, mua hang, dang ky?
3. **Nguon traffic chinh?** Meta Ads, TikTok Ads, Google Ads, organic, hay ket hop?
4. **Da co asset chua?** Anh/video san pham, testimonial, so lieu social proof?

---

## Nguyen tac cot loi

### 1 page — 1 goal — 1 CTA

| Nguyen tac | Giai thich |
|------------|-----------|
| 1 muc tieu duy nhat | Moi trang chi phuc vu 1 hanh dong: dien form, dat lich, hoac mua hang |
| Khong navigation menu | Loai bo header menu — tranh user roi khoi trang |
| Khong link ngoai | Moi link phai anchor scroll xuong CTA, khong dan ra ngoai |
| Mobile-first | 70%+ traffic tu mobile o Viet Nam — thiet ke mobile truoc, desktop sau |
| Toc do <3 giay | First Contentful Paint < 1.5s, Largest Contentful Paint < 3s |
| Yeu to khan cap | Countdown, so luong gioi han, deadline — luon co it nhat 1 |

### Phan bo do dai theo thiet bi

| Thiet bi | Tong chieu dai trang | Thoi gian doc trung binh |
|----------|---------------------|-------------------------|
| Mobile | 6–8 man hinh cuon | 90–120 giay |
| Desktop | 4–5 man hinh cuon | 60–90 giay |

---

## Cau truc 7 section

### Section 1 — Hero (Man hinh dau tien)

**Muc dich:** Hook + truyen tai gia tri cot loi trong 5 giay.

| Thanh phan | Yeu cau | Gioi han ky tu |
|------------|---------|---------------|
| Headline | Noi ro loi ich chinh, khong chung chung | 60 ky tu |
| Sub-headline | Giai thich ngan cach dat duoc loi ich | 120 ky tu |
| CTA chinh | Dong tu + loi ich, mau cam (#ff6b00) | 25 ky tu |
| Visual | Anh/video san pham hoac ket qua | 1 hinh chinh |
| Trust badge | So khach hang, danh gia, logo doi tac | 3–5 badge |

**Template copy:**

```
Headline: [Ket qua mong muon] — [Thoi gian/Dieu kien]
  Vi du: "Da sang min trong 4 tuan — khong can xam lan"

Sub-headline: [Phuong phap/San pham] giup [doi tuong] [dat ket qua] ma [loai bo noi lo].
  Vi du: "Lieu trinh facial chuyen sau giup chi em van phong lay lai lan da khoe manh ma khong mat thoi gian nghi duong."

CTA: [Dong tu] + [Loi ich]
  Vi du: "Dat lich tu van mien phi"
```

---

### Section 2 — Van de (Problem Agitation)

**Muc dich:** Goi ten dung noi dau de user cam thay "dung roi, minh dang gap van de nay."

| Thanh phan | Yeu cau |
|------------|---------|
| 3–5 pain point | Liet ke van de cu the, dung ngon ngu cua khach hang |
| Hau qua | Neu khong giai quyet thi sao? |
| Cam xuc | Dung tu gay dong cam: met moi, lo lang, chan nan, mat tu tin |

**Template:**

```
"Ban co dang gap nhung van de nay?"

- [Pain point 1 — mo ta cu the, co tinh huong]
- [Pain point 2 — hau qua cua van de]
- [Pain point 3 — cam xuc di kem]
- [Pain point 4 — da thu cach khac nhung khong hieu qua]

"Neu ban dang gap it nhat 1 trong nhung dieu tren — [ten san pham/dich vu] la giai phap."
```

---

### Section 3 — Giai phap (Solution + How it works)

**Muc dich:** Gioi thieu san pham/dich vu nhu cau tra loi cho van de o Section 2.

| Thanh phan | Yeu cau |
|------------|---------|
| Gioi thieu giai phap | 2–3 cau ngan, khong viet qua dai |
| 3–4 buoc hoat dong | So hoa quy trinh: Buoc 1 → Buoc 2 → Buoc 3 → Ket qua |
| Diem khac biet | 3 USP so voi doi thu hoac phuong phap cu |
| Visual | Hinh anh/icon minh hoa tung buoc |

**Template:**

```
"[Ten giai phap] hoat dong nhu the nao?"

Buoc 1: [Hanh dong dau tien cua khach] → [Ket qua buoc nay]
Buoc 2: [Hanh dong tiep theo] → [Ket qua buoc nay]
Buoc 3: [Hanh dong cuoi] → [Ket qua cuoi cung]

Tai sao khac biet:
- [USP 1]: [Giai thich ngan]
- [USP 2]: [Giai thich ngan]
- [USP 3]: [Giai thich ngan]
```

---

### Section 4 — Bang chung xa hoi (Social Proof)

**Muc dich:** Xay trust bang ket qua thuc te.

| Thanh phan | Yeu cau | So luong |
|------------|---------|---------|
| Testimonial | Ten that, hinh that, ket qua cu the | 3–5 |
| So lieu | Tong khach, danh gia TB, nam kinh nghiem | 3–4 so |
| Logo doi tac | Neu la B2B hoac co brand lon | 4–6 logo |
| Truoc/Sau | Hinh anh so sanh ket qua | 2–3 cap |
| Video review | Khach hang chia se trai nghiem | 1–2 video |

**Template testimonial:**

```
"[Ket qua cu the voi so lieu]"
— [Ten], [Nghe nghiep/Vi tri], [Thanh pho]
[Hinh anh hoac avatar]
```

---

### Section 5 — Form thu lead / CTA chinh

**Muc dich:** Chuyen doi — day la section quan trong nhat.

| Thanh phan | Yeu cau |
|------------|---------|
| Headline form | Nhac lai loi ich + khan cap |
| So truong form | Toi thieu: Ten + SĐT (2 truong). Toi da: + Email + 1 truong tuy chon |
| CTA button | Mau cam (#ff6b00), kich thuoc lon, noi bat |
| Cam ket | "Thong tin bao mat" hoac "Tu van mien phi, khong rang buoc" |
| Khan cap | Countdown timer hoac "Con [X] slot trong thang nay" |

**Quy tac form:**

- Mobile: form chiem toan bo chieu rong man hinh
- Moi truong form co label ro rang + placeholder vi du
- Button CTA cao toi thieu 48px (de bam tren mobile)
- Sau submit: hien Thank you + redirect hoac thong bao thanh cong
- Khong yeu cau email neu muc tieu la goi dien/nhan tin

---

### Section 6 — FAQ (Xu ly phan doi)

**Muc dich:** Tra loi 5–7 cau hoi thuong gap de go bo ro can mua.

| Loai cau hoi | Vi du |
|-------------|------|
| Gia ca | "Chi phi bao nhieu? Co phat sinh khong?" |
| Hieu qua | "Bao lau thay ket qua?" |
| An toan | "Co tac dung phu khong?" |
| Quy trinh | "Dang ky nhu the nao?" |
| Doi thu | "Khac gi voi [doi thu/phuong phap khac]?" |
| Cam ket | "Co bao hanh/hoan tien khong?" |
| Thoi gian | "Mat bao lau?" |

**Dinh dang:** Accordion (co/dong) — mac dinh dong tren mobile de tiet kiem khong gian.

---

### Section 7 — Final CTA (Chot)

**Muc dich:** Lan cuoi keu goi hanh dong, manh me nhat.

| Thanh phan | Yeu cau |
|------------|---------|
| Headline | Tom tat toan bo gia tri trong 1 cau |
| CTA button | Giong Section 5, mau cam, kich thuoc lon |
| Khan cap | Nhac lai deadline/gioi han |
| Lien he truc tiep | SĐT hotline + link Zalo/Messenger (cho nguoi khong muon dien form) |

---

## Yeu cau ky thuat

> Bang nguong hieu suat (FCP, LCP, CLS, TTI, PageSpeed mobile), bang 7 tich hop bat buoc (Meta Pixel, GA4, Google Sheets, Zalo, UTM, TikTok Pixel, GTM), doan SEO meta tag mau, va bang 3 breakpoint responsive: doc `references/ky-thuat-tracking-va-ab-test.md` muc "Yeu cau ky thuat".

---

## Analytics Tracking Plan

> Bang 11 su kien can track (PageView, ViewContent, 4 moc scroll depth, FormStart, Lead, ClickCTA, ClickPhone, ClickZalo) kem trigger va platform tuong ung: doc `references/ky-thuat-tracking-va-ab-test.md` muc "Analytics Tracking Plan".

---

## A/B Test Plan

> Lo trinh test 3 vong theo thu tu uu tien (Vong 1 headline + CTA copy · Vong 2 so truong + vi tri form · Vong 3 mau CTA + yeu to khan cap) kem bien the A/B va quy tac ket luan: doc `references/ky-thuat-tracking-va-ab-test.md` muc "A/B Test Plan".

---

## Template ket qua

> Khung markdown day du de copy: header + bang thong tin chung + o dien noi dung cho ca 7 section + checklist yeu cau ky thuat + 3 dong A/B test plan: doc `references/template-brief-landing-page.md`.

---

## Khau BUILD — tu brief den trang HTML chay duoc

Brief xong moi la nua duong. Phan nay la khau bien brief thanh trang HTML that — dung khi tu build (Ladipage Custom HTML, file HTML tinh, hoac giao cho dev).

> Tu duy: landing page khong phai de dep — de convert. Moi section phai co ly do ton tai. Bo di ma khong ai de y thi bo han.

### Buoc 1 — Chon mode truoc khi viet dong code dau tien

| | **MVP** | **Production** |
|---|---|---|
| Muc tieu | Nguoi duyet xem va chot huong trong 15 phut | Trang that de chay ads |
| Thoi gian | **30 phut** — vuot la dang over-engineer | 1-2 ngay |
| Font | Font he thong (Arial / system-ui) | Font brand that |
| Copy | Placeholder, dung do dai that | Copy that da duyet |
| Anh | O mau xam co ghi kich thuoc | Anh that, da nen |
| Pixel / tracking | Khong | Day du |
| Responsive | Chi kiem tra khong vo layout | Hoan chinh 375px / 768px / 1440px |

**Luat:** khong bao gio nhay thang vao Production. MVP truoc → duyet huong → moi build that. Sua bo cuc o MVP mat 5 phut, sua o Production mat nua ngay.

### Buoc 2 — Map section theo muc tieu (khong phai luc nao cung 7 section)

| Muc tieu / loai traffic | Thu tu section |
|------------------------|---------------|
| **Lead gen — traffic lanh** | Hero → Van de → Giai phap → Bang chung → Form → FAQ → Final CTA |
| **Traffic am (retarget, da biet brand)** | Offer → Khan cap → Bang chung → Form |
| **Khoa hoc / su kien** | Hero → Gioi thieu → Noi dung chuong trinh → Nguoi day → Testimonial → Bang gia → FAQ → Form |
| **Booking dich vu local** | Hero → Bang chung → Quy trinh → Bang gia → Form dat lich → FAQ |

Traffic cang am, trang cang ngan. Bat nguoi da biet brand doc lai phan "van de" la ly do ho thoat.

### Buoc 3 — Thu tu build cac khoi

Build theo dung thu tu nay, moi khoi xong moi sang khoi tiep:

| # | Khoi | Bat buoc | Noi dung toi thieu |
|---|------|---------|-------------------|
| 1 | **Hero** | Co | Pre-headline (nhan nho) · Headline theo loi ich (khong theo tinh nang) · Sub-headline 1-2 cau · CTA chinh · social proof ngan ("X nguoi da tham gia" / so sao) · anh that (khong dung anh stock chung chung) |
| 2 | **Van de** | Co | 3 noi dau: icon + tieu de + 1 cau mo ta · cau chuyen tiep: "Neu ban gat dau voi it nhat 1 dieu tren..." |
| 3 | **Giai phap** | Co | Tieu de "Day la cach [brand] giai quyet..." · 3-5 y co dau tick · anh minh hoa hoac demo that |
| 4 | **Bang chung xa hoi** | Co | 2-3 the testimonial: avatar that + ten + vai tro + trich dan that · kem so lieu ("200+ hoc vien", "ROAS 4.2x") |
| 5 | **Offer / bang gia** | Tuy | Ten goi + nhan "Pho bien nhat" · gia goc gach ngang + gia hien tai · danh sach bao gom · bonus · khan cap ("con X suat" / "uu dai den [ngay]") · CTA lon · cam ket ("hoan tien trong X ngay") |
| 6 | **FAQ** | Nen co | 5-7 cau xu ly rao can cuoi, dang accordion |
| 7 | **Final CTA** | Co | Nhac lai khan cap · form hoac nut CTA · tin hieu tin cay (logo, cam ket, hotline) |

**Nen mau va typography:** doc tu brand hub — `[mau primary]`, `[mau secondary]`, `[font heading]`, `[font body]`. Neu chua co, chay `46-brand-guideline` truoc. Khong tu che bang mau.

### Buoc 4 — Form va tracking

```html
<form action="[WEBHOOK_URL]" method="POST">
  <input type="hidden" name="source"     value="landing-[ten-chien-dich]">
  <input type="hidden" name="utm_source" value="">
  <input type="hidden" name="utm_medium" value="">
  <input type="hidden" name="utm_campaign" value="">
  <input type="text"  name="name"  placeholder="Ho va ten *" required>
  <input type="tel"   name="phone" placeholder="So dien thoai *" required>
  <input type="email" name="email" placeholder="Email">
  <button type="submit">Dang ky ngay</button>
</form>
```

- UTM tu URL phai duoc **tu dong do vao hidden field** — khong co buoc nay thi khong biet lead den tu camp nao.
- Fire event `Lead` (Meta Pixel) va event tuong ung GA4 **khi submit thanh cong**, khong phai khi bam nut.
- Moi field them vao form = conversion giam. Toi da 3 field bat buoc.

Chi tiet setup pixel/CAPI/UTM → `53-tracking-setup`.

### Buoc 5 — Conversion checklist ky thuat (truoc khi go live)

- [ ] Phan man hinh dau tien tai xong < 2 giay (do o mang 4G, khong do o wifi)
- [ ] Anh co `loading="lazy"` — **tru anh hero**
- [ ] Anh hero < 200KB, da nen, dung dinh dang toi uu
- [ ] Kiem tra o be ngang 375px — khong co thanh cuon ngang
- [ ] Headline + CTA thay ngay khong can cuon, ke ca tren mobile
- [ ] Test submit form that — data ve dung noi nhan (Sheets / CRM / webhook)
- [ ] Tat ca nut CTA va anchor scroll hoat dong
- [ ] Meta Pixel fire dung event `Lead` khi submit (kiem bang Events Manager)
- [ ] Da dien page title + meta description + OG image 1200x630
- [ ] Khong co menu dieu huong, khong co link dan ra ngoai trang

### Buoc 6 — Timeline chuan trong chien dich

| Moc | Viec | Nguoi lam | Gate |
|-----|------|----------|------|
| **T-14** | Doc brief chien dich, chot landing page nam trong danh sach asset | Designer / Dev | `41-campaign-asset-list` |
| **T-7** | Dung **MVP trong 30 phut** → gui duyet | Designer / Dev | Duyet huong trong 15 phut (`47-design-review`) |
| **T-6** | Sua theo gop y MVP (1 vong) | Designer / Dev | |
| **T-5** | Build ban Production day du (landing page la asset phuc tap — lam som nhat) | Designer / Dev | |
| **T-3** | Gan tracking, test form, test toc do | Performance | `53-tracking-setup` |
| **T-1** | Kiem tra cuoi cung theo conversion checklist | Performance + Lead | Pre-launch check |
| **T-0** | Go live truoc khi bat ads | | **Khong bat ads truoc khi landing page da test xong** |

**Luat:** landing page luon la asset lam som nhat trong chien dich, vi moi thu khac (ads, email, Zalo) deu tro ve day. Landing page tre = ca chien dich tre.

---

## Lien ket skill

- **`09-insight-khach-hang`** — lay pain point va ngon ngu khach hang cho Section 2
- **`05-copy-quang-cao`** — viet copy ads dan traffic ve landing page
- **`10-tinh-kpi-nguoc`** — tinh conversion rate can dat va ngan sach ads tuong ung
- **`02-brief-chien-dich`** — landing page nam trong brief chien dich tong the
- **`13-phan-tich-du-lieu`** — phan tich hieu suat landing page sau khi chay
- **`41-campaign-asset-list`** — landing page la 1 dong trong danh sach asset cua chien dich
- **`46-brand-guideline`** — lay mau, font, style token thay vi tu che bang mau
- **`47-design-review`** — gate duyet MVP o T-7 va duyet ban Production
- **`49-html-email-template`** — cung he token va cung cach dung HTML cho email
- **`53-tracking-setup`** — gan pixel, CAPI, UTM cho landing page
- **`21-audit-ads-performance`** — khi CTR tot ma CPL cao, van de thuong nam o landing page

---

## Checklist chat luong

### Noi dung

- [ ] Headline Hero truyen tai loi ich trong 60 ky tu
- [ ] Moi section co 1 muc dich ro rang, khong trung lap
- [ ] Pain point dung ngon ngu cua khach hang (khong dung thuat ngu noi bo)
- [ ] Co it nhat 3 testimonial voi ten that + ket qua cu the
- [ ] Moi CTA dung dong tu + loi ich, khong dung "Click here" hay "Tim hieu them"
- [ ] Co yeu to khan cap (countdown, so luong gioi han, deadline)
- [ ] FAQ xu ly het cac phan doi chinh

### Thiet ke

- [ ] Khong co navigation menu
- [ ] Khong co link dan ra ngoai trang
- [ ] Mobile layout 1 cot, font >= 16px
- [ ] CTA button mau cam, chiem full width tren mobile
- [ ] Hinh anh co alt text
- [ ] Form toi da 3 truong

### Ky thuat

- [ ] Load time < 3 giay tren 4G
- [ ] Meta Pixel + GA4 da cai
- [ ] Form gui data ve Google Sheets
- [ ] Zalo thong bao khi co lead moi
- [ ] UTM params duoc luu vao form data
- [ ] OG image 1200x630 da co
- [ ] noindex, nofollow (landing page khong can SEO)

### Truoc khi go live

- [ ] Test form tren mobile (iOS + Android)
- [ ] Test toc do tren PageSpeed Insights
- [ ] Kiem tra hien thi OG khi share link
- [ ] Chay thu Meta Pixel voi Events Manager
- [ ] Link CTA va anchor scroll hoat dong dung

### Khi tu build HTML

- [ ] Da chon mode truoc khi build (MVP hay Production) — khong nhay thang vao Production
- [ ] MVP hoan thanh trong 30 phut va da duoc duyet huong truoc khi build that
- [ ] Thu tu section chon theo muc tieu va do am cua traffic — khong mac dinh 7 section
- [ ] Mau va font lay tu brand hub (`[mau primary]`, `[font heading]`) — khong tu che
- [ ] Form co hidden field tu dong bat UTM tu URL
- [ ] Event `Lead` fire khi submit thanh cong, khong phai khi bam nut
- [ ] Anh hero < 200KB; anh con lai co `loading="lazy"`
- [ ] Kiem tra 375px khong co cuon ngang
- [ ] Landing page hoan thanh truoc khi bat ads — khong chay ads vao trang chua test
