---
name: 51-audience-research-global
description: "Use when paid ad AUDIENCES must be researched and defined before launch — target profile, interest and behavior mapping per platform, audience sizing, cold, warm, and hot tiering, lookalike seeds, exclusions, and ranked targeting hypotheses to test. Trigger on 'audience research', 'who should I target', 'interest targeting', 'Meta audience for this product', 'TikTok targeting ideas', 'my targeting is too broad'. Also use when launch is imminent and the ad set targeting is still empty. Not for — persona and JTBD depth for content, see `09-customer-insight-global`; warm retargeting tiers, see `56-retargeting-plan-global`; where the budget goes, see `54-media-plan-global`; the campaign hierarchy, see `52-account-structure-global`."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "audience research"
  - "target audience"
  - "interest targeting"
  - "audience for campaign"
  - "who should I target"
  - "Meta audience"
  - "TikTok audience"
  - "lookalike seed"
output: "File .md — audience profile, ready-to-paste targeting settings per platform, cold/warm/hot tiers, lookalike seed brief, and a ranked list of targeting hypotheses to test"
related:
  - product-marketing-context-global
  - 09-customer-insight-global
  - 08-competitor-research-global
  - 10-reverse-kpi-global
  - 52-account-structure-global
  - 54-media-plan-global
  - 56-retargeting-plan-global
---

# Audience Research (Global)

Wrong targeting burns budget no matter how good the copy or creative is. This is the first step of the performance chain: 51 -> `10-reverse-kpi-global` -> `54-media-plan-global` -> `53-tracking-setup-global` -> `52-account-structure-global`. If there is no customer insight yet, run `09-customer-insight-global` first.

## Information gathering

Read `.agents/product-marketing-context-global.md` and any output from `09-customer-insight-global`. If information is missing, ask up to 4 questions:

1. **What product or service will run ads?** Price point and market tier (mass / mid / premium)?
2. **What existing customer data is available?** Age, gender, geography, purchase behavior, past customer list, CRM export, pixel data.
3. **Which platforms and which markets?** Meta / Google / TikTok / YouTube / LinkedIn / Pinterest — and which countries. Primary objective: lead gen / conversion / traffic / awareness?
4. **Planned budget and target CPA/CPL?** If not calculated yet, run `10-reverse-kpi-global`.

## Principles

1. **Geography is the biggest cost lever, before interests.** Per `references/benchmarks-global.md`, Tier 1 markets (US, Canada, Australia, Western EU) run 6-7x the CPM of Tier 2 (SEA, LATAM). US Meta CPM sits at $15-25 vs $2-6 in Brazil/LATAM. Decide the market before debating interest stacks.
2. **Research before copy and before campaign build.** Never the reverse.
3. **Broad first, narrow only with evidence.** Modern delivery algorithms optimize well on a wide pool plus strong creative. Narrow only when segment data proves it.
4. **One clear interest theme per ad set.** Stacking many unrelated interests makes it impossible to tell which one worked.
5. **Write pain points in the customer's own words**, not marketer language.
6. **Size for spend, not for a magic number.** A cold ad set must be large enough to spend its daily budget for at least 7 days without frequency passing 2.5. A tight interest stack saturates fast in a Tier 1 market where CPM is $13-20.
7. **This is a living document.** Update it after 3-5 days of live data by comparing CPA per segment.

## Workflow

### 1. Core audience profile

Build from real data (CRM, analytics, order history, platform audience insights) plus `09-customer-insight-global`:

| Field | Detail |
|-------|--------|
| Age | [primary band + secondary band] |
| Gender | [actual split from data, not assumption] |
| Markets | [countries/regions you can actually ship to or serve] |
| Market tier | Tier 1 (US/CA/AU/W.EU) / Tier 2 (SEA/LATAM) / mixed |
| Income / budget band | [must match the price point] |
| Job or role | [primary segment; required for B2B] |
| Primary device | Mobile / Desktop / Both |
| Language | [ad language per market] |

For B2B, add company size, industry, seniority, and buying committee role.

### 2. Psychographics and behavior

- **Top pain points:** 3-5, phrased the way customers say them.
- **Buying motivation:** what they want to gain, what they want to avoid.
- **Purchase context:** card-first checkout, subscription comfort, review dependence, return-policy sensitivity.
- **Online behavior:** platforms used, peak hours per market timezone, content formats they engage with.

### 3. Targeting settings per platform

Only build blocks for platforms that will actually run. Each block should be paste-ready into the ads manager.

- **Meta Ads:** age, gender, locations (list countries explicitly, exclude where you cannot fulfill); detailed targeting with 10-15 related interests grouped into 2-3 themes for separate testing; behaviors; exclusions (past purchasers, submitted leads); a broad-vs-narrow recommendation. Note whether Advantage+ audience will be used as a control.
- **Google Ads:** in-market audiences; custom segments built from 10-15 high-intent search terms; affinity; Customer Match if a consented list exists. Search intent beats demographic targeting here.
- **TikTok Ads:** age, gender, interests, behaviors (recent video interactions), device OS, creator-adjacent targeting.
- **YouTube Ads:** custom segments from search terms, placements (specific channels/videos), topics, life events.
- **LinkedIn Ads (B2B only):** job title, function, seniority, company size, industry, member skills, matched company lists. Expect CPM $30-100+ per `references/benchmarks-global.md` — validate the economics with `10-reverse-kpi-global` before committing.
- **Pinterest Ads:** interests, keywords, actalike audiences. Strongest for home, fashion, DIY, and female 25-54.

### 4. Cold / warm / hot tiers

| Tier | Definition | Signal | Source |
|------|-----------|--------|--------|
| Hot | Landing page visit, add to cart, checkout started, form opened, open sales conversation | Pixel/CAPI events, CRM | Meta, Google, TikTok, CRM |
| Warm | Video watched >50%, page or post engagement, link click, follow, email opened | Engagement custom audiences, ESP segments | Meta, TikTok, email platform |
| Cold | Does not know the brand | Interest, behavior, broad, lookalike, search intent | All platforms |

Rule: cold and warm/hot must live in separate campaigns with different messages (see `56-retargeting-plan-global`). Always exclude warm and hot from cold campaigns so the data stays clean.

### 5. Lookalike and seed audiences

| Seed | Minimum seed size | Lookalike % | Platform | Purpose |
|------|------------------:|-------------|----------|---------|
| Past purchasers | >= 100 | 1-3% | Meta | Find people like the best customers |
| Qualified leads | >= 500 | 1-5% | Meta | Scale lead generation |
| Video viewers 75% | >= 1000 | Broad | TikTok | Scale awareness |
| Email / CRM list | >= 300 | 1-5% | Meta, Google Customer Match | Extend from first-party data |

Seed quality beats seed size: purchasers outperform leads, leads outperform viewers. Do not build a lookalike from a seed below the minimum. Any uploaded customer list must have marketing consent on record — see the consent section in `53-tracking-setup-global`.

### 6. Targeting hypotheses to test

One line each, in the form "If we target [X], then [metric] will [Y], because [Z]". Hand these to `19-ab-test-setup-global` and `52-account-structure-global`.

| # | Hypothesis | Test variable | Metric | Priority |
|---|-----------|---------------|--------|----------|
| 1 | Broad plus strong creative is cheaper than a manual interest stack | Broad vs interest | CPA | High |
| 2 | [Interest theme A] sits closer to the pain than [theme B] | Interest A vs B | CPA, CTR | High |
| 3 | 1% purchaser lookalike converts better than 3% | Lookalike % | CPA, close rate | Medium |
| 4 | [Market X] delivers acceptable CPA despite higher CPM | Geo split | CPA, ROAS | Medium |
| 5 | [Age segment] converts better | Age split | CPA | Low |

Maximum 3-5 test ad sets at once. More than that splits budget too thin to reach a conclusion.

## Output structure

File name: `audience-research-[product]-[YYYYMMDD].md`

```markdown
# Audience Research — [Product]
Date: [YYYY-MM-DD] · Platforms: [list] · Markets: [countries] · Objective: [Lead/Conversion]

## 1. Core audience profile
| Age | Gender | Markets | Tier | Income band | Role | Device | Language |

## 2. Psychographics and behavior
- Pain points: [3-5, customer wording]
- Motivation: [gain / avoid]
- Purchase context: [payment, reviews, returns, subscription]
- Online behavior: [platforms, peak hours, preferred formats]

## 3. Targeting settings per platform
### Meta: [age/gender/geo/interest themes/behaviors/exclusions/Advantage+ control]
### Google: [...] · TikTok: [...] · LinkedIn: [...] · Pinterest: [...]

## 4. Audience tiers
| Tier | Audience | Signal | Campaign that uses it |

## 5. Lookalike and seed audiences
| Seed | Size | Lookalike % | Platform | Purpose | Consent status |

## 6. Targeting hypotheses (hand to A/B test)
| # | Hypothesis | Variable | Metric | Priority |

## 7. Sizing and overlap notes
- Estimated reach per ad set: [number]
- Days of spend the pool supports at planned budget: [number]
- Overlaps to avoid: [audiences likely to collide]
- Regional CPM expectation per `references/benchmarks-global.md`: [range]
```

## After the first live data

- After 3-5 days: compare CPA and lead quality per audience segment. Record winners and losers in the profile.
- Winning audiences expand into similar lookalike or broad pools (see `55-scaling-ads-global`). Losing audiences get a written reason so nobody retests the same thing.
- Monthly, reconcile the profile against CRM data: which source closes best. Cheap leads are not always good leads.

## Related skills

- `09-customer-insight-global`: run first — supplies insight, pain, and customer language.
- `08-competitor-research-global`: see who competitors target and with which angles (ad libraries).
- `10-reverse-kpi-global`: max CPA and budget before planning.
- `54-media-plan-global`: turns this audience map into channel and budget allocation.
- `52-account-structure-global`: turns targeting settings into ad set structure.
- `56-retargeting-plan-global`: detailed warm/hot tiering and messaging.

## Quality checklist

- [ ] Profile built from real data (CRM, analytics, surveys), not guesses
- [ ] Market tier stated, with the CPM expectation from `references/benchmarks-global.md`
- [ ] Pain points written in customer language, not marketer language
- [ ] Targeting settings complete and paste-ready for every platform in the plan
- [ ] Three tiers defined (cold/warm/hot) with cross-exclusion rules
- [ ] Lookalike seeds meet minimum size and have documented consent
- [ ] 3-5 targeting hypotheses, each with a test variable and a metric
- [ ] Cold audience large enough to sustain 7 days of planned spend below frequency 2.5
- [ ] Plan in place to update the profile after 3-5 days of live data
