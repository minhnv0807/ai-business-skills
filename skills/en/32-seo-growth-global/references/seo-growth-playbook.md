# SEO Growth Playbook

> Reference for skill `32-seo-growth-global`. Read when you need the 90-day roadmap, a pSEO go/no-go, comparison and alternative page structures, or minimum viable site architecture.

## Default 90-day sprint

| Phase | Work | Output |
|-------|------|--------|
| Days 1-14 | Technical audit + Search Console + top pages | Prioritized fix list |
| Days 15-30 | Keyword map + page roadmap | 10-30 page backlog |
| Days 31-60 | Publish BOFU/MOFU + schema | Pages with CTAs |
| Days 61-75 | Directory/backlink batch | Submission tracker |
| Days 76-90 | Refresh, internal link, measure | Report + next sprint |

## When pSEO makes sense

Use it when you have:

- Real data: locations, integrations, templates, use cases, products, categories.
- Repeating search patterns: "[tool] alternative", "[service] in [city]", "[template] for [role]".
- A page template that creates unique value for each variant.

Avoid it when:

- You only have keyword volume, not useful data.
- Pages are nearly identical.
- You cannot maintain pages and internal links.

## AI SEO content pattern

Good pages include:

- TL;DR at top.
- Short definitions.
- Comparison tables.
- Step-by-step instructions.
- FAQ.
- Sources/evidence.
- Last updated.
- Author/entity.

Block-level templates for each of these: see section 5 of `SKILL.md`.

---

## Comparison and alternative pages

For most global B2B and SaaS businesses these are the highest-converting pages on the site: the reader is already in the decision, comparing named options, with a credit card in reach. They also happen to be the pages AI engines retrieve most often for evaluation queries.

They are not universal. Read "When not to build them" before scoping.

### Inputs

Competitor research happens in `08-competitor-research-global`, not here. This skill consumes that output and turns it into pages. For each competitor you need, before writing a line:

| Field | Why it is needed |
|-------|------------------|
| Positioning and target segment | Determines the "best for" verdict |
| Full pricing, every tier | The single most-searched comparison dimension |
| Genuine strengths | Credibility; a page with no competitor strengths is not trusted |
| Genuine weaknesses | Only those you can substantiate from public evidence |
| Who they are the right choice for | This is what makes the page rank and get cited |
| Recurring complaints from public reviews | Source the themes from G2/Capterra/TrustRadius/Reddit, do not invent them |
| Migration notes | What transfers, what has to be rebuilt |
| Date each fact was verified | Pricing goes stale in weeks |

Keep this in one structured file per competitor, not scattered across page drafts. Every comparison page reads from that single source, so a pricing change is one edit, not twelve.

### Format 1 — [Competitor] alternative (singular)

- **URL:** `/alternatives/[competitor]` or `/[competitor]-alternative`
- **Target terms:** "[competitor] alternative", "alternative to [competitor]", "switch from [competitor]"
- **Search intent:** already a customer of that competitor, has a specific unmet need, actively looking to move
- **Outline:**
  1. Why people leave [competitor] — name the real pain, do not sneer
  2. Summary: how you work as the alternative (3-4 sentences, extractable as a standalone answer)
  3. Detailed comparison: features, service, pricing
  4. Who should switch — and who should stay
  5. Migration path: what transfers, how long it takes, who helps
  6. Proof from customers who switched
  7. CTA
- **Highest commercial intent of the four formats.** Give it the best CTA, the strongest proof, and a real migration offer.

### Format 2 — [Competitor] alternatives (plural)

- **URL:** `/alternatives/[competitor]-alternatives`
- **Target terms:** "[competitor] alternatives", "best [competitor] alternatives", "tools like [competitor]"
- **Search intent:** researching options, earlier in the journey than Format 1
- **Outline:**
  1. Why people look for alternatives — the common triggers
  2. What to evaluate on — the criteria framework, which is where the real value sits
  3. The list: **4-7 real options**, including ones you lose to
  4. Summary comparison table
  5. Detailed breakdown of each option
  6. Recommendation by use case
  7. CTA
- **Expectation warning:** read section 4.2 of `SKILL.md` first. If you are not the consensus category leader, this page reliably earns *citations* while the *recommendation* in the AI answer often goes to the competitors you listed. Still worth publishing for search intent and category framing — just fund it with the right expectation, and do not build these at scale as your primary AEO play.

### Format 3 — You vs [competitor]

- **URL:** `/compare/[you]-vs-[competitor]` or `/vs/[competitor]`
- **Target terms:** "[you] vs [competitor]", "[competitor] vs [you]"
- **Search intent:** you are already on the shortlist; this is the head-to-head
- **Outline:**
  1. TL;DR: the core difference in 2-3 sentences
  2. At-a-glance comparison table
  3. Category-by-category detail: features, pricing, support, ease of use, integrations, security/compliance
  4. Who [you] is best for
  5. Who [competitor] is best for — **written honestly**
  6. What customers who switched say
  7. Migration support
  8. CTA
- **Highest-converting of the four.** It also does double duty as sales enablement: the same page answers the objection a rep hears on the call.
- Prospects will land here from your competitor's own comparison page. Assume they read theirs first and write accordingly — do not contradict a fact they can verify in thirty seconds.

### Format 4 — [Competitor A] vs [Competitor B]

- **URL:** `/compare/[a]-vs-[b]`
- **Search intent:** comparing two other vendors, has not considered you
- **Outline:**
  1. Overview of both
  2. Category-by-category comparison
  3. Who each is best for
  4. The third option — introduce yourself **here**, not in the intro
  5. Three-way comparison table
  6. CTA
- **Why it works:** captures demand from queries with no brand awareness of you and positions you as the party that understands the category. The restraint is the mechanism — a page that pitches in paragraph one loses the reader and the citation.
- Scales well as a pSEO template *if* each pairing has genuinely different content. Generating every A-vs-B permutation from a template with swapped names produces thin pages that neither rank nor get cited.

### Honesty rules — which are also the ranking mechanism

- List **real** competitors, including stronger ones.
- State **who fits whom**, including cases where the reader should choose the competitor.
- Name a real weakness of your own product somewhere specific. A page with no weaknesses is a page nobody believes.
- Pricing must be correct as of publication, with a verification date shown. Wrong pricing is the fastest way to lose trust and invite a complaint.
- No disparagement and no claims you cannot substantiate. Beyond comparative-advertising legal exposure in the US and EU, unbalanced pages lose the neutral-source status that earns AI citations.
- Re-verify every page quarterly. A comparison page is a maintained asset, not a launch deliverable.

The counterintuitive part: **the more honest the page, the better it performs.** Readers stay longer, sales teams can send it without embarrassment, and AI engines preferentially cite sources that describe a category in balanced terms.

### When not to build them

| Situation | Why | Do this instead |
|-----------|-----|-----------------|
| Marketplace-only seller (Amazon, Etsy, TikTok Shop) with no owned site | Nowhere to host the page or receive the links | Optimize listings and in-platform content |
| Local service business (clinic, restaurant, salon, trades) | Buyers resolve "who is good near me" through Maps reviews and local word of mouth, not comparison pages | Local SEO (section 2 of `SKILL.md`), reviews, community presence |
| Category where nobody compares by brand name | No search volume for `[A] vs [B]` | Problem-led content instead of brand-led |
| Competitors nobody has heard of | Nobody searches their names | Target generic category queries first |
| Pre-product-market-fit | The "who it's for" answer keeps changing, so the page is rewritten monthly | Wait until positioning is stable |

**Strongest fit:** B2B SaaS and developer tools, professional services with named incumbents, and any category where review sites already publish head-to-head comparisons — that is proof the comparison intent exists.

---

## Minimum viable site architecture

Only as much structure as SEO and content need. Mega menus, footer taxonomies and four-level e-commerce hierarchies are the web team's information-architecture work, not marketing's.

### URL rules

| Rule | Right | Wrong |
|------|-------|-------|
| Lowercase throughout | `/features/analytics` | `/Features/Analytics` |
| Hyphens, not underscores | `/blog/seo-guide` | `/blog/seo_guide` |
| No dates in blog URLs | `/blog/seo-guide` | `/blog/2026/03/seo-guide` |
| No IDs | `/products/linen-shirt` | `/products/12345` |
| No query params for content | `/blog/seo-guide` | `/blog?id=123` |
| Short but descriptive | `/blog/landing-page-conversions` | `/blog/how-to-improve-landing-page-conversion-rates-in-90-days` |
| One consistent parent | `/features/...` for all features | Mixing `/features/...` and `/product/...` |
| Consistent trailing slash | Pick one, enforce site-wide | Both variants resolving |

For non-English markets, transliterate slugs to ASCII. Accented or non-Latin URLs become long percent-encoded strings that break when pasted into chat apps and get truncated in link previews.

### Changing a URL means a 301

Every old URL needs a 301 to its new equivalent. Skip it and you lose the backlink equity and turn every previously shared link into a 404.

- 301 straight to the final destination; never leave an A → B → C chain.
- Do not bulk-redirect retired pages to the homepage. Google treats that as a soft 404 and drops them.
- Watch Search Console > Pages for 2-4 weeks after any migration to catch pages falling out of the index.

### No orphan pages

Every page needs at least one internal link pointing at it. A page that exists only in the sitemap wastes crawl budget and rarely ranks.

Quick audit: crawl the site with Screaming Frog and diff the crawled URL list against the sitemap URL list. The difference is your orphan set.

### Descriptive anchor text

- Right: "see our [analytics pricing tiers]" — the reader knows where they land.
- Wrong: "click here", "read more", "this page".
- Anchor text is one of the signals AI engines use to understand what the destination page is about, which makes it worth more than it used to be.

### Hub and spoke

One hub page covering the topic broadly, several spokes going deep. Spokes link back to the hub, the hub links to every spoke, spokes cross-link where genuinely relevant.

```
Hub:  /blog/seo-guide                    (comprehensive overview)
├── Spoke: /blog/keyword-research
├── Spoke: /blog/technical-seo
└── Spoke: /blog/link-building
```

**Shortcut:** this is the same shape as the content pillar model in `01-content-calendar-global` and `36-content-brief-global`. If pillars and clusters already exist there, site architecture is just mapping them to URLs — one pillar becomes one hub, each cluster article becomes a spoke. Do not redo the topic modelling.

---

## Directory tracker columns

Use CSV or a sheet:

`directory, tier, url, category, asset_needed, submitted_date, status, live_url, backlink_type, lead_source_tag, notes`

## Measurement

| Goal | Metric |
|------|--------|
| Indexing | indexed pages, crawl errors |
| Traffic | organic sessions, clicks, impressions |
| Quality | CTR, engaged sessions, conversion rate |
| Local | GBP profile views, direction requests, calls, new reviews per month |
| AI visibility | ladder rung reached (retrieved / cited / mentioned / recommended) + sentiment |
| Authority | referring domains, branded search, reviews |

AI-driven traffic rarely shows up as AI-driven traffic. Users read the answer, then search the brand name or type the domain directly, so the visit lands in branded search or direct. Read it from three sources together: prompt tracking across the major engines, a "how did you hear about us" field on forms, and branded search volume moving without a campaign behind it.
