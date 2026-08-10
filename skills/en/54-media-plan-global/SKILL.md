---
name: 54-media-plan-global
description: "Use when a PAID MEDIA plan is needed — work backward from revenue to max CPA and required budget, split spend across channels, funnel stages, and campaign types, build a ramp-up timeline, set KPI targets per channel, and prepare a contingency plan. Trigger on 'media plan', 'paid media budget', 'how much should I spend on ads', 'channel mix for the campaign', 'plan the ad budget', 'we have 10k a month and no plan'. Also use when a budget number exists and nobody has decided where it goes. Not for — the pure revenue-to-budget math, see `10-reverse-kpi-global`; the whole marketing budget including non-paid, see `61-budget-planning-global`; the next period plan built from results, see `57-next-ads-plan-global`."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "media plan"
  - "ads plan"
  - "paid media budget"
  - "budget allocation"
  - "how much should I spend on ads"
  - "channel mix"
  - "plan a campaign budget"
  - "paid media strategy"
output: "File .md — full media plan: reverse-calculated KPIs, channel and funnel allocation, campaign-type budget split, ramp-up timeline, KPI targets per channel, and a contingency plan"
related:
  - product-marketing-context-global
  - 10-reverse-kpi-global
  - 51-audience-research-global
  - 53-tracking-setup-global
  - 52-account-structure-global
  - 61-budget-planning-global
  - 57-next-ads-plan-global
---

# Media Plan (Global)

A plan without hard numbers cannot tell you whether you are winning. Every figure in the plan must trace back to a revenue target. Run `10-reverse-kpi-global` for max CPA and required budget before allocating anything.

## Information gathering

Read `.agents/product-marketing-context-global.md` plus any output from `51-audience-research-global` and `10-reverse-kpi-global`. If information is missing, ask up to 4 questions:

1. **Which offer, and what is the revenue target?** Target revenue for the period, AOV, and gross margin percentage.
2. **What is the budget?** A hard cap, or a number derived backwards from the revenue target?
3. **Which channels and markets?** Meta / Google Search / TikTok / YouTube / Pinterest / LinkedIn — and which countries. Primary objective?
4. **What is the timeline?** Number of weeks, plus any launch date or seasonal moment that cannot move.

## Principles

1. **Work backwards from revenue, never forwards from "the budget we have".** Revenue -> orders -> leads -> max CPA -> budget. If available budget is below required budget, lower the target or lower the CPA. Do not pretend.
2. **Market tier is a planning input, not a detail.** Per `references/benchmarks-global.md`, Tier 1 (US, Canada, Australia, Western EU) costs 6-7x Tier 2 (SEA, LATAM). A campaign profitable at 3x ROAS in a Tier 2 market may need 5-7x in the US for the same unit economics. Plan and report per market.
3. **Season changes the math.** Q1 is the cheapest window (January median CPM $15.74, about 21% below average). November peaks at $25.22, roughly 27% above average. A Q4 plan built on Q1 costs is already wrong.
4. **Spread across the funnel.** Running only bottom-funnel from day one produces high CPA because no trust exists yet.
5. **No blank KPIs.** Every channel gets its own CPA and efficiency target.
6. **Test first, scale second.** Weeks 1-2 are tuition. Do not judge ROAS in week one.
7. **Review weekly and adjust.** The plan is a hypothesis; live data decides.

## Workflow

### 1. Reverse-calculate the KPIs (run `10-reverse-kpi-global`)

```
Target revenue / AOV        = Orders needed
Orders / close rate         = Leads needed
Max CPA                     = (Revenue x gross margin %) / Leads needed
Break-even ROAS             = 1 / gross margin %
Target ROAS                 = Break-even ROAS x 1.5
Required ad budget          = Leads needed x target CPA
```

These must exist before step 2: leads needed, max CPA, target CPA, required budget, target ROAS. Build three scenarios (pessimistic / base / optimistic) and plan against base.

Sanity-check the result against `references/benchmarks-global.md`: global Meta medians are CPA $18-38 and ROAS 1.93-2.79. Healthy ROAS rule of thumb is 3x at roughly 30% gross margin, 5x+ for commodity margins, and 1.5x can work for high-margin digital products. If your required CPA sits far below the bottom quartile for your industry and market tier, the plan is not achievable as written.

### 2. Regional cost baseline

Set the expected cost floor per market before allocating budget:

| Market tier | Examples | Meta CPM | Meta CPC |
|-------------|----------|---------:|---------:|
| Tier 1 premium | United States | $15-25 | $1.40-1.85 |
| Tier 1 | Canada, Australia, UK | $10-22 | $1.10-1.80 |
| Tier 1 Western EU | Germany and Western EU, Japan | $5-15 | $0.90-1.50 |
| Tier 2 SEA lead | Singapore | $6-12 | $0.70-1.20 |
| Tier 2 | Thailand, Malaysia, Indonesia, Philippines | $2-7 | $0.20-0.80 |
| Tier 2 LATAM | Brazil and Latin America | $2-6 | $0.30-0.70 |

Full table in `references/benchmarks-global.md`. Never blend Tier 1 and Tier 2 into one reported CPA — the average describes no real campaign.

### 3. Seasonality adjustment

| Period | Median CPM | vs average |
|--------|-----------:|-----------:|
| January | $15.74 | -21% |
| Q1 average | $18.29 | baseline |
| Q2-Q3 | $18-21 | rising |
| October | $22 | +10% |
| November (peak) | $25.22 | +27% |
| December | $22.04 | +11% |
| Q4 average | $22.98 | +26% above Q1 |

Planning implications: front-load acquisition into Q1 if cash flow allows; reserve at least 30% more budget for the same volume in Q4, or shift brand spend into Q3. In US election years, political spend displaces commercial inventory and adds roughly 20-40% to CPM in the last 30 days before the vote.

### 4. Channel allocation

| Channel | % Budget | Amount | Objective | Primary KPI |
|---------|---------|--------|-----------|-------------|
| Meta | [%] | [amount] | [Lead/Conversion] | CPA, CTR, ROAS |
| Google Search | [%] | [amount] | High intent capture | CPA, conversion rate |
| TikTok | [%] | [amount] | Video-first prospecting | CPA, view rate |
| YouTube | [%] | [amount] | Awareness, consideration | CPM, view rate |
| Pinterest | [%] | [amount] | Discovery for home/fashion/DIY | CPA, saves |
| LinkedIn | [%] | [amount] | B2B targeting | CPL, MQL rate |
| **Total** | **100%** | | | |

Starting archetypes, to be adjusted by real data:

- **DTC ecommerce:** Meta 45% + Google (Search plus Shopping) 30% + TikTok 25%
- **Lead gen B2C services:** Meta 50% + Google Search 30% + TikTok 20%
- **B2B SaaS:** Google Search 45% + LinkedIn 30% + Meta 15% + YouTube 10%
- **Creator, course, coaching:** Meta 50% + YouTube 25% + TikTok 25%
- **Home, decor, fashion:** Meta 45% + Pinterest 25% + Google 30%

Rule: a channel with proven performance takes 60-70%; a new channel gets a 15-20% test allocation. Do not spread evenly across channels you have never run.

**LinkedIn changes the math for B2B.** At $30-100+ CPM versus Meta's $13-20, LinkedIn costs roughly 2-5x more per impression. It is often still correct for B2B because the targeting precision and deal size justify it — but B2B/SaaS CPL benchmarks are $80-300, so validate against LTV in `10-reverse-kpi-global` before committing more than a test budget.

### 5. Funnel allocation

| Stage | % Budget | Audience | Creative | Primary KPI |
|-------|---------|----------|----------|-------------|
| TOFU — awareness/traffic | 30-40% | Cold: broad, interest, lookalike | Strong hook, educate, entertain | CPM, CTR (Meta median 1.57-2.19%) |
| MOFU — lead gen | 35-45% | Warm engagers 7-30 days plus filtered cold | Educate plus offer, solution proof | CPA, lead quality |
| BOFU — conversion/retargeting | 15-25% | Hot: page visits, carts, open conversations 1-7 days | Urgency, proof, testimonial | CPA, ROAS |

### 6. Campaign-type budget split (operating standard)

| Campaign type | % Budget | Purpose |
|---------------|---------|---------|
| Testing (cold, find winners) | 30% | New creative and audience |
| Scaling (proven winner) | 50% | Main volume |
| Retargeting | 15% | Convert warm and hot |
| Lookalike | 5% | Open new pools from quality seeds |

The funnel view and the campaign-type view must reconcile to the same total. Use this table as the source for cutting campaigns in `52-account-structure-global`.

### 7. Ramp-up timeline

Express ramp in percentage of the period budget and in multiples of the learning-phase floor, not in fixed amounts — the same plan must work in a $15 CPM market and a $3 CPM market.

| Week | Stage | % of period budget | Focus | Checkpoint |
|------|-------|-------------------:|-------|------------|
| 1-2 | Testing | ~30% | 3-5 ad sets, 2-3 creatives each | Pause any ad set above 2x target CPA after 3 days |
| 3-4 | Scaling | ~50% | Scale winners +20-30% per step, never double | CPA stable, volume rising |
| 5+ | Maintaining | ~70% steady state | Refresh creative, continuous small tests | Frequency below 2.5, ROAS at or above target |

Every ad set must clear the learning floor derived in `52-account-structure-global`: `(50 events x target CPA) / 7`. Ramp only when the previous step held CPA.

### 8. KPI targets per channel and decision rules

| Channel | CPM expectation | CTR target | CPA target | ROAS target |
|---------|-----------------|-----------|-----------|-------------|
| Meta | $13-20 global median; adjust to market tier | >= 1.6% (median band 1.57-2.19%); below 0.9% is bottom quartile | [from step 1] | [from step 1]; global median 1.93-2.79 |
| TikTok | $5-15 | Use account history — no global median in the repo benchmark file | [from step 1] | [from step 1] |
| Google Search | CPC $1-2 broad, $5-50+ on commercial intent | Use account history | [from step 1] | [from step 1] |
| YouTube | $9-30 | Use view rate instead | [from step 1] | [from step 1] |
| Pinterest | $5-15 | Use account history | [from step 1] | [from step 1] |
| LinkedIn | $30-100+ | Use account history | CPL $80-300 typical for B2B/SaaS | Measure on pipeline, not on ROAS |

Weekly decision rules, expressed relative to the target CPA so they hold in any currency:

| Actual CPA | Frequency | Action |
|-----------|-----------|--------|
| Below target | < 2.0 | WIN — scale +20-30% |
| 100-125% of target | < 2.0 | Acceptable — monitor |
| 125-150% of target | 2.0-2.5 | Optimize — change creative |
| Above 150% of target | > 2.5 | PAUSE — replace or stop |

### 9. Contingency plan

| Situation | Signal | Action |
|-----------|--------|--------|
| CPA above 2x target | After 3 days | Pause the ad set, launch new creative |
| CTR far below the median band | Day 1-2 | Change creative or hook immediately |
| Frequency above 3 | Week 2+ | Refresh creative, widen the audience |
| Underspending | Pace below 80% of plan | Widen audience, raise bid cap, check for rejected ads |
| CPM spikes | Seasonal peak or auction pressure | Reduce budget temporarily, shift to a cheaper market or channel |
| Q4 or election-period cost jump | CPM up 25%+ vs Q1 | Trigger the pessimistic scenario budget from step 1 |

## Output structure

File name: `media-plan-[product]-[YYYYMMDD].md`

```markdown
# Media Plan — [Product/Campaign]
Timeline: [dates] · Total budget: [amount] · Markets: [list] · Objective: [Lead/Conversion]

## 1. Campaign overview        [offer, timeline, budget, headline KPIs]
## 2. Reverse-calculated KPIs  [three scenarios from 10-reverse-kpi-global]
## 3. Market cost baseline     [tier, CPM/CPC expectation per market]
## 4. Seasonality adjustment   [period, expected CPM shift, budget effect]
## 5. Channel allocation       [% + amount + objective + KPI]
## 6. Funnel allocation        [TOFU/MOFU/BOFU]
## 7. Campaign-type split      [Testing 30 / Scale 50 / Retarget 15 / Lookalike 5]
## 8. Ramp-up timeline         [week, % of budget, focus, checkpoint]
## 9. KPI targets and decision rules
## 10. Contingency plan
```

## Related skills

- `10-reverse-kpi-global`: mandatory first step — max CPA, budget, target ROAS.
- `61-budget-planning-global`: places this media budget inside the wider marketing budget.
- `51-audience-research-global`: audiences for each funnel stage.
- `53-tracking-setup-global`: verify tracking green before any spend.
- `52-account-structure-global`: turn this plan into campaign structure.
- `57-next-ads-plan-global`: next period's plan is built from this period's results.

## Quality checklist

- [ ] KPIs reverse-calculated from revenue, including max CPA, break-even ROAS, and three scenarios
- [ ] Market tier stated with the expected CPM/CPC baseline per market
- [ ] Seasonality applied to the planned period, with the budget consequence written down
- [ ] Budget totals 100% across all three views: channel, funnel, campaign type
- [ ] No blank KPIs — every channel has its own target
- [ ] Campaign-type split follows 30/50/15/5 or documents the reason for deviating
- [ ] Ramp-up expressed in percentages and learning-floor multiples, not fixed amounts
- [ ] Decision rules expressed relative to target CPA
- [ ] Contingency plan covers at least four situations, including a seasonal cost spike
- [ ] All benchmark figures traced to `references/benchmarks-global.md`; repo file wins on any conflict
