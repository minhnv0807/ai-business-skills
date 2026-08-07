---
name: 57-next-ads-plan-global
description: "Use when the user needs the next period's ads plan built from the last period's data: read the report and audit, keep and scale winners, stop or fix losers, set new test hypotheses, split budget, and plan three budget scenarios. Trigger on 'next month ads plan', 'next ads plan', 'plan ads for next period', 'plan from the ads report', 'what should we run next month', or 'Q4 ads plan'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "next month ads plan"
  - "next ads plan"
  - "plan ads for next period"
  - "plan from the ads report"
  - "what should we run next month"
  - "Q4 ads plan"
  - "next quarter media plan"
output: "File .md — evidence-based ads plan for the next period: prior-period review, winners to scale, losers to stop or fix, new hypotheses, budget split, three scenarios, creative pipeline, and a weekly schedule"
related:
  - product-marketing-context-global
  - 07-marketing-report-global
  - 21-ads-audit-global
  - 03-performance-eval-global
  - 54-media-plan-global
  - 52-account-structure-global
  - 19-ab-test-setup-global
  - 10-reverse-kpi-global
---

# Next Ads Plan (Global)

A plan without last period's data is guesswork, and guesswork is expensive. The order never changes: read the data, scale the winners, fix or stop the losers, then test something new. This is the last skill in the performance chain and the first skill of the next cycle.

## Information gathering

### Step 0 — always read the previous period first (mandatory input)

Before writing a single line of plan, you need:

1. **Previous period performance report** from `07-marketing-report-global` or the tracking dashboard: spend, CPA, ROAS, leads, orders, broken out by channel, campaign, creative, and market.
2. **Audit findings** from `21-ads-audit-global` or `03-performance-eval-global` if the previous period had problems.
3. **KPI target for the new period** — unchanged or changed? If changed, recalculate with `10-reverse-kpi-global`.
4. **New period budget and any new offer or product** entering the mix.

Missing the report means stop and either request the data or run `07-marketing-report-global` first. If only part is missing, write the assumption explicitly into the plan.

## Principles

1. **Data before opinion.** Never plan from a feeling that something "seemed fine".
2. **Scale proven winners before funding new ideas.** Capital goes first to what is already working; new tests get the 30% testing slice.
3. **Maximum 2-3 new hypotheses per period.** More than that and no test reaches significance.
4. **Every keep/stop/fix decision carries a number.** "Creative A at $42 CPA against a $30 target, frequency 3.1" — never "it was performing badly".
5. **Plan three budget scenarios.** Commit to the base case; keep prepared actions for the other two.
6. **Adjust for the calendar.** Per `references/benchmarks-global.md`, Q4 CPM runs about 26% above Q1, November peaks around 27% above average, and January is the cheapest month at roughly 21% below. A flat month-over-month plan across a seasonal boundary is already wrong.

## Workflow

### 1. Review the previous period

| Worked (KEEP) | Did not work (STOP/FIX) | Untested (ADD) |
|---------------|-------------------------|----------------|
| [winning creative/audience/channel with numbers] | [losing ad set with numbers and cause] | [new hypothesis from observation] |

Extract the winning patterns:

- Creative type: video, static, carousel, UGC — which produced the best CPA?
- Hook type: pain, curiosity, social proof, demonstration — which produced the best CTR?
- Audience: interest, broad, lookalike, Advantage+ — which was cheapest and highest quality?
- Channel: which delivered the best ROAS, and which dragged the blended average down?
- Market: compare each market against its own tier baseline in `references/benchmarks-global.md`, never against the blended account average.
- Operational lessons: best posting times, creative refresh cadence, setup mistakes to avoid.

### 2. Direction for the new period

| Period | Total budget | Objective | KPI target | New offer or campaign |
|--------|-------------|-----------|-----------|-----------------------|
| [month/quarter] | [amount] | [lead/conversion] | CPA [x] / ROAS [x] / volume [x] | [if any] |

If the target changed, or the offer, price, or market changed, recalculate with `10-reverse-kpi-global` before continuing.

### 3. Multiply the winners

| Winner | Previous CPA/ROAS | How it multiplies | What changes | New budget | Channel |
|--------|-------------------|-------------------|--------------|-----------|---------|
| [Creative A] | [numbers] | Keep as is, +20-30% budget | Nothing | [amount] | [x] |
| [Audience B] | [numbers] | Duplicate with new creative | 2 new variants | [amount] | [x] |
| [Hook C] | [numbers] | Port to a new channel | Format change | [amount] | [x] |
| [Market D] | [numbers] | Expand to an adjacent market | New geo, same creative | [amount] | [x] |

Apply the `55-scaling-ads-global` rules: +20-30% per step, never double, do not edit the winning ad set.

### 4. Stop or fix the losers

| Campaign / ad set | Problem (with numbers) | Decision | If fixing: what changes |
|-------------------|------------------------|----------|-------------------------|
| [name] | CPA above 2x target for 3 days | STOP | — |
| [name] | CTR far below the median band | FIX | New creative and hook, keep the audience |
| [name] | Frequency 3.5+, CTR down 30% | FIX | Refresh creative, widen the audience |
| [name] | Good CTR, poor CVR | FIX | Landing page or offer, not the ad |

Use the diagnostic order from `references/benchmarks-global.md`: weak CTR is a creative problem; good CTR with weak CVR is a landing page or offer problem; good CVR with weak ROAS is a margin or AOV problem. Every stopped item gets a logged reason so nobody retests the same thing next period.

### 5. Budget split for the new period

| Campaign | Purpose | Daily budget | % of total |
|----------|---------|-------------|-----------|
| Scale winners | Maintain and grow | [amount] | 50% |
| Testing (new hypotheses) | Find the next winner | [amount] | 30% |
| Retargeting | Convert warm and hot | [amount] | 15% |
| Lookalike | Open new pools from fresh seeds | [amount] | 5% |
| **Total** | | | **100%** |

### 6. Three budget scenarios

| Scenario | Assumption | Budget | Expected volume | Action if it happens |
|----------|-----------|--------|-----------------|----------------------|
| Downside | CPA up 30% (seasonal peak, creative fatigue, auction pressure) | [amount] | [number] | Cut testing to 20%, concentrate on winners and retargeting |
| Base | CPA holds at last period | [amount] | [number] | Run this plan as written |
| Upside | CPA down 20% (a new winner lands) | [amount] | [number] | Push scaling +20% per 72h, open a new channel or market |

If the new period crosses into Q4, build the downside scenario as the default assumption rather than the exception — the seasonal CPM lift is documented, not speculative. Commit to the base scenario with stakeholders; keep prepared actions for the other two so nobody is caught flat-footed.

### 7. New hypotheses (maximum 2-3)

| # | Hypothesis ("If X then Y because Z") | Variable | Platform | Metric | Timeline |
|---|--------------------------------------|----------|----------|--------|----------|
| 1 | If we use UGC testimonial creative, CPA drops because trust is higher | Creative format | [x] | CPA | 7 days |
| 2 | If we open a 3% lookalike, volume rises while CPA holds | Audience | [x] | CPA, volume | 7 days |
| 3 | If we test a second market, blended CPA improves | Geo | [x] | CPA by market | 14 days |

Set up and conclude these according to `19-ab-test-setup-global`: one variable at a time, at least 7 days, enough conversions to decide.

### 8. Creative pipeline

| Creative needed | Type | Hook | Channel | Deadline | Used for |
|-----------------|------|------|---------|---------|---------|
| [name] | Video | Pain | Meta | [date] | Testing |
| [name] | Static | Social proof | Meta | [date] | MOFU / retargeting |
| [name] | UGC | Testimonial | TikTok | [date] | Scaling |

Have 2-3 reserve creatives ready before the period starts. Do not wait for fatigue to brief.

### 9. Weekly schedule and acceptance thresholds

| Week | Focus | Action | Cumulative % of period KPI |
|------|-------|--------|---------------------------:|
| 1 | Launch winner clones | Build, launch, verify tracking green | 20% |
| 2 | Launch tests | Run hypotheses, read day-3 signal | 45% |
| 3 | Optimize | Scale winners, pause losers | 70% |
| 4 | Review and prepare | Pull data, write the report, draft the next plan | 100% |

At the end of each week, compare cumulative actual against the threshold. A shortfall above 15% triggers the downside scenario immediately — do not wait for the period to end.

## Output structure

File name: `next-ads-plan-[product]-[YYYYMMDD].md` — nine sections matching the nine steps above: review, direction, multiply winners, stop losers, budget split, three scenarios, hypotheses, creative pipeline, weekly schedule.

## Related skills

- `07-marketing-report-global`: the primary data source — run it first.
- `21-ads-audit-global` and `03-performance-eval-global`: audit before planning if the previous period had problems.
- `10-reverse-kpi-global`: recalculate whenever the target, budget, offer, or market changes.
- `54-media-plan-global`: when the new period involves a major change (new channel, new offer, new market), build a full media plan instead of an increment.
- `19-ab-test-setup-global`: how to set up and conclude each hypothesis.
- `52-account-structure-global`: build and launch the campaigns this plan defines.

## Quality checklist

- [ ] Previous period report and audit were read — the plan is not written from impression
- [ ] Review table has all three columns (keep / stop-fix / untested) with numbers attached
- [ ] Market performance compared against its own tier baseline, not the blended average
- [ ] Winners are multiplied first, following the +20-30% scaling rule
- [ ] Every stopped item has a logged reason
- [ ] Budget split follows 30/50/15/5 and totals 100%
- [ ] Three scenarios present, each with a prepared action
- [ ] Seasonality applied where the period crosses a Q4 or January boundary
- [ ] Maximum 2-3 hypotheses, each with a variable, metric, and timeline
- [ ] Creative pipeline has deadlines and 2-3 reserve creatives
- [ ] Weekly schedule has cumulative acceptance thresholds of 20/45/70/100%
