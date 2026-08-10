# Schema JSON-LD — Thu Vien Block San Sang Dung

> Reference cua skill `32-seo-growth`. Doc khi can chen structured data vao website, audit schema hien co, hoac tra loi cau hoi "them schema gi cho page nay".

## Cach dung file nay

1. Chon block theo loai page (bang "Chon type theo nganh VN" ben duoi).
2. Thay moi gia tri trong `[...]` bang du lieu that.
3. Chen vao `<head>` cua page:

```html
<script type="application/ld+json">
{ ...dan JSON o day... }
</script>
```

4. Kiem tra bang Rich Results Test truoc khi deploy (muc "Kiem tra va debug").

## Nam nguyen tac truoc khi copy

1. **Schema phai khop noi dung nguoi dung nhin thay.** Danh gia 4.9 sao trong JSON-LD ma tren page khong co review nao la vi pham chinh sach spam structured data — Google co the phat thu cong toan site, khong chi page do.
2. **Mot page mot bo schema.** Neu can nhieu type, gop bang `@graph` (block 11) thay vi chen 5 the `<script>` roi rac.
3. **UTF-8 bat buoc.** Noi dung tieng Viet co dau trong JSON-LD phai duoc serve voi `charset=UTF-8`. Neu CMS xuat sai encoding, gia tri se thanh ky tu la va parser bo qua ca block. Cac vi du duoi day viet khong dau theo quy uoc repo — khi trien khai that thi dung tieng Viet co dau binh thuong.
4. **Gia VND viet lien, khong dau cham.** `"price": "450000"` — KHONG viet `"450.000"`. Dau cham la ky hieu thap phan trong schema.org, nen `"450.000"` bi doc thanh 450 dong. Day la loi pho bien nhat cua site VN.
5. **Google khong chap nhan self-serving review.** Review va `aggregateRating` do chinh doanh nghiep thu thap va hien tren page cua minh KHONG duoc dung cho `Organization` va `LocalBusiness`. Voi `Product` / `Service` thi duoc, mien la review that va hien thi tren page.

## Trang thai rich result tren Google — cap nhat 2026

Nhieu tai lieu SEO con day "them FAQ schema de an nhieu dong hon tren SERP". Dieu do khong con dung. Bang duoi la trang thai thuc te:

| Schema | Con ra rich result tren Google? | Van nen dung? | Ly do |
|--------|-------------------------------|---------------|-------|
| Organization | Co (logo, site name, knowledge panel) | Co | Nen tang nhan dien entity |
| WebSite + SearchAction | **Khong con** — Google bo sitelinks search box tu cuoi 2024 | Co, nhung doi ky vong | `WebSite` van giup Google chon site name dung; dung ky vong o search box |
| Article / BlogPosting | Co | Co | Anh, ngay, tac gia trong ket qua tin tuc/Discover |
| Product + Offer | Co (gia, ton kho, sao) | Co | Anh huong CTR truc tiep |
| SoftwareApplication | Khong dam bao | Co | Chu yeu de AI engine hieu san pham la phan mem gi |
| **FAQPage** | **Khong** — tu 8/2023 Google gioi han rich result FAQ cho site co quan chinh phu va y te co tham quyen | Co | Khong ra rich result nhung ChatGPT/Perplexity/Gemini van doc duoc cap Q&A |
| **HowTo** | **Khong** — Google bo hoan toan rich result HowTo tu 9/2023 | Uu tien thap | Chi them khi noi dung that su la quy trinh tung buoc va ban muon AI trich duoc thu tu buoc |
| BreadcrumbList | Co | Co | Thay URL tho bang duong dan de doc |
| LocalBusiness | Khong thay the Google Business Profile | Co | Xac nhan cheo NAP; GBP moi la thu quyet dinh local pack |
| Event | Co | Co | Ngay, dia diem, gia ve hien tren SERP |
| Course | Co | Co | Huu ich cho nganh dao tao/khoa hoc online |

**Ket luan cho FAQPage va HowTo:** van chen, nhung ghi dung ly do vao ke hoach — "de AI engine trich duoc", khong phai "de an nhieu dong tren Google". Neu client ky brief voi ky vong sai thi do la loi cua ban.

## Chon type theo nganh VN

Luon dung type cu the nhat con dung, khong dung `LocalBusiness` chung chung:

| Nganh VN | `@type` nen dung | Ghi chu |
|----------|-----------------|---------|
| Spa, tham my vien | `HealthAndBeautyBusiness` hoac `DaySpa` | Dich vu cu the dung `Service` long trong `hasOfferCatalog` |
| Phong kham, nha khoa | `MedicalClinic`, `Dentist` | Noi dung khong duoc claim hieu qua dieu tri; tuan thu quy dinh quang cao y te |
| Quan an, cafe, nha hang | `Restaurant`, `CafeOrCoffeeShop` | Them `servesCuisine`, `menu` |
| Cua hang thoi trang | `ClothingStore` | San pham dung `Product` rieng tren tung page |
| Khoa hoc online | `Course` + `EducationalOrganization` | Xem block 12 |
| Trung tam gia su, tieng Anh | `EducationalOrganization` + `Course` | |
| Phong tap, yoga | `HealthClub`, `SportsActivityLocation` | |
| Studio chup anh | `PhotographyBusiness` | |
| Cong ty phan mem / SaaS | `Organization` + `SoftwareApplication` | Khong dung `LocalBusiness` neu ban khong phuc vu khach den truc tiep |

---

## 1. Organization

Dat o trang chu hoac trang gioi thieu. Ban VN bo sung ma so thue, hotline va Zalo OA — ba thu ma khach VN dung de kiem chung doanh nghiep that.

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": "https://[ten-mien].vn/#organization",
  "name": "[Ten cong ty day du theo dang ky kinh doanh]",
  "alternateName": "[Ten thuong goi/ten thuong hieu]",
  "url": "https://[ten-mien].vn",
  "logo": {
    "@type": "ImageObject",
    "url": "https://[ten-mien].vn/logo.png",
    "width": 512,
    "height": 512
  },
  "description": "[Mot cau mo ta doanh nghiep lam gi cho ai]",
  "taxID": "[ma so thue 10 hoac 13 so]",
  "foundingDate": "[YYYY-MM-DD]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[So nha, ten duong]",
    "addressLocality": "[Phuong/Xa]",
    "addressRegion": "[Tinh/Thanh pho]",
    "postalCode": "[ma buu chinh]",
    "addressCountry": "VN"
  },
  "contactPoint": [
    {
      "@type": "ContactPoint",
      "telephone": "+84[so hotline khong co so 0 dau]",
      "contactType": "customer service",
      "areaServed": "VN",
      "availableLanguage": ["vi", "en"]
    }
  ],
  "sameAs": [
    "https://www.facebook.com/[page]",
    "https://zalo.me/[so-oa]",
    "https://www.tiktok.com/@[tai-khoan]",
    "https://www.youtube.com/@[kenh]",
    "https://www.linkedin.com/company/[cong-ty]"
  ]
}
```

**Luu y VN:**
- `telephone` viet dang E.164: hotline `1900 1234` thanh `+8419001234`; di dong `0901 234 567` thanh `+84901234567`.
- `sameAs` la cho de khai bao Zalo OA — day la kenh xac tin quan trong nhat voi khach VN nhung hau het site bo qua.
- Tu 7/2025 he thong hanh chinh VN bo cap quan/huyen. Neu Google Business Profile va giay to cua ban van ghi ten quan cu, uu tien **NAP nhat quan** hon la dung chuan hanh chinh moi: ghi giong het chuoi dia chi tren GBP.

---

## 2. WebSite + SearchAction

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "@id": "https://[ten-mien].vn/#website",
  "url": "https://[ten-mien].vn",
  "name": "[Ten site ngan gon muon Google hien]",
  "alternateName": "[Ten viet tat neu co]",
  "inLanguage": "vi-VN",
  "publisher": { "@id": "https://[ten-mien].vn/#organization" },
  "potentialAction": {
    "@type": "SearchAction",
    "target": {
      "@type": "EntryPoint",
      "urlTemplate": "https://[ten-mien].vn/tim-kiem?q={search_term_string}"
    },
    "query-input": "required name=search_term_string"
  }
}
```

**Sua so voi tai lieu cu:** rat nhieu huong dan con ghi block nay "bat sitelinks search box". Google da ngung hien sitelinks search box tu cuoi 2024, `SearchAction` khong con tao ra o tim kiem tren SERP nua. Ly do giu block: `name` + `alternateName` van la tin hieu Google dung de chon **site name** hien duoi tieu de ket qua — thu do van dang gia.

---

## 3. Article / BlogPosting

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "[Tieu de bai, toi da 110 ky tu]",
  "image": ["https://[ten-mien].vn/anh-bai-viet-1200x630.jpg"],
  "datePublished": "2026-03-12T08:00:00+07:00",
  "dateModified": "2026-08-01T10:30:00+07:00",
  "inLanguage": "vi-VN",
  "author": {
    "@type": "Person",
    "name": "[Ho ten tac gia that]",
    "jobTitle": "[Chuc danh]",
    "url": "https://[ten-mien].vn/tac-gia/[slug]"
  },
  "publisher": { "@id": "https://[ten-mien].vn/#organization" },
  "description": "[Tom tat 1-2 cau]",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://[ten-mien].vn/blog/[slug]"
  }
}
```

**Luu y:**
- Timezone VN la `+07:00`. Bo timezone thi Google doan theo UTC, ngay dang co the lech mot ngay.
- `author` phai la nguoi that co trang tac gia rieng. Dat `author` la ten cong ty lam yeu tin hieu E-E-A-T va khong giup AI engine gan chuyen mon cho ai ca.
- `dateModified` chi cap nhat khi noi dung that su doi. Sua mot dau cham roi doi ngay la thu AI engine phat hien duoc qua so sanh phien ban.

---

## 4. Product + Offer + AggregateRating

Vi du: cua hang thoi trang.

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[Ten san pham]",
  "image": [
    "https://[ten-mien].vn/san-pham/[slug]-1.jpg",
    "https://[ten-mien].vn/san-pham/[slug]-2.jpg"
  ],
  "description": "[Mo ta san pham 1-3 cau]",
  "sku": "[ma SKU noi bo]",
  "gtin13": "[ma vach 13 so neu co]",
  "brand": { "@type": "Brand", "name": "[Ten thuong hieu]" },
  "offers": {
    "@type": "Offer",
    "url": "https://[ten-mien].vn/san-pham/[slug]",
    "priceCurrency": "VND",
    "price": "450000",
    "priceValidUntil": "2026-12-31",
    "availability": "https://schema.org/InStock",
    "itemCondition": "https://schema.org/NewCondition",
    "seller": { "@id": "https://[ten-mien].vn/#organization" },
    "shippingDetails": {
      "@type": "OfferShippingDetails",
      "shippingRate": {
        "@type": "MonetaryAmount",
        "value": "30000",
        "currency": "VND"
      },
      "shippingDestination": {
        "@type": "DefinedRegion",
        "addressCountry": "VN"
      }
    },
    "hasMerchantReturnPolicy": {
      "@type": "MerchantReturnPolicy",
      "applicableCountry": "VN",
      "returnPolicyCategory": "https://schema.org/MerchantReturnFiniteReturnWindow",
      "merchantReturnDays": 7,
      "returnMethod": "https://schema.org/ReturnByMail",
      "returnFees": "https://schema.org/FreeReturn"
    }
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.7",
    "reviewCount": "128",
    "bestRating": "5"
  }
}
```

**Luu y VN:**
- `"price": "450000"` — khong dau cham, khong chu "d", khong khoang trang.
- `shippingDetails` va `hasMerchantReturnPolicy` la hai truong ma ban goc cua hau het tai lieu bo qua. Thieu chung thi listing van hop le nhung mat co hoi hien phi ship va chinh sach doi tra ngay tren SERP — thu ma nguoi mua VN quan tam nhat.
- `aggregateRating` chi chen khi tren page that su co block review hien thi. Neu review nam tren Shopee/TikTok Shop chu khong tren website thi khong duoc dung.

---

## 5. SoftwareApplication

```json
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "[Ten phan mem]",
  "applicationCategory": "BusinessApplication",
  "operatingSystem": "Web, iOS, Android",
  "url": "https://[ten-mien].vn",
  "description": "[Phan mem giai quyet van de gi cho ai]",
  "inLanguage": "vi-VN",
  "offers": [
    {
      "@type": "Offer",
      "name": "Goi mien phi",
      "price": "0",
      "priceCurrency": "VND"
    },
    {
      "@type": "Offer",
      "name": "Goi Pro",
      "price": "299000",
      "priceCurrency": "VND",
      "billingIncrement": 1,
      "unitText": "thang"
    }
  ],
  "featureList": [
    "[Tinh nang 1]",
    "[Tinh nang 2]",
    "[Tinh nang 3]"
  ]
}
```

**Luu y:** khai bao `offers` theo goi gia giup AI engine tra loi dung cau hoi "[phan mem X] gia bao nhieu" — mot trong nhung truy van BOFU co ti le chuyen doi cao nhat.

---

## 6. FAQPage

**Trang thai:** khong con tao rich result tren Google cho hau het website (tu 8/2023 Google gioi han cho site co quan chinh phu va y te co tham quyen). Van nen chen: ChatGPT, Perplexity, Gemini va cac AI engine khac doc duoc cap cau hoi - tra loi nay va dung lam nguon trich dan.

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "inLanguage": "vi-VN",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "[Cau hoi viet dung cach khach hoi, khong phai cach ban muon hoi]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Tra loi truc tiep trong cau dau. Bo sung ngu canh trong 2-3 cau sau. Do dai 50-100 tu.]"
      }
    },
    {
      "@type": "Question",
      "name": "[Cau hoi 2]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Tra loi 2]"
      }
    }
  ]
}
```

**Quy tac:** moi cau hoi va cau tra loi trong JSON phai hien nguyen van tren page. Chen FAQ schema cho noi dung khong ton tai tren page la vi pham chinh sach.

---

## 7. HowTo

**Trang thai:** Google da bo hoan toan rich result HowTo tu 9/2023. Khong con carousel buoc tren SERP. Uu tien thap — chi lam khi noi dung dung la quy trinh co thu tu va ban muon AI engine trich duoc dung so buoc.

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "[Cach lam gi]",
  "description": "[Mo ta ngan quy trinh]",
  "totalTime": "PT30M",
  "inLanguage": "vi-VN",
  "supply": [
    { "@type": "HowToSupply", "name": "[Vat lieu/dieu kien can co]" }
  ],
  "step": [
    {
      "@type": "HowToStep",
      "position": 1,
      "name": "[Ten buoc 1]",
      "text": "[Mo ta hanh dong cu the]",
      "url": "https://[ten-mien].vn/[slug]#buoc-1"
    },
    {
      "@type": "HowToStep",
      "position": 2,
      "name": "[Ten buoc 2]",
      "text": "[Mo ta hanh dong cu the]",
      "url": "https://[ten-mien].vn/[slug]#buoc-2"
    }
  ]
}
```

`PT30M` la dinh dang ISO 8601: `PT` + so + `M` (phut) hoac `H` (gio). 1 gio 15 phut = `PT1H15M`.

---

## 8. BreadcrumbList

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Trang chu",
      "item": "https://[ten-mien].vn"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Dich vu",
      "item": "https://[ten-mien].vn/dich-vu"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "[Ten page hien tai]"
    }
  ]
}
```

Phan tu cuoi cung (page hien tai) khong can `item`. Breadcrumb phai phan anh dung cau truc URL — neu URL la `/dich-vu/cham-soc-da` ma breadcrumb ghi `Trang chu > Blog > Cham soc da` thi Google bo qua.

---

## 9. LocalBusiness — vi du spa tai TP HCM

Day la block quan trong nhat cho phan lon khach hang VN: spa, phong kham, quan an, phong tap.

```json
{
  "@context": "https://schema.org",
  "@type": "HealthAndBeautyBusiness",
  "@id": "https://[ten-mien].vn/#chi-nhanh-quan-1",
  "name": "[Ten spa] - Chi nhanh Quan 1",
  "image": "https://[ten-mien].vn/anh-mat-tien.jpg",
  "url": "https://[ten-mien].vn/chi-nhanh/quan-1",
  "telephone": "+84901234567",
  "priceRange": "300.000d - 2.500.000d",
  "currenciesAccepted": "VND",
  "paymentAccepted": "Tien mat, Chuyen khoan, The, Vi dien tu, QR VietQR",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[So nha, ten duong]",
    "addressLocality": "[Phuong]",
    "addressRegion": "Thanh pho Ho Chi Minh",
    "postalCode": "700000",
    "addressCountry": "VN"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "10.7769",
    "longitude": "106.7009"
  },
  "hasMap": "https://maps.app.goo.gl/[ma-ngan-tu-google-maps]",
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "09:00",
      "closes": "20:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Saturday", "Sunday"],
      "opens": "08:30",
      "closes": "21:00"
    }
  ],
  "specialOpeningHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "opens": "00:00",
      "closes": "00:00",
      "validFrom": "2027-02-06",
      "validThrough": "2027-02-12",
      "description": "Nghi Tet Nguyen dan"
    }
  ],
  "areaServed": [
    { "@type": "City", "name": "Thanh pho Ho Chi Minh" }
  ],
  "sameAs": [
    "https://www.facebook.com/[page]",
    "https://zalo.me/[so-oa]"
  ],
  "hasOfferCatalog": {
    "@type": "OfferCatalog",
    "name": "Bang dich vu",
    "itemListElement": [
      {
        "@type": "Offer",
        "itemOffered": { "@type": "Service", "name": "[Ten dich vu]" },
        "price": "450000",
        "priceCurrency": "VND"
      }
    ]
  }
}
```

**Sau diem chi ap dung cho VN:**

1. **Lay `latitude`/`longitude` tu ghim that tren Google Maps**, khong tu dia chi. Nhieu hem o VN bi geocode lech vai tram met, khach den nham nha.
2. **Quan an co ca sang - chieu:** khai bao hai `OpeningHoursSpecification` cho cung mot ngay (vi du 10:00-14:00 va 17:00-22:00), khong ghi `10:00-22:00`.
3. **Nghi Tet:** dung `specialOpeningHoursSpecification` voi `opens`/`closes` deu la `00:00` de bao dong cua. Cap nhat truoc Tet 2 tuan — day la loi vang mat pho bien nhat cua site VN moi nam.
4. **`priceRange`** la truong text tu do nen ghi khoang VND that de hon la `$$` (khach VN khong doc ky hieu do).
5. **Nhieu chi nhanh = nhieu page + nhieu `@id` rieng.** Khong nhoi ba dia chi vao mot block. Moi chi nhanh mot trang dia diem rieng, mot `LocalBusiness` rieng, tro ve cung `Organization` cha bang `parentOrganization`.
6. **Khong chen `aggregateRating` vao `LocalBusiness`** neu review do chinh ban thu thap — Google khong chap nhan self-serving review cho loai nay. Review Google Maps la thu co gia tri, va no khong can schema.

**Quan trong:** schema `LocalBusiness` KHONG thay the Google Business Profile. Local pack va Google Maps chay bang du lieu GBP. Schema chi la tin hieu xac nhan cheo. Neu chua co GBP thi lam GBP truoc — xem `11-thiet-lap-kenh` muc 7 cho phan setup.

---

## 10. Event

Vi du: workshop offline.

```json
{
  "@context": "https://schema.org",
  "@type": "Event",
  "name": "[Ten su kien]",
  "startDate": "2026-09-20T09:00:00+07:00",
  "endDate": "2026-09-20T17:00:00+07:00",
  "eventAttendanceMode": "https://schema.org/OfflineEventAttendanceMode",
  "eventStatus": "https://schema.org/EventScheduled",
  "inLanguage": "vi-VN",
  "location": {
    "@type": "Place",
    "name": "[Ten dia diem to chuc]",
    "address": {
      "@type": "PostalAddress",
      "streetAddress": "[So nha, ten duong]",
      "addressLocality": "[Phuong]",
      "addressRegion": "Thanh pho Ho Chi Minh",
      "addressCountry": "VN"
    }
  },
  "image": "https://[ten-mien].vn/su-kien/[slug].jpg",
  "description": "[Mo ta su kien, ai nen tham du]",
  "offers": {
    "@type": "Offer",
    "url": "https://[ten-mien].vn/su-kien/[slug]/dang-ky",
    "price": "500000",
    "priceCurrency": "VND",
    "availability": "https://schema.org/InStock",
    "validFrom": "2026-08-15T00:00:00+07:00"
  },
  "organizer": { "@id": "https://[ten-mien].vn/#organization" },
  "performer": {
    "@type": "Person",
    "name": "[Ten dien gia]"
  }
}
```

**Su kien online:** doi `eventAttendanceMode` thanh `OnlineEventAttendanceMode` va `location` thanh `{ "@type": "VirtualLocation", "url": "https://..." }`. Su kien hybrid dung `MixedEventAttendanceMode` va khai bao ca hai location trong mang.

**Su kien mien phi:** van khai bao `offers` voi `"price": "0"` — bo han `offers` thi mat co hoi hien "Mien phi" tren SERP.

---

## 11. Gop nhieu type bang @graph

Dung cho trang chu hoac bat ky page nao can nhieu type. Chi mot the `<script>`, cac node tham chieu nhau qua `@id`.

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "@id": "https://[ten-mien].vn/#organization",
      "name": "[Ten cong ty]",
      "url": "https://[ten-mien].vn",
      "logo": "https://[ten-mien].vn/logo.png",
      "taxID": "[ma so thue]",
      "sameAs": ["https://zalo.me/[so-oa]"]
    },
    {
      "@type": "WebSite",
      "@id": "https://[ten-mien].vn/#website",
      "url": "https://[ten-mien].vn",
      "name": "[Ten site]",
      "inLanguage": "vi-VN",
      "publisher": { "@id": "https://[ten-mien].vn/#organization" }
    },
    {
      "@type": "WebPage",
      "@id": "https://[ten-mien].vn/dich-vu/[slug]#webpage",
      "url": "https://[ten-mien].vn/dich-vu/[slug]",
      "name": "[Tieu de page]",
      "isPartOf": { "@id": "https://[ten-mien].vn/#website" },
      "about": { "@id": "https://[ten-mien].vn/#chi-nhanh-quan-1" },
      "breadcrumb": { "@id": "https://[ten-mien].vn/dich-vu/[slug]#breadcrumb" }
    },
    {
      "@type": "BreadcrumbList",
      "@id": "https://[ten-mien].vn/dich-vu/[slug]#breadcrumb",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Trang chu", "item": "https://[ten-mien].vn" },
        { "@type": "ListItem", "position": 2, "name": "Dich vu" }
      ]
    },
    {
      "@type": "HealthAndBeautyBusiness",
      "@id": "https://[ten-mien].vn/#chi-nhanh-quan-1",
      "name": "[Ten spa] - Chi nhanh Quan 1",
      "parentOrganization": { "@id": "https://[ten-mien].vn/#organization" },
      "telephone": "+84901234567"
    }
  ]
}
```

**Quy tac `@id`:** dung URL that + fragment (`#organization`, `#website`, `#breadcrumb`). Khong dat `@id` trung nhau giua hai node khac type — parser se gop nham thanh mot entity.

---

## 12. Course — khoa hoc online (bo sung cho nganh dao tao VN)

```json
{
  "@context": "https://schema.org",
  "@type": "Course",
  "name": "[Ten khoa hoc]",
  "description": "[Hoc xong lam duoc gi]",
  "url": "https://[ten-mien].vn/khoa-hoc/[slug]",
  "inLanguage": "vi-VN",
  "provider": { "@id": "https://[ten-mien].vn/#organization" },
  "hasCourseInstance": {
    "@type": "CourseInstance",
    "courseMode": "online",
    "courseWorkload": "PT12H",
    "startDate": "2026-09-05",
    "endDate": "2026-10-10",
    "instructor": { "@type": "Person", "name": "[Ten giang vien]" }
  },
  "offers": {
    "@type": "Offer",
    "price": "1990000",
    "priceCurrency": "VND",
    "availability": "https://schema.org/InStock",
    "category": "Paid"
  }
}
```

---

## Kiem tra va debug

| Cong cu | Kiem tra gi | Luu y |
|---------|-------------|-------|
| Google Rich Results Test (`search.google.com/test/rich-results`) | Page co du dieu kien rich result nao khong | Render JavaScript giong Googlebot — nen dung ban "Test URL" cho site SPA |
| Schema Markup Validator (`validator.schema.org`) | Cu phap schema.org tong quat, ke ca type Google khong ho tro | An toan nhat la dan truc tiep doan code thay vi nhap URL |
| Search Console > Enhancements | Loi schema tren toan site sau khi deploy | Du lieu tre 3-7 ngay; dung de theo doi, khong dung de debug nhanh |

**Canh bao ky thuat quan trong:** `web_fetch`, `curl`, va phan lon cong cu crawl don gian chi lay HTML tho, **khong chay JavaScript**. Rat nhieu site VN chen JSON-LD bang Google Tag Manager, plugin SEO cua WordPress, hoac framework render phia client — schema chi xuat hien sau khi JS chay.

Ket luan "trang nay khong co schema" dua tren mot lan fetch la **sai phuong phap**. Truoc khi ghi vao bao cao audit, kiem tra lai bang it nhat mot trong ba cach:
1. Rich Results Test voi che do "Test URL" (co render JS).
2. DevTools > Elements, tim `application/ld+json` trong DOM da render.
3. Chay `JSON.parse` tren ket qua cua `document.querySelectorAll('script[type="application/ld+json"]')` trong Console.

Loi nay ap dung ca chieu nguoc lai: khi audit doi thu, dung ket luan "doi thu khong lam schema" chi vi fetch khong thay.

## Loi thuong gap tren site VN

| Loi | Hau qua | Cach sua |
|-----|---------|----------|
| Gia viet `"450.000"` | Google doc thanh 450 VND | Viet lien: `"450000"` |
| Thieu `+84` trong `telephone` | Khong click-to-call duoc tren mobile | Dung dinh dang E.164 |
| JSON-LD serve khong phai UTF-8 | Ca block bi bo qua | Set `charset=UTF-8`, kiem tra header response |
| Plugin SEO chen 3-4 block Organization trung nhau | Google chon nham entity | Gop bang `@graph`, tat schema mac dinh cua theme |
| Sao/review trong schema nhung khong co tren page | Nguy co phat thu cong toan site | Xoa `aggregateRating` hoac hien review that len page |
| Dia chi trong schema khac dia chi tren Google Business Profile | Tin hieu NAP mau thuan, tut local pack | Copy nguyen van chuoi dia chi tu GBP |
| Gio mo cua khong cap nhat dip Tet | Khach den dong cua, review 1 sao | Dat lich cap nhat `specialOpeningHoursSpecification` truoc Tet 2 tuan |
| Copy nguyen vi du mau, con `example.com` | Schema tro ve domain nguoi khac | Grep `example.com` truoc khi deploy |
