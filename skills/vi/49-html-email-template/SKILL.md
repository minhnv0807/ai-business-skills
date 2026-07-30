---
name: 49-html-email-template
description: "Code email HTML responsive dung duoc tren moi email client: cau truc table-based, inline CSS, max 600px, dark mode, spec tung client (Gmail, Outlook, Apple Mail), checklist test truoc khi gui. Mau va font doc tu brand guideline. Kich hoat khi nhac: email html, code email, template email html, email responsive."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "email html"
  - "code email"
  - "template email html"
  - "email responsive"
  - "html email"
  - "email broadcast html"
output: "File .html duy nhat, self-contained — paste vao email tool (Brevo, Mailchimp, GetResponse...) la gui duoc ngay. Kem checklist test client."
related:
  - 14-email-marketing
  - 46-brand-guideline
  - 47-design-review
  - 12-brief-landing-page
---

# HTML Email Template

> Email HTML khac website HTML: phai dung table layout, inline CSS, tranh moi thu client khong support. Tieu chi: dep tren Gmail, Outlook, Apple Mail, doc duoc tren mobile 375px — khong co exception. Noi dung va sequence lay tu `14-email-marketing`; skill nay lo phan code.

## Thu thap thong tin

Doc brand guideline (`46-brand-guideline`) va noi dung email tu `14-email-marketing` neu co. Neu thieu, hoi toi da 4 cau:

1. **Loai email + layout?** Welcome / broadcast / nurture / offer / transactional — 1 cot don gian, 2 cot co hinh san pham, hay newsletter nhieu muc?
2. **Sections can co?** Header / hero / body / social proof / CTA / footer — co anh hero khong?
3. **Copy da co chua?** Hay can viet placeholder? CTA chinh link den dau?
4. **Gui bang tool nao?** Brevo / Mailchimp / GetResponse / khac — de dung dung merge tag ({{first_name}}...).

## Nguyen tac

1. **Table layout, khong div/flexbox/grid/float/position:absolute** — Outlook desktop render bang Word engine, khong support.
2. **Toan bo CSS inline** — Gmail co the strip the `<style>` (chi giu `<style>` cho media query mobile va dark mode, phan con lai inline het).
3. **Width toi da 600px**, responsive ve 375px.
4. **Font he thong lam fallback:** '[font body]', Arial, Helvetica, sans-serif — khong phu thuoc web font (nhieu client khong load Google Fonts).
5. **Moi the img phai co alt text + width/height attribute** — nguoi doc chan anh van hieu email.
6. **Unsubscribe link bat buoc** (phap ly) + dia chi cong ty o footer.
7. **Test mobile truoc** — phan lon nguoi Viet doc email tren dien thoai.
8. **1 file .html duy nhat, self-contained, duoi 100KB.**

## Quy trinh

### Buoc 1 — Chon layout

| Layout | Dung cho |
|--------|----------|
| Simple 1 cot | Broadcast, nurture — de doc nhat, it loi nhat |
| 2 cot (hinh + text) | Offer email co hinh san pham |
| Newsletter nhieu muc | Digest, update — moi muc 1 block table rieng |

### Buoc 2 — Code theo spec ky thuat

```
Container: 600px desktop / 100% mobile
Background ngoai: mau xam nhat (vd #F4F4F4)
Background body: [mau nen] (thuong trang)
Font: '[font body]', Arial, Helvetica, sans-serif
Body font-size: 16px / line-height: 1.6
Mobile breakpoint: max-width 480px
```

Design tokens doc tu brand guideline:

- Header: nen [mau primary], logo ban sang, padding 20px.
- Hero: nen [mau primary] hoac gradient [mau primary] sang [mau secondary]; headline bold 28px mau sang; subtext 16px; CTA button.
- Body: nen sang, padding 40x48px desktop / 24x20px mobile; H2 bold 22px [mau text dam]; body 16px line-height 1.7.
- CTA button: nen [mau primary], text bold 16px mau sang, padding 14x32px, radius 8px, display inline-block, text-decoration none. (Outlook khong ve border-radius — chap nhan nut vuong fallback, khong dung anh lam button.)
- Social proof: quote nen [mau nen nhe], border-left 4px [mau primary], ten + role nguon quote.
- Footer: nen xam nhat, text 13px [mau text phu] — logo nho ~80px, links website/social, dia chi, unsubscribe, copyright.

### Buoc 3 — Dien sections

- Header: logo, can giua.
- Hero: pre-header text (optional), headline (toi da 60 ky tu), subtext (toi da 100 ky tu), CTA button, hero image optional 600x300px co alt text.
- Body: "Chao {{first_name}}," → opening 2-3 cau → main content (doan ngan, toi da 4 cau/doan) → bullet list neu co (dung table, khong dung ul de an toan render) → CTA thu hai neu can.
- Footer bat buoc: dia chi cong ty `[dia chi]`, unsubscribe "Ban nhan email nay vi da dang ky tai [website] | Huy dang ky", copyright © [nam] [ten thuong hieu].

### Buoc 4 — Mobile responsive + dark mode

```css
@media only screen and (max-width: 480px) {
  /* container: 100% */
  /* body font: 15px */
  /* CTA: width 100%, can giua */
  /* padding: 24px 20px */
  /* image: 100% width */
}
```

Dark mode:

- Them `<meta name="color-scheme" content="light dark">` va `<meta name="supported-color-schemes" content="light dark">`.
- `@media (prefers-color-scheme: dark)` chi duoc ho tro mot phan: Apple Mail ho tro tot; Gmail thuong tu dao mau va bo qua media query; Outlook co the tu invert.
- Quy tac an toan khi khong kiem soat duoc dark mode: logo PNG nen trong phai du tuong phan tren ca nen sang lan toi (hoac them vien sang); khong dung text den thuan tren background trong suot; vung quan trong (CTA) dung mau nen solid; test tren it nhat 1 client dark mode truoc khi gui.

### Buoc 5 — Placeholders bat buoc truoc khi gui

- `{{first_name}}` — ten nguoi nhan (doi cu phap theo tool gui)
- `{{unsubscribe_link}}` — bat buoc phap ly
- `[dia chi cong ty]` — dien that
- `[CTA_LINK]` — dien link that (kem UTM theo `14-email-marketing`)

## Spec cac email client

| Client | Dac diem render | Luu y khi code |
|--------|-----------------|----------------|
| Gmail (web/app) | Co the strip `<style>` trong mot so ngu canh | Inline toan bo CSS; media query co the bi bo qua — layout 1 cot van phai doc duoc |
| Outlook desktop (Windows) | Render bang Word engine | Chi table; khong border-radius, khong background-image day du (dung mau solid thay the); test rieng |
| Apple Mail / iPhone Mail | WebKit, render tot nhat | Ho tro media query + dark mode |
| Yahoo / webmail khac | Ho tro kha, khac nhau tung ban | Gui test that de kiem tra |
| Mobile apps noi chung | Man hinh 375px | Font >= 15px, CTA cao toi thieu 44px de bam bang ngon tay |

## Test checklist truoc khi gui

- [ ] Gmail desktop + Gmail app mobile
- [ ] iPhone Mail app
- [ ] Outlook desktop (neu tep nguoi nhan co dan van phong)
- [ ] Dark mode preview it nhat 1 client
- [ ] Tat ca link hoat dong — dac biet CTA va unsubscribe
- [ ] Alt text cho moi img; email van hieu duoc khi anh bi block
- [ ] File size HTML < 100KB
- [ ] Merge tag dung cu phap tool gui ({{first_name}} khong bi in tho)
- [ ] Gui test that toi 2-3 hop thu khac nhau truoc khi gui ca list
- [ ] Subject + preheader da dien (lay tu 14-email-marketing)

## Lien ket skill

- `14-email-marketing`: chien luoc, sequence, noi dung, subject line — viet truoc, code sau.
- `46-brand-guideline`: mau, font, logo cho email tokens.
- `47-design-review`: review email truoc khi gui (brand + readability + CTA + platform fit).
- `12-brief-landing-page`: CTA email thuong tro ve landing page — dong bo message giua 2 ben.

## Checklist chat luong

- [ ] Table layout, khong flexbox/grid/float/absolute
- [ ] CSS inline het (tru media query + dark mode trong style)
- [ ] Width 600px, mobile ve 375px khong vo layout
- [ ] Font fallback he thong, khong phu thuoc web font
- [ ] CTA button dat chuan: solid, >= 44px chieu cao tren mobile
- [ ] Footer du: dia chi + unsubscribe + copyright
- [ ] Dark mode meta tags + quy tac an toan da ap dung
- [ ] Da chay het test checklist tren
- [ ] 1 file .html duy nhat, self-contained
