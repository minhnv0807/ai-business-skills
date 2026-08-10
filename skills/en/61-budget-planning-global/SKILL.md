---
name: 61-budget-planning-global
description: "Use when a marketing BUDGET has to be planned or managed in USD — allocation by bucket, channel, and month, test versus scale split, scale-up and stop-loss thresholds, reserve, a plan-versus-actual tracker, and a review cadence. Trigger on 'budget planning', 'marketing budget', 'split the budget across channels', 'stop loss threshold', 'quarterly budget', 'we keep overspending and nobody notices'. Also use when a number has been approved and nobody has divided it up. Not for — the revenue-backward math that produces the number, see `10-reverse-kpi-global`; paid media allocation only, see `54-media-plan-global`; paying an external vendor, see `67-agency-vendor-brief-global`."
metadata:
  version: 1.0.1
  category: strategy
license: MIT
triggers:
  - "budget planning"
  - "marketing budget"
  - "budget allocation"
  - "how much should we spend on ads"
  - "campaign budget"
  - "stop loss threshold"
  - "quarterly budget"
  - "media budget split"
output: "File .md — budget plan: overview, allocation by bucket / channel / campaign / month, test vs scale split, adjustment rules and stop-loss thresholds, tracker, review cadence"
related:
  - product-marketing-context-global
  - 10-reverse-kpi-global
  - 00-marketing-plan-global
  - 54-media-plan-global
  - 55-scaling-ads-global
  - 21-ads-audit-global
  - 07-marketing-report-global
---

# Budget Planning (Global)

> A budget is not a fixed number — it is a decision tool: where you place bets and when you pull back. The leader must know total spend, ROI per channel, what to increase, and what to cut. Run `10-reverse-kpi-global` first to derive the minimum budget from the revenue target before allocating anything.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the marketing plan, and the previous period's report if available. If missing, ask up to 4 questions:

1. **Total budget and planning period?** How much, for a month, a quarter, or a year (USD)?
2. **Revenue target for the period?** Needed to compute marketing as a percent of revenue and the minimum viable budget.
3. **Active channels and last period's ROI?** Meta / TikTok / Google / email + SMS / affiliates / agency — which has the best ROAS or CPA?
4. **Any large campaign needing a reserve?** Launch, Black Friday / Cyber Monday, or another seasonal peak.

## Principles

1. **Budget follows performance.** Do not stay rigid to the opening plan. Channels that work get more; channels that do not get cut.
2. **Always hold 10-15% in reserve.** Never allocate everything on day one. The reserve covers unexpected opportunities and incidents.
3. **Every dollar has a measurable KPI.** "Branding you cannot measure" is not an acceptable line item.
4. **Do not spread evenly.** Concentrate on the best-performing channel. New channels get a minimum test allocation (10-15%) first.
5. **Plan backwards from revenue, not from channels.** The budget is the output of a revenue equation, not an arbitrary number.
6. **Do not divide the annual budget evenly across quarters.** Median Meta CPM in Q4 runs roughly 26% above Q1 (`references/benchmarks-global.md`), so identical monthly spend buys materially less reach in Q4. Either front-load acquisition into cheap Q1 months or explicitly reserve a larger Q4 allocation for the same volume.

## Workflow

### 1. Choose the budget-setting method

| Method | How it works | Strength | Weakness |
|--------|--------------|----------|----------|
| Percent of revenue | Budget = X% of expected revenue | Simple | Ignores growth stage |
| Backwards from targets (recommended) | Set revenue > derive CAC/CPL > derive spend | Logical, evidence-based | Needs historical CAC/CPL |
| Competitive benchmark | Match category spend norms | Avoids under-investment | Ignores your own conditions |

Seven-step backwards calculation (full detail in `10-reverse-kpi-global`):

```
1. Target revenue
2. / AOV                        = orders needed
3. / close rate (30-50%)        = hot leads needed
4. / nurture CVR (50-60%)       = warm leads needed
5. / lead capture CVR (20-40%)  = total reach needed
6. total leads x CPL            = minimum ad budget
7. + content + tools + agency   = total marketing budget
```

Build 3 scenarios: Conservative (CVR below category median, CPL above), Base case (at median), Optimistic (post-optimization). Plan against Base; prepare cashflow against Conservative.

### 2. Allocate by bucket

| Bucket | Suggested share | Purpose |
|--------|-----------------|---------|
| Paid ads (performance) | 50-65% | Meta, TikTok, Google, retargeting |
| Content production | 10-15% | Video, design, copywriting |
| Creators / UGC / affiliates | 5-10% | Social proof, third-party reach |
| Agency / freelancers | Per scope | If used |
| Tools / software | 2-5% | Ad tools, design, email/CRM, analytics |
| Campaign reserve | 10-15% | Opportunities and incidents — NOT pre-allocated |

### 3. Allocate by channel

Starting split (adjust to your category and your own data):

| Channel | Share of ad budget | Objective | Expected CPA / ROAS |
|---------|--------------------|-----------|---------------------|
| Meta Ads (Facebook + Instagram) | 45-60% | Lead / purchase | |
| TikTok Ads | 15-20% | Awareness / lead | |
| Google Search + Shopping | 15-25% | High-intent capture | |
| Email + SMS (Klaviyo, Mailchimp, Attentive) | 5-10% | Retention, nurture, retargeting | |
| New channel (test) | 10-15% | Validate | |

For B2B, shift toward LinkedIn and Search — LinkedIn CPM runs $30-100+, so plan a higher CPL and a longer payback window. Allocation logic: channels with strong ROAS or CPA get a larger share; new channels get the minimum test allocation first; never divide evenly.

### 4. Split by funnel and by test vs scale

Standard performance split inside each channel:

| Purpose | Share | Note |
|---------|-------|------|
| Testing (new creative + audiences) | 30% | Always keep testing — creative fatigue arrives fast |
| Scale (confirmed winners) | 50% | Only scale campaigns with winning data |
| Retargeting | 15% | Warm audience — cheapest CPA in the funnel |
| Lookalike / similar audiences | 5% | Expansion from converter seeds |

By funnel: TOFU (reach/awareness), MOFU (lead/nurture), BOFU (conversion/retargeting). The ratio depends on stage: a launch skews TOFU, a mature program skews BOFU and retention.

### 5. Allocate by campaign and month

| Campaign | Month | Budget (USD) | Objective | KPI |
|----------|-------|--------------|-----------|-----|
| Always-on (retargeting + nurture) | Full period | | | |
| Campaign A (launch or seasonal) | | | | |
| Testing budget | Full period | | New channels or angles | |
| Reserve | — | 10-15% | | |

Seasonality overlay before locking monthly numbers:

| Period | Media cost vs Q1 | Planning implication |
|--------|------------------|----------------------|
| January | ~-21% below Q1 average | Cheapest acquisition window — stock budget here if cashflow allows |
| Q2-Q3 | Rising | Normal operating cadence, build audiences for Q4 |
| October | ~+10% | Start of the expensive window |
| November | ~+27% (peak) | Reserve extra budget or accept lower volume |
| Q4 average | ~+26% above Q1 | Do not plan Q4 at Q1 unit costs |

In US election years, political spend displaces commercial inventory and adds roughly 20-40% to CPM in the last 30 days before the vote — build that into Q4 plans for US-targeted campaigns.

### 6. Scale-up and stop-loss rules

**Increase budget when (BOTH conditions hold):**

- ROAS above 1.5x target for 7+ consecutive days, OR CPA at or below 70% of target with sufficient volume
- Audience not yet saturated (frequency below 2.5)
- Increment: +20-30% per step, never a sudden doubling

**Cut or pause when (stop-loss):**

| Condition | Action |
|-----------|--------|
| ROAS below break-even for 14 days | Cut the channel or campaign, move budget to what works |
| CPA above 2x target after 7 days of testing | Pause, replace creative or audience before restarting |
| Frequency above 4 | Audience saturation — stop scaling, refresh creative |
| Spend above 110% of the monthly plan | Cap daily budgets, review the allocation |

Weekly CPA review rule (expressed relative to your own target, since absolute CPA varies 3-5x between regions and industries):

| CPA vs target | Frequency | Verdict |
|---------------|-----------|---------|
| <= 70% of target | < 2.0 | WIN — scale +20-30% |
| 70-100% of target | < 2.5 | Acceptable — monitor |
| 100-130% of target | 2.0-2.5 | Optimize — replace creative |
| > 130% of target | > 2.5 | PAUSE and replace |

Set the target itself using `references/benchmarks-global.md` for your region and industry, not a global average. **Never increase budget while CPA is deteriorating** — fix creative or tracking first.

### 7. Tracker and review cadence

| Month | Planned budget | Actual spend | Variance | ROAS / ROI | Note |
|-------|----------------|--------------|----------|------------|------|
| Month 1 | | | | | |
| Month 2 | | | | | |
| Month 3 | | | | | |
| Quarter total | | | | | |

| Cadence | Work | Output |
|---------|------|--------|
| Weekly | Review CPA and ROAS per channel, apply the step-6 decision rules | Immediate adjustment when a threshold trips |
| Monthly | Review the full allocation, reconcile plan vs actual | Rebalance for next month |
| Quarterly | Review overall allocation strategy and LTV:CAC | Strategy adjustment |

Unit economics health — LTV:CAC:

| Ratio | Meaning | Action |
|-------|---------|--------|
| < 1:1 | Losing money on every customer | Stop scaling, fix product or price |
| 1:1 to 3:1 | Break-even to viable | Optimize conversion, raise AOV |
| > 3:1 | Healthy | Begin scaling |
| > 5:1 | Strong | Increase ad budget aggressively |

## Output structure

File name: `budget-plan-[brand-name]-[YYYYMMDD].md` — contains: I. Budget overview (total, revenue target, marketing as % of revenue, period) · II. Bucket allocation · III. Channel allocation · IV. Test vs scale split · V. Campaign and monthly allocation with seasonality overlay · VI. Decision rules and stop-loss thresholds · VII. Plan-vs-actual tracker · VIII. Review cadence.

## Related skills

- `10-reverse-kpi-global`: derive the minimum budget from the revenue target — run before allocating.
- `00-marketing-plan-global`: the budget plan is the detailed version of the plan's budget section.
- `54-media-plan-global`: turn the ad budget into a concrete campaign and ad-set level media plan.
- `21-ads-audit-global`: audit a channel that repeatedly trips the stop-loss thresholds.
- `07-marketing-report-global`: budget reconciliation inside the monthly report.

## Quality checklist

- [ ] Budget derived backwards from the revenue target, with 3 scenarios
- [ ] All 3 allocation layers present: bucket > channel > campaign/month
- [ ] Test vs scale split explicit (testing 30 / scale 50 / retargeting 15 / lookalike 5)
- [ ] 10-15% reserve held back, not pre-allocated
- [ ] Scale-up and stop-loss thresholds use concrete numbers (ROAS, CPA vs target, frequency, days)
- [ ] New channels receive only a 10-15% test allocation
- [ ] Every budget line has a measurable KPI attached
- [ ] Monthly plan accounts for Q4 media inflation rather than dividing the year evenly
- [ ] Plan-vs-actual tracker exists by month
- [ ] Weekly, monthly, and quarterly review cadence with defined outputs
- [ ] LTV:CAC checked before any scale decision
