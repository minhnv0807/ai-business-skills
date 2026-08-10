---
name: 32-seo-growth-global
description: "Use when the user wants SEO growth, AI SEO, GEO/AEO, Google visibility, ChatGPT or Perplexity citations, schema, structured data, llms.txt, programmatic SEO, local SEO, comparison and alternative pages, directory submissions, Product Hunt, G2/Capterra, backlinks, or a site audit. Trigger on 'SEO audit', 'AI search visibility', 'AI citations', 'schema markup', 'pSEO', 'alternative page', 'submit to directories', or 'backlink plan'. Not for first-time Google Business Profile setup, see `11-channel-setup-global`; not for writing the articles themselves, see `36-content-brief-global`."
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
  - "comparison page"
  - "directory submissions"
  - "backlinks"
related:
  - product-marketing-context-global
  - 08-competitor-research-global
  - 11-channel-setup-global
  - 12-landing-page-brief-global
  - 13-data-analysis-global
  - 15-social-listening-global
---

# SEO Growth (Global)

This skill covers 6 practical SEO layers: foundation audit, local SEO, search-intent content, AI search visibility, schema/machine-readable files, and backlink/distribution. The goal is qualified demand, not publishing volume.

## Information gathering

Read `.agents/product-marketing-context-global.md` if available. Ask up to 4 questions: website URL, target market, main product/service, and 90-day SEO goal. Use Search Console, GA4, Ahrefs, Semrush or similar exports when available.

Two companion references:
- `references/seo-growth-playbook.md` — 90-day roadmap, pSEO, comparison and alternative pages, site architecture.
- `references/schema-json-ld.md` — 12 copy-paste JSON-LD blocks with current rich-result status.

## Pick the mode

| User says | Mode |
|-----------|------|
| "Traffic dropped", "site is not ranking" | SEO audit |
| "We don't show up on Maps / in the local pack" | Local SEO |
| "Get cited by ChatGPT/Perplexity" | AI SEO / GEO |
| "Add schema", "rich results" | Schema |
| "Create many SEO pages" | Programmatic SEO |
| "Build alternative / vs pages" | Comparison pages |
| "Submit to Product Hunt/G2/directories" | Directory + backlink |

## Workflow

### 1. Audit the foundation

Run in order — a failure at a lower layer nullifies everything above it.

#### 1.1 Crawl and index

| Check | Passing threshold | Tool |
|-------|------------------|------|
| robots.txt does not block money pages | 0 revenue pages disallowed | Search Console > robots.txt report |
| XML sitemap exists, declared in robots.txt | Present, auto-updating | Search Console > Sitemaps |
| Indexed pages / pages you want indexed | >90% | Search Console > Pages |
| Redirect chains | 1 hop max, no loops | Screaming Frog, Ahrefs Site Audit |
| Soft 404s | 0 | Search Console > Pages > "Soft 404" |
| Canonicals point at the right page | 100% self-canonical or pointing at the true original | Any crawler |
| Leftover `noindex` from staging | 0 pages | Grep `noindex` site-wide |

Two issues account for most "the site just won't rank" cases: **site-wide canonicals pointing at the homepage** (misconfigured theme or plugin) and **a `noindex` left over from staging** after go-live.

#### 1.2 On-page

| Element | Threshold | Note |
|---------|-----------|------|
| Title | 50-60 characters | Longer gets truncated; primary term near the front |
| Meta description | 150-160 characters | Not a ranking factor, but drives CTR |
| H1 | Exactly one per page | Same topic as the title, not a copy of it |
| H2/H3 | Phrased the way people type queries | This is the scaffolding AI engines extract passages from |
| Images | Descriptive `alt`, meaningful filenames | WebP; no 4MB originals |
| Internal links | Every page has at least one inbound link | See site architecture in the playbook |

#### 1.3 Core Web Vitals

| Metric | Good | Needs improvement | Poor |
|--------|------|-------------------|------|
| LCP (Largest Contentful Paint) | < 2.5s | 2.5-4.0s | > 4.0s |
| INP (Interaction to Next Paint) | < 200ms | 200-500ms | > 500ms |
| CLS (Cumulative Layout Shift) | < 0.1 | 0.1-0.25 | > 0.25 |

Read field data first (Search Console > Core Web Vitals, CrUX), lab data second (PageSpeed Insights). A 100 desktop score with a 5s mobile field LCP is common — mobile is what matters.

Usual LCP offenders: uncompressed hero images, auto-playing sliders above the fold, fonts loaded from multiple origins, and synchronous chat or popup scripts.

#### 1.4 Cannibalization

When two of your own pages compete for the same query, both underperform. How to detect it:

1. Search Console > Performance > filter by query > check the Pages column. If one query rotates between 2+ pages, that is cannibalization.
2. Run `site:domain.com [keyword]` — several near-identical pages means consolidate.

Fix in this order: merge into the strongest page and 301 the rest → or split the search intent cleanly across pages → canonical only as a last resort.

#### 1.5 Authority and conversion

- Authority: backlinks, brand mentions, real reviews, author pages with verifiable credentials.
- Conversion: every page has a clear CTA and a contact path that matches the market.

### 2. Local SEO

Applies to any business with a physical location or a defined service area: clinics, restaurants, gyms, studios, home services, multi-location retail.

> First-time Google Business Profile setup: see `11-channel-setup-global`. This section covers **optimization** once the profile exists.

#### 2.1 NAP consistency

NAP = Name, Address, Phone. These must be **byte-identical** everywhere:

| Where it appears | Check |
|------------------|-------|
| Google Business Profile | The source of truth — everything else copies from here |
| Website footer | Character for character |
| Contact / location pages | Character for character |
| `LocalBusiness` schema | Character for character |
| Social profiles | Character for character |
| Citations and directories (Apple Business Connect, Bing Places, Yelp, industry directories) | Character for character |

"Suite 200" vs "Ste. 200" vs "#200" counts as three different addresses to an aggregator. Pick one string and enforce it.

#### 2.2 Google Business Profile optimization

| Item | Target | Cadence |
|------|--------|---------|
| Primary category | The most specific accurate category, never a generic one | Review quarterly |
| Secondary categories | 2-5 genuinely relevant | Quarterly |
| Photos | Exterior, interior, team, product | 3-5 per month |
| Posts | Offers, events, updates | 2-4 per month |
| Q&A | Seed and answer the questions customers actually ask | Monthly review |
| Hours | Update holiday hours **two weeks ahead** | Per holiday calendar |
| Services / menu | Complete, with prices | Quarterly |

#### 2.3 Reviews

- Aim for a steady monthly flow, not bursts. Twenty reviews in one day is an anomaly signal.
- Ask at the moment of satisfaction, right after the service is delivered, with a short direct link.
- Respond to 100% of reviews including five-star ones. Reply to negatives within 24 hours in a resolution tone, not a defensive one.
- **Never buy reviews.** The downside (profile suspension) outweighs the upside, and AI engines increasingly read review text, not just the score.

#### 2.4 Location pages on your site

One page per location, never all of them crammed onto the contact page:

- URL: `/locations/[city]` or `/[service]-[city]`.
- Unique content per page: address plus embedded map, hours, location-specific phone number, real photos of that location, parking and access notes, the team at that site.
- A dedicated `LocalBusiness` block per location (block 9 in `references/schema-json-ld.md`).
- Do not clone one page and swap the city name. Those are thin pages and they do not rank.

### 3. Map keywords by funnel

| Funnel | Keyword type | Page type |
|--------|--------------|-----------|
| TOFU | problem, how-to, checklist | blog, guide, free tool |
| MOFU | comparison, template, use case, "how much does X cost" | comparison, use-case page, pricing |
| BOFU | alternatives, review, demo, pricing | landing page, pricing, case study |

Local businesses add a geographic layer: `[service] [city]`, `[service] near me`, `[service] [city] cost`.

### 4. Optimize for AI search (GEO/AEO)

#### 4.1 The four-rung visibility ladder

Drop the phrase "rank on ChatGPT" — nobody controls that. Report on four rungs instead, because each is earned differently:

| Rung | Meaning | What governs it | How you see it |
|------|---------|-----------------|----------------|
| 1. Retrieved | The model read your content while composing an answer | Crawlability, parseable structure, query relevance | Server logs; largely invisible |
| 2. Cited | Your page appears as a source in the answer | Content structure, statistics, clarity, freshness | Prompt-tracking tools, AI Overview source lists |
| 3. Mentioned | Your brand is named in the answer text | Entity recognition plus how the web describes you | Prompt-tracking tools |
| 4. Recommended | Your product is on the shortlist the buyer considers | **Aggregate web consensus** — reviews, communities, analysts, press, video | The framing around the mention, not just its presence |

Rungs 1-3 are what on-site optimization earns you. **Rung 4 mostly is not on your site at all.** Reporting a single "AI visibility" number hides that gap. A rising citation count with a flat recommendation rate is a specific, diagnosable problem: the rest of the web does not corroborate you yet.

There is also a negative rung: **recommended against**. On requirements-heavy prompts, models increasingly name products a buyer should avoid, with sources. So track the **sentiment** around each mention (favorable / neutral / hedged / negative), not just the count.

#### 4.2 The uncomfortable truth about "best [category]" listicles

Publishing your own "Top 10 [category] tools" guide and ranking yourself first is the most widely recommended AEO tactic. It does not work the way it is sold.

The model treats your guide as a source **about the category**. It extracts the competitor names, evaluation criteria and pricing you compiled — then makes its recommendation from web-wide consensus, where established players dominate. The common outcome: your page earns the citation while the recommendation goes to a competitor. You did the research that helped the model describe them.

It splits by market position:
- **Category leaders** get both outcomes. Their guides are cited *and* their brand is recommended, because analysts, review sites and forums already validate them. For a leader, publishing the definitive buyer's guide is high leverage: you define the criteria the whole category is judged on.
- **Challengers** should still publish genuinely useful guides, but set the expectation correctly — citation and category framing, not near-term recommendation — and shift budget toward the offsite signals that actually govern rung 4.

The test before funding another self-ranked listicle: *if a model ignored everything on our domain, would the rest of the web still put us on the shortlist?* If not, that gap is the priority.

#### 4.3 robots.txt for AI crawlers

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

| Bot | Operator | Role |
|-----|----------|------|
| GPTBot | OpenAI | Broad crawling; blocking reduces how well the model knows you |
| OAI-SearchBot | OpenAI | Powers search-time retrieval — blocking it all but eliminates citations |
| ChatGPT-User | OpenAI | Fetches a page when a user asks ChatGPT to open a link |
| PerplexityBot | Perplexity | Perplexity always cites sources, making it the most measurable channel |
| ClaudeBot / anthropic-ai | Anthropic | `anthropic-ai` is the legacy token, `ClaudeBot` the current one |
| Google-Extended | Google | **Not a crawler.** See the note below |
| Bingbot | Microsoft | Feeds both Bing and Copilot |
| CCBot | Common Crawl | Training-only corpus; produces no citations, safe to block if you prefer |

**What most guides get wrong:** `Google-Extended` does not control whether you appear in AI Overviews. AI Overviews are built on the regular Search index. Blocking `Google-Extended` only affects use of your content in Google's other generative products. To control snippet usage in AI Overviews you use `nosnippet`, `max-snippet` or `data-nosnippet` — which also costs you ordinary snippets.

**Three additional checks:**
1. **Silent CDN/WAF blocking.** Cloudflare and several other providers ship an "AI crawlers" toggle that is on by default. Your robots.txt can say Allow while the request never reaches origin. Check server logs or the CDN dashboard, not just robots.txt.
2. **Platform limits.** Hosted site builders often restrict robots.txt editing. Confirm what is actually editable before promising it in a plan.
3. **`llms.txt`.** Served at `/llms.txt`, listing your most important pages in markdown with short descriptions. It is a community-proposed convention with no formal commitment from any major platform. Cheap enough to ship, but do not oversell it or bill it as a major line item.

#### 4.4 AI visibility audit table

Test 10-20 of your highest-value queries and log the results:

| Question | Platform (ChatGPT / Perplexity / AI Overview) | Are we cited? | Which competitor is cited instead | Action |
|----------|----------------------------------------------|---------------|-----------------------------------|--------|
| [query 1] | | Yes / No | | |
| [query 2] | | Yes / No | | |

Query types to cover:
- "What is [category]"
- "Best [category] for [use case / segment]"
- "Is [your brand] any good"
- "[your brand] vs [competitor]"
- "How much does [category] cost"
- "[service] in [city]" (local businesses)

When a competitor is cited and you are not, check five things: is their content more extractable, do they cite statistics and sources, is it more recently updated, do they have schema you lack, and are they referenced by third parties (press, communities, review sites).

### 5. Content blocks AI can extract

AI systems extract **passages**, not pages. Every block below must stand alone without the paragraph before it. Weave these into normal content — do not write a separate "AI version" of the page, which risks scaled-content policy problems.

| Block | Query it serves | Structure |
|-------|-----------------|-----------|
| Definition | "what is X" | Sentence 1 defines it. Sentences 2-3 expand. Final sentence says why it matters |
| Step-by-step | "how to X" | One intro line plus a numbered list, one concrete action per step |
| Comparison table | "X vs Y" | Criteria column, a "Best for" row, and a 1-2 sentence bottom line |
| Pros and cons | "is X worth it" | Pros, cons, then a conditional verdict |
| FAQ | related questions | Questions phrased as users ask them; 50-100 word answers |
| Listicle | "best X" | Read section 4.2 before building these |
| Statistic citation | evidence-seeking queries | Specific number, source, year, link |
| Self-contained answer | all types | 40-80 words, no "it", "this", or "as mentioned above" |
| Pricing | "how much does X cost" | Real range, the variables that move it, one worked example |
| Who it is and is not for | evaluation queries | Explicitly name who should **not** buy — this is the differentiator |
| Freshness and authorship | all types | Updated date plus a real author with stated expertise |

Four formatting rules: lead each section with the answer instead of burying it; write H2/H3 the way users phrase queries; use tables over prose for comparisons; use numbered lists over paragraphs for procedures.

### 6. Schema and machine-readable files

| Page | Schema |
|------|--------|
| Company | Organization, WebSite |
| Blog | Article / BlogPosting |
| Product | Product + Offer (+ AggregateRating when real reviews are on the page) |
| SaaS / app | SoftwareApplication |
| FAQ | FAQPage — see caveat |
| Ordered procedure | HowTo — see caveat |
| Breadcrumb | BreadcrumbList |
| Location page | LocalBusiness (use the specific subtype: Dentist, Restaurant, ProfessionalService...) |
| Event, webinar | Event |
| Course | Course |

**Two things to state plainly to the client:**
- **FAQPage** no longer produces a rich result on Google for most sites (limited to authoritative government and health sites since Aug 2023). Keep shipping it because AI engines parse it — but do not sell it as extra SERP real estate.
- **HowTo** rich results were removed entirely by Google in Sept 2023. Low priority.

Full code for 12 JSON-LD blocks, testing tools and common failure modes: `references/schema-json-ld.md`.

**Never conclude "this site has no schema" from a single fetch.** Simple fetch tools do not execute JavaScript, and a large share of sites inject JSON-LD through GTM or client-side rendering. Verify with the Rich Results Test or DevTools before it goes into an audit — including when auditing competitors.

### 7. Backlinks and distribution

Prioritize sources that can also produce leads, not raw link counts:

1. Product Hunt / BetaList / startup directories.
2. G2 / Capterra / TrustRadius / Trustpilot when real customers exist.
3. Alternative and comparison pages (see the playbook).
4. AI tool directories when the category fits.
5. Partner, co-marketing and industry association pages.
6. Earned media and practitioner communities — these are what move rung 4 of the visibility ladder.

Avoid: bulk link packages, PBNs, comment spam. Beyond the penalty risk, they generate none of the web consensus AI engines actually weigh.

## Output template

```markdown
# SEO Growth Plan — [Brand]

## 1. Diagnosis
| Area | Status | Evidence | Priority |

## 2. Technical baseline
| Metric | Current | Threshold | Fix | Owner |

## 3. 90-day SEO strategy
- Market:
- ICP:
- Main search intent:
- Primary KPI:

## 4. Page roadmap
| Page | Funnel | Keyword intent | CTA | Owner |

## 5. Local SEO (if applicable)
| Item | Current | Action | Cadence |

## 6. AI SEO / GEO actions
| Question | Platform | Cited? | Competitor cited | Action |

Current ladder rung: [retrieved / cited / mentioned / recommended]
Mention sentiment: [favorable / neutral / hedged / negative]

## 7. Schema + technical checklist
| Page | Schema/file | Action | Validation |

## 8. Backlink/distribution plan
| Destination | Asset needed | Submission copy | Deadline |

## 9. Measurement
| Metric | Baseline | Target | Tool |
```

## Related skills

- `08-competitor-research-global`: SEO competitors, content gaps, and the input data for comparison pages.
- `11-channel-setup-global`: first-time Google Business Profile setup.
- `12-landing-page-brief-global`: BOFU landing pages and comparison pages.
- `13-data-analysis-global`: GA4/Search Console/export analysis.
- `15-social-listening-global`: real community questions for FAQ and TOFU content.
- `36-content-brief-global`: turn the page roadmap into writing briefs.

## Quality checklist

- Do not recommend content before clarifying search intent.
- Every page has a CTA and a funnel role.
- Technical findings use specific numbers, never "improve page speed".
- Local SEO: NAP reconciled against Google Business Profile before proposing edits.
- Schema matches visible page content; no `aggregateRating` on pages without reviews.
- Any schema conclusion (yours or a competitor's) verified with a JavaScript-rendering tool.
- AI SEO claims stay honest: report the four-rung ladder with sentiment, never promise rankings.
- If a self-ranked listicle is recommended, expectations are stated by market position.
- Directory submission points to a useful destination page.
- Plan includes baseline and KPI.
