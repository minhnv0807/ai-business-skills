---
name: 39-content-audit-global
description: "Use when the user wants to audit published content — pull channel data, classify winners and losers by percentile, find the pattern behind performance, and decide what to keep, kill, or scale. Trigger on 'content audit', 'audit our content', 'which content is working', 'content performance review', 'find the pattern in our posts', or 'evaluate last month's content'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "content audit"
  - "audit our content"
  - "which content is working"
  - "content performance review"
  - "find the pattern in our posts"
  - "evaluate last month's content"
  - "top performing posts"
  - "content teardown"
output: "File .md — period overview, winners and losers classified by percentile across pillar/format/hook, pattern analysis, keep/kill/scale recommendations, KPI comparison against prior period and benchmark"
related:
  - product-marketing-context-global
  - 13-data-analysis-global
  - 03-performance-eval-global
  - 07-marketing-report-global
  - 40-next-content-plan-global
  - 01-content-calendar-global
  - 09-customer-insight-global
---

# Content Audit (Global)

An audit is not a judgment of the past. It is how you replicate winners and retire losers with evidence behind the decision. Every recommendation must attach to a specific action — never a general observation. Run it at least monthly; do not wait for the quarter to close.

## Information gathering

Ask up to 4 questions before starting:

1. **What is the audit period?** Month / quarter / campaign — exact start and end dates.
2. **Which channels?** Instagram / TikTok / LinkedIn / Facebook / X / YouTube / blog / email / all.
3. **Is post-level data available?** Reach, engagement, views, CTR, leads per post — paste or export it. If an analytics MCP or connector is already set up, pull directly.
4. **What is the goal of this audit?** Find winners to scale / find losers to stop / both.

Without post-level data there is no audit. Walk the user through the exports in step 1 first.

## Principles

1. **Audit monthly, not quarterly.** Standard cadence: pull data on the 28th-30th, finish the audit before the 2nd of the following month.
2. **Classify by percentile, not by feel.** Top 20 percent are winners, bottom 20 percent are losers, the middle 60 percent are average.
3. **Compare like with like.** Organic against organic, boosted against boosted, channel against itself. Never pool them.
4. **The primary metric follows the post's objective.** TOFU is measured on reach or views, MOFU on engagement rate or saves, BOFU on clicks or leads. One metric for everything produces nonsense.
5. **Winners become templates.** Document the winning structure — hook type, format, angle, length — so it can be reproduced.
6. **Every finding needs a "why" hypothesis.** "This post did well" is not a finding. "It did well because X" is.
7. **Judge against your own trailing baseline first.** Organic reach and engagement rates vary too much by follower count, niche, and algorithm changes for a published cross-industry number to be a fair target. Use your own trailing 3-month median as the baseline, and use published benchmarks only where they exist for that metric.

## Workflow

### 1. Pull the data (day 28-30)

| Channel | Source | Metrics to export |
|---------|--------|-------------------|
| Instagram | Instagram professional account insights or Meta Business Suite, post level | Reach, accounts engaged, saves, shares, profile visits, link clicks |
| Facebook | Meta Business Suite, post level export | Reach, engagement, link clicks, shares, negative feedback |
| TikTok | TikTok Analytics, Content tab | Views, average watch time, completion rate, shares, follows from video |
| LinkedIn | LinkedIn page or creator analytics | Impressions, engagement rate, click-through, follower gain, reposts |
| YouTube | YouTube Studio | Views, average view duration, impressions click-through rate, subscribers gained |
| X | X analytics | Impressions, engagement rate, link clicks, profile visits |
| Blog / site | GA4 — Explore report by landing page and source/medium | Sessions, engagement rate, average engagement time, key events, assisted conversions |
| Email | Klaviyo, Mailchimp, or equivalent campaign report | Open rate, CTR, click-to-open rate, placed-order rate, unsubscribe rate |
| Leads and revenue | CRM (HubSpot, Pipedrive) or store (Shopify) | Leads and orders attributed to content, by source |

One row per post: publish date, channel, format, pillar, funnel stage, hook type, primary metric, secondary metrics. If the classification columns (pillar, format, hook type) are missing, backfill them by hand from the content calendar (`01-content-calendar-global`).

### 2. Set thresholds and classify

1. Choose the primary metric for each group by objective (TOFU: reach or views; MOFU: engagement rate or saves; BOFU: clicks or leads).
2. Rank posts within each group by that metric.
3. Top 20 percent are WINNERS, bottom 20 percent are LOSERS, the remaining 60 percent are AVERAGE.

Apply the split per channel and per group. A cross-channel ranking measures the channel, not the content.

### 3. Find the pattern across 5 axes

For the winner set and the loser set separately, look for what they share:

| Axis | Question |
|------|----------|
| Pillar | Which pillar do the winners concentrate in? Which pillar produced no winner at all? |
| Format | Video, carousel, static, text, long-form — which format wins on which channel? |
| Hook type | Pain, curiosity, number, contrarian, result-first — which one holds attention? |
| Publish time | Which slots produce winners? |
| Length | Short or long — and does the answer differ by channel? |

### 4. Write the core finding

Two or three sentences answering why the pattern works, checked against the customer insight file (`09-customer-insight-global`). Example of the right shape: "Videos with a number in the hook and a real face on camera hold completion far better than carousels — this audience trusts a person more than a designed asset."

A finding is a hypothesis grounded in data, not an impression.

### 5. Recommend: keep / kill / scale

- **Do now (next week):** replicate the winners — each action with an expected impact.
- **Stop:** the content types, angles, or formats to retire — each with the data reason.
- **Test next:** new hypotheses plus how they will be measured. Hand off to `40-next-content-plan-global` and `19-ab-test-setup-global`.

### 6. Compare KPIs against prior period and benchmark

For each metric record: this period / prior period / baseline / verdict.

Baselines to use:

- Email: open rate median 22-27 percent, top performers above 35 percent; CTR 2.5-3.5 percent; click-to-open 10-14 percent; unsubscribe under 0.5 percent (see `references/benchmarks-global.md`).
- Paid social: use the published CPM, CPC, CTR, and ROAS medians in `references/benchmarks-global.md`, adjusted for region tier, industry, and season before comparing.
- Organic social engagement, reach, and completion rate: no reliable cross-industry global median exists. Use your own trailing 3-month median as the baseline and judge movement against it.

## Output structure

File name: `content-audit-[brand]-[YYYYMMDD].md`

```markdown
# Content Audit — [Period] — [Channels]

## I. Period overview
| Item | Figure |
|------|--------|
| Posts published | |
| Total reach / impressions | |
| Average engagement rate | |
| Leads attributed to content | |
| Revenue attributed to content | |

## II. Classification
### WINNERS — top 20%
| Post | Channel | Format | Pillar | Hook type | Standout metric | Why it worked (hypothesis) |
|------|---------|--------|--------|-----------|-----------------|----------------------------|
| | | | | | | |

### LOSERS — bottom 20%
| Post | Channel | Format | Pillar | Hook type | Weak metric | Why it failed (hypothesis) |
|------|---------|--------|--------|-----------|-------------|----------------------------|
| | | | | | | |

### AVERAGE — middle 60%
[2-3 sentences of general observation]

## III. Pattern analysis
**Winner pattern:** [recurring pillar / format / hook / time / length]
**Loser pattern:** [what the failures share]
**Core finding:** [2-3 sentences — why it works, checked against customer insight]

## IV. Recommendations
**Do now (next week):**
1. [Action + expected impact]

**Stop:**
1. [What to retire — data reason]

**Test next:**
1. [Hypothesis + how it will be measured]

## V. KPI comparison
| Metric | This period | Prior period | Baseline | Verdict |
|--------|-------------|--------------|----------|---------|
| Instagram reach per post | | | trailing 3-month median | |
| TikTok average completion rate | | | trailing 3-month median | |
| LinkedIn engagement rate | | | trailing 3-month median | |
| Email open rate | | | 22-27% median | |
| Email CTR | | | 2.5-3.5% median | |
| Leads from content | | | | |
```

## Related skills

- `13-data-analysis-global`: pulling and cleaning the data before the audit, including connector and MCP setup.
- `03-performance-eval-global`: paid media evaluation — this audit covers organic.
- `07-marketing-report-global`: the audit result is an input to the monthly report.
- `40-next-content-plan-global`: run immediately after. An audit that does not produce a new plan was wasted effort.
- `01-content-calendar-global`: winners return to the calendar as base templates.
- `09-customer-insight-global`: check patterns against insight to explain why something worked.

## Quality checklist

- Post-level data present — no auditing on impressions of the whole period.
- Primary metric chosen per objective group (TOFU / MOFU / BOFU judged differently).
- Percentile classification applied: top 20 / bottom 20 / middle 60, within channel and group.
- Like compared with like — organic separated from boosted.
- Pattern analysis covers all 5 axes: pillar, format, hook, publish time, length.
- Every winner and loser carries a "why" hypothesis checked against insight.
- Recommendations split into three groups: do now / stop / test next.
- Every action has an expected impact or a measurement method.
- KPI comparison includes prior period, plus a published benchmark where one exists and a trailing self-baseline where one does not.
- Winner structures documented as reusable templates.
- `40-next-content-plan-global` scheduled to run immediately after.
