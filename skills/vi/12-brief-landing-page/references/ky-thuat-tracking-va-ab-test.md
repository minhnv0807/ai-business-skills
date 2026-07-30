# Yeu Cau Ky Thuat, Tracking Plan Va A/B Test

> Reference cua skill 12-brief-landing-page. Doc khi viet phan ky thuat cua brief — nguong hieu suat, danh sach tich hop bat buoc, meta tag, breakpoint responsive, bang su kien tracking, va lo trinh A/B test 3 vong.

## Yeu cau ky thuat

### Hieu suat

| Chi so | Yeu cau |
|--------|---------|
| First Contentful Paint | < 1.5 giay |
| Largest Contentful Paint | < 3 giay |
| Cumulative Layout Shift | < 0.1 |
| Time to Interactive | < 3.5 giay |
| PageSpeed Score (Mobile) | > 80 |

### Tich hop bat buoc

| Tich hop | Chi tiet |
|----------|---------|
| Meta Pixel | Events: PageView, ViewContent, Lead, SubmitApplication |
| Google Analytics 4 | Events: page_view, scroll (25/50/75/100%), form_start, form_submit |
| Form → Google Sheets | Moi submission tu dong ghi vao Google Sheets |
| Form → Zalo thong bao | Gui thong bao ve Zalo OA/Zalo Group khi co lead moi |
| UTM tracking | Doc UTM params tu URL, luu kem voi form data |
| TikTok Pixel | Neu chay TikTok Ads: PageView, SubmitForm |
| Google Tag Manager | Quan ly tat ca pixel qua 1 container |

### SEO Meta Tags

```html
<title>[Headline chinh] | [Ten thuong hieu]</title>
<meta name="description" content="[Sub-headline — 150–160 ky tu]" />
<meta property="og:title" content="[Headline chinh]" />
<meta property="og:description" content="[Sub-headline ngan]" />
<meta property="og:image" content="[URL hinh OG 1200x630]" />
<meta property="og:type" content="website" />
<meta name="robots" content="noindex, nofollow" />  <!-- Landing page khong can index -->
```

### Responsive

| Breakpoint | Yeu cau |
|-----------|---------|
| Mobile (< 768px) | Layout 1 cot, font 16px+, CTA chiem full width |
| Tablet (768–1024px) | Layout 1–2 cot, CTA noi bat |
| Desktop (> 1024px) | Layout 2 cot cho section co hinh + text, max-width 1200px |

## Analytics Tracking Plan

| Su kien | Trigger | Platform |
|---------|---------|----------|
| PageView | Tai trang | Meta Pixel + GA4 + TikTok Pixel |
| ViewContent | Cuon qua Section 3 (Giai phap) | Meta Pixel |
| Scroll depth 25% | Cuon 25% trang | GA4 |
| Scroll depth 50% | Cuon 50% trang | GA4 |
| Scroll depth 75% | Cuon 75% trang | GA4 |
| Scroll depth 100% | Cuon het trang | GA4 |
| FormStart | Click vao truong dau tien cua form | GA4 |
| Lead | Submit form thanh cong | Meta Pixel + GA4 + TikTok Pixel |
| ClickCTA | Click bat ky CTA button nao | GA4 (event label: vi tri section) |
| ClickPhone | Click so dien thoai | GA4 |
| ClickZalo | Click link Zalo | GA4 |

## A/B Test Plan

Test theo thu tu uu tien — moi lan chi test 1 yeu to:

### Vong 1 — Tac dong lon nhat

| Yeu to test | Bien the A | Bien the B | Chi so do |
|-------------|-----------|-----------|-----------|
| Headline Hero | Tap trung loi ich | Tap trung noi dau | Conv rate form |
| CTA copy | "Dat lich tu van mien phi" | "Nhan uu dai ngay" | Click rate CTA |

### Vong 2 — Toi uu form

| Yeu to test | Bien the A | Bien the B | Chi so do |
|-------------|-----------|-----------|-----------|
| So truong form | 2 truong (Ten + SĐT) | 3 truong (Ten + SĐT + Email) | Conv rate form |
| Vi tri form | Giua trang (Section 5) | Tren dau trang (sau Hero) | Conv rate form |

### Vong 3 — Tinh chinh

| Yeu to test | Bien the A | Bien the B | Chi so do |
|-------------|-----------|-----------|-----------|
| Mau CTA button | Cam (#ff6b00) | Xanh (#155eef) | Click rate CTA |
| Yeu to khan cap | Countdown timer | "Con X slot" text | Conv rate form |

**Quy tac A/B test:**
- Toi thieu 200 conversion moi bien the truoc khi ket luan
- Chay toi thieu 7 ngay de loai yeu to ngay trong tuan
- Chi so chinh: conversion rate form (khong phai bounce rate)
