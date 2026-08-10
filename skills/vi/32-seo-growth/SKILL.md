---
name: 32-seo-growth
description: "Khi nguoi dung muon tang traffic tu SEO, AI SEO, GEO/AEO, Google, ChatGPT, Perplexity, schema, structured data, llms.txt, programmatic SEO, local SEO, directory submissions, Product Hunt, G2/Capterra, backlinks, hoac audit website khong len top. Dung cho 'SEO audit', 'AI search visibility', 'duoc AI trich dan', 'schema markup', 'pSEO', 'local SEO', 'submit directory', 'backlink plan'. Khong dung cho setup Google Business Profile lan dau — dung skill 11-thiet-lap-kenh; khong dung cho viet noi dung bai — dung 36-content-brief."
metadata:
  version: 1.1.0
  category: performance
license: MIT
triggers:
  - "SEO audit"
  - "AI SEO"
  - "GEO"
  - "AEO"
  - "schema markup"
  - "local SEO"
  - "programmatic SEO"
  - "directory submissions"
  - "backlinks"
related:
  - product-marketing-context
  - 08-nghien-cuu-doi-thu
  - 11-thiet-lap-kenh
  - 12-brief-landing-page
  - 13-phan-tich-du-lieu
  - 15-social-listening
---

# SEO Growth

Skill nay gom 6 lop SEO thuc chien: audit nen tang, local SEO, noi dung co y dinh tim kiem, AI search visibility, schema/machine-readable files, va backlink/distribution. Muc tieu la tang traffic co y dinh mua, khong phai chi viet nhieu bai.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` neu co. Hoi toi da 4 cau: website/URL, thi truong muc tieu, san pham/dich vu chinh, va muc tieu SEO 90 ngay. Neu co Search Console/GA4/Ahrefs/Semrush export, dung no truoc y kien cam tinh.

Hai reference di kem:
- `references/seo-growth-playbook.md` — lo trinh 90 ngay, pSEO, comparison page, cau truc site.
- `references/schema-json-ld.md` — 12 block JSON-LD copy-paste duoc, adapt cho VN.

## Chon mode

| User noi | Mode |
|----------|------|
| "Website khong len top", "traffic giam" | SEO audit |
| "Khach khong tim thay tiem tren Google Maps" | Local SEO |
| "Muon ChatGPT/Perplexity trich dan" | AI SEO / GEO |
| "Them schema", "rich result" | Schema |
| "Tao nhieu page SEO" | Programmatic SEO |
| "Lam trang so sanh voi doi thu" | Comparison page |
| "Submit Product Hunt/G2/AI directory" | Directory + backlink |

## Workflow

### 1. Audit nen tang

Chay theo thu tu — loi tang duoi lam vo hieu moi no luc o tang tren.

#### 1.1 Crawl va index

| Kiem tra | Nguong dat | Cong cu |
|----------|-----------|---------|
| robots.txt khong chan nham page tien | 0 page tien bi `Disallow` | Search Console > robots.txt report |
| Sitemap XML co mat, khai bao trong robots.txt | Co, cap nhat tu dong | Search Console > Sitemaps |
| Ti le page da index / page muon index | >90% | Search Console > Pages |
| Redirect chain | Toi da 1 hop, khong vong lap | Screaming Frog, Ahrefs Site Audit |
| Soft 404 | 0 page | Search Console > Pages > "Soft 404" |
| Canonical tro dung page | 100% self-canonical hoac tro dung ban goc | Crawl tool |
| `noindex` sot lai tu ban staging | 0 page | Grep `noindex` toan site |

Hai loi chiem phan lon ca truong hop "site khong len top" ma ban se gap: **canonical tro ve trang chu tren toan site** (theme/plugin cau hinh sai) va **noindex con sot tu ban staging** sau khi len production.

#### 1.2 On-page

| Yeu to | Nguong | Ghi chu |
|--------|--------|---------|
| Title | 50-60 ky tu | Dai hon bi cat; keyword chinh dat gan dau |
| Meta description | 150-160 ky tu | Khong phai yeu to xep hang nhung anh huong CTR |
| H1 | Duy nhat 1 tren page | Trung noi dung voi title nhung khong copy y het |
| H2/H3 | Viet theo cach nguoi dung go truy van | La bo khung de AI engine trich passage |
| Anh | Co `alt` mo ta, dat ten file co nghia | Anh WebP, khong upload anh 4MB tu dien thoai |
| Internal link | Moi page co it nhat 1 link tro vao | Xem muc cau truc site trong playbook |

#### 1.3 Core Web Vitals

| Chi so | Dat | Can cai thien | Kem |
|--------|-----|---------------|-----|
| LCP (Largest Contentful Paint) | < 2.5s | 2.5-4.0s | > 4.0s |
| INP (Interaction to Next Paint) | < 200ms | 200-500ms | > 500ms |
| CLS (Cumulative Layout Shift) | < 0.1 | 0.1-0.25 | > 0.25 |

Do bang du lieu field (Search Console > Core Web Vitals, CrUX) truoc, lab (PageSpeed Insights) sau. Diem PageSpeed 100 tren may tinh nhung LCP field 5s tren 4G la tinh huong pho bien o VN — uu tien mobile.

Nguyen nhan LCP kem thuong gap tren site VN: anh banner khong nen, slider tu dong o dau trang, font chu tai tu nhieu nguon, va script chat/popup tai dong bo.

#### 1.4 Cannibalization

Hai page cua chinh ban canh nhau tren cung mot truy van thi ca hai deu yeu. Cach phat hien:

1. Search Console > Performance > loc theo query > xem cot Pages. Neu mot query co 2+ page thay phien nhau xep hang, do la cannibalization.
2. Tim kiem `site:tenmien.vn [tu khoa]` — neu ra nhieu page gan giong nhau, gop lai.

Cach xu ly theo thu tu uu tien: gop noi dung vao page manh nhat va 301 cac page con lai → hoac phan hoa y dinh tim kiem cho tung page → cuoi cung moi dung canonical.

#### 1.5 Authority va conversion

- Authority: backlink, brand mention, review that, trang tac gia co danh tinh.
- Conversion: moi page co CTA ro va cach lien he phu hop kenh VN (Zalo, hotline, form).

### 2. Local SEO cho thi truong VN

Ap dung cho spa, phong kham, quan an, phong tap, trung tam dao tao, cua hang co mat bang — phan lon khach hang cua repo nay. Day la lop SEO co ti le ra khach cao nhat va it doi thu lam nghiem tuc nhat.

> Phan **setup** Google Business Profile lan dau: xem `11-thiet-lap-kenh` muc 7. O day la phan **toi uu** khi GBP da ton tai.

#### 2.1 NAP nhat quan

NAP = Name, Address, Phone. Ba thong tin nay phai giong **nguyen van** tren moi noi:

| Diem xuat hien | Kiem tra |
|----------------|----------|
| Google Business Profile | Ban goc — moi noi khac copy tu day |
| Footer website | Giong tung ky tu |
| Trang lien he / trang chi nhanh | Giong tung ky tu |
| Schema `LocalBusiness` | Giong tung ky tu |
| Fanpage Facebook, Zalo OA, TikTok | Giong tung ky tu |
| Cac trang niem yet (Foody, Now, Shopee, danh ba nganh) | Giong tung ky tu |

Tu 7/2025 he thong hanh chinh VN bo cap quan/huyen. Nhieu doanh nghiep dang co dia chi cu tren GBP va dia chi moi tren website — day la nguyen nhan moi lam tut tin hieu local. **Chon mot ban va dong bo tat ca**, uu tien ban dang hien tren GBP de khong reset lich su ho so.

#### 2.2 Toi uu Google Business Profile

| Hang muc | Muc tieu | Tan suat |
|----------|----------|----------|
| Danh muc chinh | Chon danh muc cu the nhat, khong chon chung chung | Kiem tra 1 lan/quy |
| Danh muc phu | 2-5 danh muc lien quan that | 1 lan/quy |
| Anh | Anh mat tien, khong gian, nhan su, san pham | Them 3-5 anh/thang |
| Bai dang | Uu dai, su kien, cap nhat | 2-4 bai/thang |
| Cau hoi & tra loi | Tu dat va tra loi cac cau khach hay hoi | Ra soat 1 lan/thang |
| Gio mo cua | Cap nhat dip le Tet **truoc 2 tuan** | Theo lich le |
| Dich vu / menu | Liet ke day du kem gia | 1 lan/quy |

#### 2.3 Review

Review Google Maps la yeu to local ma nguoi mua VN tin nhat, tren ca website va quang cao.

- Muc tieu vao: dong deu hang thang, khong don cuc. 20 review trong mot ngay la tin hieu bat thuong.
- Kich hoat dung luc: ngay sau khi khach hoan tat dich vu va dang hai long, gui link ngan qua Zalo.
- Tra loi 100% review, ke ca review 5 sao. Review tieu cuc tra loi trong 24h, giong dieu giai quyet chu khong bao chua.
- **Khong mua review.** Rui ro bi go toan bo ho so lon hon loi ich, va AI engine ngay cang doc ky noi dung review chu khong chi diem so.

#### 2.4 Trang dia diem tren website

Moi chi nhanh mot trang rieng, khong nhoi tat ca vao trang lien he:

- URL: `/chi-nhanh/[ten-phuong]` hoac `/[nganh]-[khu-vuc]`.
- Noi dung rieng: dia chi + ban do nhung, gio mo cua, so dien thoai chi nhanh, anh that cua chi nhanh do, huong dan duong di va cho gui xe, doi ngu tai chi nhanh.
- Schema `LocalBusiness` rieng cho tung chi nhanh (block 9 trong `references/schema-json-ld.md`).
- Tranh copy-paste noi dung giua cac chi nhanh chi doi ten quan — do la trang mong, khong xep hang duoc.

### 3. Lap ban do keyword theo funnel

| Funnel | Loai keyword | Page nen co |
|--------|--------------|-------------|
| TOFU | van de, cach lam, checklist | blog, guide, free tool |
| MOFU | so sanh, template, use case, "gia bao nhieu" | comparison, use-case page, bang gia |
| BOFU | thay the doi thu, review, dat lich, demo | landing page, pricing, case study |

Nganh dich vu dia phuong bo sung tang keyword theo dia ly: `[dich vu] [phuong/quan]`, `[dich vu] gan day`, `[dich vu] [thanh pho] gia bao nhieu`.

### 4. Toi uu AI search (GEO/AEO)

#### 4.1 Thang do visibility 4 bac

Bo cach noi "rank tren ChatGPT" — khong ai kiem soat duoc dieu do. Dung thang 4 bac de bao cao, vi moi bac co cach dat duoc khac nhau:

| Bac | Nghia | Thu quyet dinh | Cach nhin thay |
|-----|-------|---------------|----------------|
| 1. Duoc truy xuat | AI doc noi dung cua ban khi soan cau tra loi | Bot vao duoc, HTML parse duoc, noi dung lien quan | Log server, gan nhu vo hinh |
| 2. Duoc trich dan | Page cua ban hien la nguon trong cau tra loi | Chat luong cau truc noi dung, so lieu, do moi | Tool theo doi prompt, danh sach nguon cua AI Overview |
| 3. Duoc nhac ten | Ten thuong hieu xuat hien trong cau tra loi | Nhan dien entity + cach web noi ve ban | Tool theo doi prompt |
| 4. Duoc khuyen nghi | San pham cua ban nam trong danh sach AI de xuat | **Dong thuan cua ca web** — review, cong dong, bao chi, video | Doc ky ngu canh quanh cho duoc nhac ten |

Bac 1-3 la ket qua cua viec toi uu noi dung tren site cua ban. **Bac 4 chu yeu khong nam tren site cua ban.** Neu bao cao chi dua ra mot con so "AI visibility" thi no che mat khoang cach nay: so lan duoc trich dan tang deu ma khong bao gio duoc khuyen nghi la mot van de rat cu the — web ben ngoai chua xac nhan ban.

Co ca bac am: **bi khuyen khong nen dung**. Voi truy van nhieu rang buoc, AI co the neu ten san pham nen tranh kem ly do va nguon. Vi vay phai theo doi **sac thai** quanh cho duoc nhac ten (tich cuc / trung tinh / de dat / tieu cuc), khong chi dem so lan.

#### 4.2 Su that kho chiu ve bai "top 10 tot nhat"

Bai kieu "Top 10 [nganh] tot nhat 2026" do chinh ban viet va tu xep minh hang 1 la chien thuat dang duoc ban rong o VN. Thuc te no hoat dong khong nhu ky vong:

AI coi bai cua ban la **nguon thong tin ve ca nganh**. No lay ten doi thu, tieu chi so sanh va bang gia ma ban da cong cong ra — roi dua ra khuyen nghi dua tren dong thuan cua ca web, noi cac ten lau nam dang chiem uu the. Ket qua thuong gap: bai cua ban duoc trich dan, con thuong hieu duoc khuyen nghi lai la doi thu. Ban da lam nghien cuu giup ho.

Phan biet theo vi the:
- **Thuong hieu da la ten dan dau nganh:** viet bai nay rat co loi — vua duoc trich dan vua duoc khuyen nghi, va ban dinh nghia luon bo tieu chi ca nganh dung de danh gia.
- **Thuong hieu dang len:** van viet neu khach hang that su can, nhung dat ky vong dung (duoc trich dan va dinh khung nganh, chua phai duoc khuyen nghi) va don nguon luc sang review that, cong dong, bao chi — nhung thu quyet dinh bac 4.

Cau hoi kiem tra truoc khi dau tu them mot bai listicle tu xep hang: *neu AI bo qua toan bo noi dung tren domain cua minh, phan con lai cua internet co du de dua minh vao danh sach de xuat khong?* Neu khong, do moi la viec can lam truoc.

#### 4.3 Cau hinh robots.txt cho AI crawler

```
User-agent: GPTBot
Allow: /

User-agent: OAI-SearchBot
Allow: /

User-agent: ChatGPT-User
Allow: /

User-agent: PerplexityBot
Allow: /

User-agent: ClaudeBot
Allow: /

User-agent: anthropic-ai
Allow: /

User-agent: Google-Extended
Allow: /

User-agent: Bingbot
Allow: /

User-agent: CCBot
Disallow: /
```

| Bot | Thuoc ve | Vai tro |
|-----|----------|---------|
| GPTBot | OpenAI | Thu thap du lieu; chan thi giam kha nang duoc biet den |
| OAI-SearchBot | OpenAI | Bot phuc vu tinh nang tim kiem — chan thi gan nhu chac chan mat cho trich dan |
| ChatGPT-User | OpenAI | Truy cap khi nguoi dung yeu cau ChatGPT mo mot link |
| PerplexityBot | Perplexity | Perplexity luon kem nguon, day la kenh de do luong nhat |
| ClaudeBot / anthropic-ai | Anthropic | `anthropic-ai` la ten cu, `ClaudeBot` la ten hien hanh |
| Google-Extended | Google | **Khong phai crawler.** Xem ghi chu ben duoi |
| Bingbot | Microsoft | Nuoi ca Bing va Copilot |
| CCBot | Common Crawl | Chi phuc vu train model, khong tao trich dan — chan duoc neu khong muon |

**Diem nhieu tai lieu ghi sai:** `Google-Extended` khong quyet dinh viec ban co xuat hien trong AI Overviews hay khong. AI Overviews chay tren chinh chi muc Search binh thuong. Chan `Google-Extended` chi anh huong den viec noi dung duoc dung cho cac san pham AI khac cua Google. Muon kiem soat viec noi dung bi trich trong AI Overviews thi dung `nosnippet`, `max-snippet`, hoac `data-nosnippet` — nhung do la danh doi ca kha nang hien snippet thong thuong.

**Ba diem kiem tra them:**
1. **CDN/WAF chan ngam.** Cloudflare va vai nha cung cap khac co nut chan AI crawler bat san. Robots.txt cua ban co the "Allow" trong khi request bi chan o tang truoc do. Kiem tra log server hoac dashboard CDN, dung chi doc robots.txt.
2. **Nen tang gioi han.** Nhieu site VN chay tren Haravan, Sapo, Ladipage, Wix — khong sua duoc robots.txt tu do. Kiem tra kha nang truoc khi hua trong ke hoach.
3. **`llms.txt`.** Dat o `/llms.txt`, liet ke cac trang quan trong nhat dang markdown kem mo ta ngan. Day la quy uoc do cong dong de xuat, chua nen tang lon nao cam ket ho tro chinh thuc — chi phi thap nen van dang lam, nhung khong dat ky vong cao va khong tinh phi client nhu mot hang muc lon.

#### 4.4 Bang audit AI visibility

Chay thu 10-20 truy van quan trong nhat. Ghi ket qua:

| Cau hoi | Nen tang (ChatGPT / Perplexity / AI Overview) | Co duoc trich dan khong | Doi thu nao duoc trich thay | Hanh dong |
|---------|----------------------------------------------|-------------------------|----------------------------|-----------|
| [cau hoi 1] | | Co / Khong | | |
| [cau hoi 2] | | Co / Khong | | |

Cac nhom cau hoi nen thu:
- "[nganh] la gi", "[dich vu] co tac dung gi"
- "[dich vu] tot nhat cho [doi tuong]"
- "[thuong hieu ban] co tot khong"
- "[thuong hieu ban] va [doi thu] khac gi nhau"
- "[dich vu] gia bao nhieu"
- "[dich vu] o [khu vuc]" (nganh local)

Khi doi thu duoc trich ma ban khong, doi chieu 5 diem: cau truc noi dung co de trich khong, co so lieu va nguon khong, cap nhat gan day khong, co schema khong, va co duoc nhac o nguon ben thu ba (bao, cong dong, trang review) khong.

### 5. Khoi noi dung chuan AI

AI trich **doan**, khong trich ca trang. Moi khoi duoi day phai dung duoc doc lap, khong can doc doan truoc do. Chen khoi phu hop vao noi dung binh thuong — khong viet mot ban rieng "cho AI doc".

| Khoi | Dung cho truy van | Cau truc |
|------|-------------------|----------|
| Dinh nghia | "[X] la gi" | Cau 1 dinh nghia gon. Cau 2-3 mo rong dac diem. Cau cuoi noi vi sao quan trong |
| Tung buoc | "cach [X]" | 1 cau mo dau + danh sach danh so, moi buoc mot hanh dong ro |
| Bang so sanh | "[A] va [B]" | Bang co cot tieu chi + dong "Phu hop voi ai" + 1-2 cau ket luan |
| Uu / nhuoc | "[X] co dang khong" | Uu diem, nhuoc diem, roi ket luan can bang co dieu kien |
| FAQ | cau hoi lien quan | Cau hoi viet dung cach khach hoi; tra loi 50-100 tu |
| Danh sach | "top [X]" | Doc muc 4.2 truoc khi lam |
| Trich dan so lieu | truy van can bang chung | So cu the + nguon + nam + link |
| Cau tra loi tu du nghia | moi loai | 40-80 tu, khong dung "no", "cai nay", "nhu tren" |
| Gia / chi phi | "[X] gia bao nhieu" | Khoang gia that + yeu to lam gia thay doi + tinh gia mau |
| Ai nen / khong nen dung | truy van danh gia | Neu ro truong hop KHONG phu hop — day la thu tao khac biet |
| Cap nhat + tac gia | tat ca | Ngay cap nhat + ten tac gia that + chuyen mon |

Bon quy tac dinh dang: dat cau tra loi ngay dau muc thay vi giau o cuoi; H2/H3 viet giong cach nguoi dung go; bang thang van xuoi cho noi dung so sanh; danh sach danh so thang doan van cho quy trinh.

### 6. Schema va machine-readable files

Chon schema theo loai page:

| Page | Schema |
|------|--------|
| Trang cong ty | Organization, WebSite |
| Bai blog | Article / BlogPosting |
| San pham | Product + Offer (+ AggregateRating neu co review that tren page) |
| Phan mem / SaaS | SoftwareApplication |
| FAQ | FAQPage — xem canh bao ben duoi |
| Quy trinh tung buoc | HowTo — xem canh bao ben duoi |
| Breadcrumb | BreadcrumbList |
| Chi nhanh / dia diem | LocalBusiness (dung subtype cu the: HealthAndBeautyBusiness, Restaurant, MedicalClinic...) |
| Su kien, workshop | Event |
| Khoa hoc | Course |

**Hai dieu phai noi ro voi client:**
- **FAQPage** khong con tao rich result tren Google cho hau het website (tu 8/2023 gioi han cho co quan chinh phu va y te co tham quyen). Van nen chen vi AI engine doc duoc, nhung dung ban no nhu "them dong tren Google".
- **HowTo** da bi Google bo hoan toan rich result tu 9/2023. Uu tien thap.

Code day du 12 block JSON-LD, cach kiem tra, va loi thuong gap tren site VN: `references/schema-json-ld.md`.

**Khong ket luan "site nay khong co schema" chi dua tren mot lan fetch.** Cong cu fetch don gian khong chay JavaScript, ma rat nhieu site VN chen JSON-LD qua GTM hoac plugin SEO chay phia client. Kiem tra lai bang Rich Results Test hoac DevTools truoc khi ghi vao bao cao.

### 7. Backlink va directory

Uu tien nguon backlink co kha nang tao lead, khong chay theo so luong:

1. Product Hunt / BetaList / directory startup (san pham global).
2. G2 / Capterra / Trustpilot khi co khach hang that.
3. Trang so sanh va trang thay the (xem playbook).
4. AI tool directory neu dung category.
5. Trang doi tac, co-marketing, hiep hoi nganh.
6. Bao chi va cong dong nganh — day la nguon anh huong bac 4 cua thang visibility.

Tranh: mua backlink theo goi, PBN, va comment spam. Ngoai rui ro phat, chung khong tao ra dong thuan web ma AI engine can.

## Output template

```markdown
# SEO Growth Plan — [Brand]

## 1. Diagnosis
| Area | Status | Evidence | Priority |

## 2. Technical baseline
| Chi so | Hien tai | Nguong dat | Fix | Owner |

## 3. 90-day SEO strategy
- Market:
- ICP:
- Main search intent:
- Primary KPI:

## 4. Page roadmap
| Page | Funnel | Keyword intent | CTA | Owner |

## 5. Local SEO (neu co mat bang)
| Hang muc | Hien tai | Hanh dong | Tan suat |

## 6. AI SEO / GEO actions
| Cau hoi | Nen tang | Co duoc trich dan | Doi thu duoc trich | Hanh dong |

Bac visibility hien tai: [truy xuat / trich dan / nhac ten / khuyen nghi]
Sac thai khi duoc nhac ten: [tich cuc / trung tinh / de dat / tieu cuc]

## 7. Schema + technical checklist
| Page | Schema/file | Action | Validation |

## 8. Backlink/distribution plan
| Destination | Asset needed | Submission copy | Deadline |

## 9. Measurement
| Metric | Baseline | Target | Tool |
```

## Lien ket skill

- `08-nghien-cuu-doi-thu`: tim doi thu SEO, content gap, va du lieu dau vao cho trang so sanh.
- `11-thiet-lap-kenh`: setup Google Business Profile lan dau (muc 7).
- `12-brief-landing-page`: tao page BOFU va trang so sanh.
- `13-phan-tich-du-lieu`: doc GA4/Search Console/export.
- `15-social-listening`: tim cau hoi that tu cong dong de lam FAQ va noi dung TOFU.
- `36-content-brief`: chuyen page roadmap thanh brief viet bai.

## Checklist chat luong

- Khong de xuat viet bai neu chua ro search intent.
- Moi page co CTA va muc tieu funnel.
- Nguong technical ghi bang so cu the, khong ghi "toi uu toc do".
- Local SEO: NAP da doi chieu voi Google Business Profile truoc khi de xuat sua.
- Schema khop noi dung hien tren page; khong chen `aggregateRating` khi page khong co review.
- Ket luan ve schema cua bat ky site nao (minh hay doi thu) da duoc kiem tra bang cong cu co render JavaScript.
- AI SEO khong hua "rank ChatGPT"; bao cao theo thang 4 bac va co ghi sac thai.
- Neu de xuat bai listicle tu xep hang, da noi ro ky vong theo vi the thuong hieu.
- Directory submission co landing/destination page ro.
- Ke hoach co KPI va baseline.
