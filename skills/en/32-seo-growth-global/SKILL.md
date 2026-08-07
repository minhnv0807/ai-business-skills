---
name: 32-seo-growth-global
description: "Use when the user wants SEO growth, AI SEO, GEO/AEO, Google visibility, ChatGPT or Perplexity citations, schema, structured data, llms.txt, programmatic SEO, directory submissions, Product Hunt, G2/Capterra, backlinks, or a site audit. Trigger on 'SEO audit', 'AI search visibility', 'AI citations', 'schema markup', 'pSEO', 'submit to directories', or 'backlink plan'."
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
  - product-marketing-context-global
  - 08-competitor-research-global
  - 12-landing-page-brief-global
  - 13-data-analysis-global
  - 15-social-listening-global
---

# SEO Growth (Global)

This skill covers 5 practical SEO layers: foundation audit, search-intent content, AI search visibility, schema/machine-readable files, and backlink/distribution. The goal is qualified demand, not publishing volume.

## Information gathering

Read `.agents/product-marketing-context-global.md` if available. Ask up to 4 questions: website URL, target market, main product/service, and 90-day SEO goal. Use Search Console, GA4, Ahrefs, Semrush, or similar exports when available. For deeper guidance, read `references/seo-growth-playbook.md`.

## Pick the mode

| User says | Mode |
|-----------|------|
| "Traffic dropped", "site is not ranking" | SEO audit |
| "Get cited by ChatGPT/Perplexity" | AI SEO / GEO |
| "Add schema", "rich results" | Schema |
| "Create many SEO pages" | Programmatic SEO |
| "Submit to Product Hunt/G2/directories" | Directory + backlink |

## Workflow

### 1. Audit the foundation

Check in order:

1. Crawl/index: robots, sitemap, canonical, 404/redirect.
2. On-page: title, meta, H1/H2, intent match, internal links.
3. Performance: mobile, Core Web Vitals, image weight.
4. Authority: backlinks, mentions, reviews, author/entity proof.
5. Conversion: CTA and lead capture.

### 2. Map keywords by funnel

| Funnel | Keyword type | Page type |
|--------|--------------|-----------|
| TOFU | problem, how-to, checklist | blog, guide, free tool |
| MOFU | comparison, template, use case | comparison, use-case page |
| BOFU | pricing, alternative, review, demo | landing page, pricing, case study |

### 3. Optimize for AI search

Make content extractable and citable:

- Answer questions directly in 40-80 words.
- Add tables, steps, FAQs, definitions, examples.
- Add author/entity, updated date, and evidence.
- Allow useful bots to crawl; add `llms.txt` when appropriate.
- Use schema that matches the page.

### 4. Add schema and machine-readable files

| Page | Schema |
|------|--------|
| Company | Organization, WebSite |
| Blog | Article / BlogPosting |
| Product | Product, Offer, Review when valid |
| FAQ | FAQPage when visible on page |
| Breadcrumb | BreadcrumbList |
| Local | LocalBusiness |

### 5. Build backlinks and distribution

Prioritize sources that can also create leads:

1. Product Hunt / BetaList / startup directories.
2. G2 / Capterra / Trustpilot when real customers exist.
3. Alternative and comparison pages.
4. AI tool directories when category-fit.
5. Partner and co-marketing pages.

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

## Related skills

- `08-competitor-research-global`: SEO competitors and content gaps.
- `12-landing-page-brief-global`: BOFU landing pages.
- `13-data-analysis-global`: GA4/Search Console/export analysis.
- `15-social-listening-global`: real questions from communities.

## Quality checklist

- Do not recommend content before clarifying search intent.
- Every page has a CTA and funnel role.
- Schema matches visible page content.
- Directory submission points to a useful destination page.
- AI SEO claims stay honest: optimize for citations, do not promise rankings.
- Plan includes baseline and KPI.
