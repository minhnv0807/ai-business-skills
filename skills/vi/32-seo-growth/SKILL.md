---
name: 32-seo-growth
description: "Khi nguoi dung muon tang traffic tu SEO, AI SEO, GEO/AEO, Google, ChatGPT, Perplexity, schema, structured data, llms.txt, programmatic SEO, directory submissions, Product Hunt, G2/Capterra, backlinks, hoac audit website khong len top. Dung cho 'SEO audit', 'AI search visibility', 'duoc AI trich dan', 'schema markup', 'pSEO', 'submit directory', 'backlink plan'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "SEO audit"
  - "AI SEO"
  - "GEO"
  - "AEO"
  - "schema markup"
  - "programmatic SEO"
  - "directory submissions"
  - "backlinks"
related:
  - product-marketing-context
  - 08-nghien-cuu-doi-thu
  - 12-brief-landing-page
  - 13-phan-tich-du-lieu
  - 15-social-listening
---

# SEO Growth

Skill nay gom 5 lop SEO thuc chien: audit nen tang, noi dung co y dinh tim kiem, AI search visibility, schema/machine-readable files, va backlink/distribution. Muc tieu la tang traffic co y dinh mua, khong phai chi viet nhieu bai.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` neu co. Hoi toi da 4 cau: website/URL, thi truong muc tieu, san pham/dich vu chinh, va muc tieu SEO 90 ngay. Neu co Search Console/GA4/Ahrefs/Semrush export, dung no truoc y kien cam tinh. Neu can chi tiet tung lop, doc `references/seo-growth-playbook.md`.

## Chon mode

| User noi | Mode |
|----------|------|
| "Website khong len top", "traffic giam" | SEO audit |
| "Muon ChatGPT/Perplexity trich dan" | AI SEO / GEO |
| "Them schema", "rich result" | Schema |
| "Tao nhieu page SEO" | Programmatic SEO |
| "Submit Product Hunt/G2/AI directory" | Directory + backlink |

## Workflow

### 1. Audit nen tang

Kiem tra theo thu tu:

1. Crawl/index: robots, sitemap, canonical, 404/redirect.
2. On-page: title, meta, H1/H2, intent match, internal links.
3. Performance: mobile, Core Web Vitals, image weight.
4. Authority: backlinks, mentions, reviews, author/entity proof.
5. Conversion: page co CTA va lead capture ro khong.

### 2. Lap ban do keyword theo funnel

| Funnel | Loai keyword | Page nen co |
|--------|--------------|-------------|
| TOFU | van de, cach lam, checklist | blog, guide, free tool |
| MOFU | so sanh, template, use case | comparison, use-case page |
| BOFU | gia, alternative, review, demo | landing page, pricing, case study |

### 3. Toi uu AI search

Lam noi dung de AI de trich dan:

- Tra loi cau hoi truc tiep trong 40-80 tu.
- Them bang, steps, FAQ, dinh nghia, vi du.
- Co author/entity, ngay cap nhat, nguon bang chung.
- Cho phep bot crawl; them `llms.txt` khi phu hop.
- Dung schema dung loai page.

### 4. Schema va machine-readable files

Chon schema theo page:

| Page | Schema |
|------|--------|
| Trang cong ty | Organization, WebSite |
| Bai blog | Article / BlogPosting |
| San pham | Product, Offer, Review neu hop le |
| FAQ | FAQPage neu cau hoi hien tren page |
| Breadcrumb | BreadcrumbList |
| Local | LocalBusiness |

### 5. Backlink va directory

Uu tien backlink co kha nang tao lead:

1. Product Hunt / BetaList / startup directory.
2. G2 / Capterra / Trustpilot neu co khach hang that.
3. Alternative pages va comparison pages.
4. AI tool directories neu dung category.
5. Partner/co-marketing pages.

## Output template

```markdown
# SEO Growth Plan — [Brand]

## 1. Diagnosis
| Area | Status | Evidence | Priority |

## 2. 90-day SEO strategy
- Market:
- ICP:
- Main search intent:
- Primary KPI:

## 3. Page roadmap
| Page | Funnel | Keyword intent | CTA | Owner |

## 4. AI SEO / GEO actions
| Query | Current AI answer | Gap | Content fix |

## 5. Schema + technical checklist
| Page | Schema/file | Action | Validation |

## 6. Backlink/distribution plan
| Destination | Asset needed | Submission copy | Deadline |

## 7. Measurement
| Metric | Baseline | Target | Tool |
```

## Lien ket skill

- `08-nghien-cuu-doi-thu`: tim doi thu SEO va content gap.
- `12-brief-landing-page`: tao page BOFU.
- `13-phan-tich-du-lieu`: doc GA4/Search Console/export.
- `15-social-listening`: tim cau hoi that tu cong dong.

## Checklist chat luong

- Khong de xuat viet bai neu chua ro search intent.
- Moi page co CTA va muc tieu funnel.
- Schema khop noi dung hien tren page.
- Directory submission co landing/destination page ro.
- AI SEO khong hua "rank ChatGPT"; chi noi ve kha nang duoc trich dan.
- Ke hoach co KPI va baseline.
