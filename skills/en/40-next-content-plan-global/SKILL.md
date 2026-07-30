---
name: 40-next-content-plan-global
description: "Use when the user wants the next period's content plan built from last period's data — keep winners, cut losers, test at most 2 new hypotheses, allocated 70/20/10. Trigger on 'next content plan', 'content plan for next month', 'data-driven content plan', 'plan from the audit', 'next quarter content', or 'what should we post next month'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "next content plan"
  - "content plan for next month"
  - "data-driven content plan"
  - "plan from the audit"
  - "next quarter content"
  - "what should we post next month"
  - "scale the winners"
  - "content plan from report"
output: "File .md — prior period review, direction for the new period, 70/20/10 content mix, winner replication table, max 2 test hypotheses, 4-week overview calendar, ownership assignment"
related:
  - product-marketing-context-global
  - 39-content-audit-global
  - 07-marketing-report-global
  - 01-content-calendar-global
  - 36-content-brief-global
  - 19-ab-test-setup-global
  - 13-data-analysis-global
---

# Next Content Plan (Global)

A plan without last period's data is a guess. The order is fixed: read the data, replicate the winners, test a small number of new hypotheses, then schedule. Do not change everything at once — a team that rebuilds from scratch every period never learns what works.

## Information gathering — always read the old data first

Before writing a single line of plan, you need:

1. **The prior period's content audit** (from `39-content-audit-global`). If it does not exist, run that skill first. Do not plan around it.
2. **The prior period's report** (from `07-marketing-report-global`) if available.
3. **KPI targets for the new period** — what changes versus last period.
4. **Known variables in the new period:** upcoming campaign, launch, event, seasonality; changes in budget, headcount, or capacity.

If the user cannot supply at least an audit or a post list with metrics, stop and recommend running `39-content-audit-global` first.

## Principles

1. **Data first, plan second.** Every change in the plan must trace back to a specific line of prior-period data.
2. **Replicate winners before chasing new ideas.** A winner has already proved itself. Reproduce it with small variations before betting on an untested concept.
3. **The 70/20/10 split:**
   - 70 percent of output is proven format plus proven angle — the winner's formula, held constant.
   - 20 percent is optimization of a winner — change the hook, the channel, or the length while keeping what worked.
   - 10 percent is genuinely new — the test hypotheses.
4. **Maximum 2 new hypotheses per period.** More than that and no single test accumulates enough data to conclude anything.
5. **Losers are not automatically deleted.** Separate a loser caused by a wrong angle (retire it) from a loser caused by weak execution (fix the execution, try once more).
6. **Plan at the week level here.** Day-level detail belongs to `01-content-calendar-global`.
7. **Account for seasonality in paid amplification.** Q4 media costs run well above Q1 globally; if a proven post type is normally boosted, the same plan costs more in November than in January (see `references/benchmarks-global.md`).

## Workflow

### 1. Review the prior period

From the audit (`39-content-audit-global`) and report (`07-marketing-report-global`), fill three columns:

| Worked (KEEP) | Did not work (STOP) | Not yet tried (TEST) |
|---------------|---------------------|----------------------|
| [format / angle / channel + the numbers that prove it] | [+ the data reason] | [idea from a pattern or a new insight] |

### 2. Set the direction for the new period

| Period | Primary objective | Priority KPI | Attached campaign | Major change |
|--------|-------------------|--------------|-------------------|--------------|
| | | | | |

Exactly one primary objective — reach, lead generation, conversion, or retention. The priority KPI is the metric this period will actually be judged on.

### 3. Build the content mix at 70/20/10

| Group | Share | Content |
|-------|-------|---------|
| Proven (70%) | ~70% of posts | Winner formula held constant — only the subject changes |
| Optimized (20%) | ~20% of posts | Variations on winners: different hook, channel, or length |
| Experimental (10%) | ~10% of posts | New hypotheses (maximum 2) |

Then adjust the funnel and format ratios, with a data reason for each change:

| Dimension | Prior period ratio | New period ratio | Reason (from data) |
|-----------|--------------------|------------------|--------------------|
| TOFU / MOFU / BOFU | | | |
| Video vs static vs text | | | |
| Channel split | | | |

### 4. Plan the winner replication

| Original winner | Result (metric) | Replicate into | What changes | Channel / timing |
|-----------------|-----------------|----------------|--------------|------------------|
| | | | | |

Each winner becomes 2-3 variations. Hold the hook structure and format constant; change the subject, the angle of the shot, or the person on camera.

### 5. Define the new hypotheses (maximum 2)

| Hypothesis | Format | Channel | Metric | Test duration | Decision rule |
|------------|--------|---------|--------|---------------|---------------|
| | | | | | |

Write each one so it can be falsified: "If we [change X], then [metric Y] will [rise or fall by Z percent]." For test design and sample sizing, hand off to `19-ab-test-setup-global`.

### 6. Build the overview calendar and assign ownership

| Week | Theme | Priority channel | Posts | Highlights (replicated winner / hypothesis) |
|------|-------|------------------|-------|---------------------------------------------|
| Week 1 | | | | |
| Week 2 | | | | |
| Week 3 | | | | |
| Week 4 | | | | |

| Owner | Responsibility | Posts per week | Primary channel |
|-------|----------------|----------------|-----------------|
| | | | |

Day-level detail (publish time, hook, CTA, status) goes to `01-content-calendar-global`. Per-piece briefs go to `36-content-brief-global`.

## Output structure

File name: `next-content-plan-[brand]-[YYYYMMDD].md`

```markdown
# Next Content Plan — [Period] — [Brand]

## I. Prior period review
| Worked (keep) | Did not work (stop) | Not yet tried (test) |
|---------------|---------------------|----------------------|
| | | |

## II. Direction for the new period
| Period | Primary objective | Priority KPI | Attached campaign | Major change |
|--------|-------------------|--------------|-------------------|--------------|
| | | | | |

## III. Content mix — 70/20/10
| Group | Share | Posts | Content |
|-------|-------|-------|---------|
| Proven (70%) | | | |
| Optimized (20%) | | | |
| Experimental (10%) | | | |

| Dimension | Prior ratio | New ratio | Reason (from data) |
|-----------|-------------|-----------|--------------------|
| TOFU / MOFU / BOFU | | | |
| Video vs static vs text | | | |
| Channel split | | | |

## IV. Winner replication
| Original winner | Result | Replicate into | What changes | Channel / timing |
|-----------------|--------|----------------|--------------|------------------|
| | | | | |

## V. New hypotheses (max 2)
| Hypothesis | Format | Channel | Metric | Test duration | Decision rule |
|------------|--------|---------|--------|---------------|---------------|
| | | | | | |

## VI. Overview calendar
| Week | Theme | Priority channel | Posts | Highlights |
|------|-------|------------------|-------|------------|
| | | | | |

## VII. Ownership
| Owner | Responsibility | Posts per week | Primary channel |
|-------|----------------|----------------|-----------------|
| | | | |
```

## Related skills

- `39-content-audit-global`: required input — run it first. No audit means no plan.
- `07-marketing-report-global`: the prior period's report adds the full-funnel KPI view.
- `01-content-calendar-global`: takes this plan and produces the day-by-day schedule.
- `36-content-brief-global`: briefs each individual piece inside the plan.
- `19-ab-test-setup-global`: designs the tests for the 2 hypotheses.
- `13-data-analysis-global`: supporting analysis when the data needs a deeper look.

## Quality checklist

- Prior period data present as the basis (audit from 39 or report from 07) — nothing planned on instinct.
- Every change in the plan traces back to a specific line of data.
- Content mix follows 70/20/10 and the shares total 100 percent.
- Each winner has a concrete replication plan (2-3 variations each).
- No more than 2 new hypotheses, each falsifiable and each with a decision rule.
- Losers separated into wrong angle (retire) versus weak execution (fix and retry once).
- Funnel and format ratio changes each carry a data reason — nothing changed arbitrarily.
- Overview calendar covers all 4 weeks with named owners.
- Seasonality accounted for where the plan depends on paid amplification.
- Handoffs stated: `01-content-calendar-global` for the detailed schedule, `19-ab-test-setup-global` for the hypotheses.
