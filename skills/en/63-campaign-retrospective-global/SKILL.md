---
name: 63-campaign-retrospective-global
description: "Use when a campaign has ENDED and the team needs a structured retrospective — a scorecard against target, what worked, what did not, and why with evidence, surprises, process review, lessons written back into the playbook and Brand Hub, and action items with owners. Trigger on 'campaign retrospective', 'campaign retro', 'post-mortem', 'campaign debrief', 'what worked and what did not', 'the campaign is over, what did we learn'. Also use when a campaign underdelivered and the team is arguing about why. Not for — a periodic performance report, see `07-marketing-report-global`; diagnosing live numbers mid-flight, see `03-performance-eval-global`; the next period ads plan, see `57-next-ads-plan-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "campaign retrospective"
  - "campaign retro"
  - "post-mortem"
  - "campaign debrief"
  - "what worked what did not"
  - "lessons from the campaign"
  - "campaign wrap-up"
output: "File .md — full retrospective: scorecard, what worked / did not / surprises, process review, playbook and Brand Hub updates, input for the next campaign, action items with owners"
related:
  - 07-marketing-report-global
  - 60-launch-playbook-global
  - 02-campaign-brief-global
  - 34-ai-marketing-os-global
  - 65-team-performance-review-global
---

# Campaign Retrospective (Global)

> A retrospective is not for assigning blame — it is how the team and the system get better after every campaign. The best insight comes from failure, but only if it is safe to speak honestly. A retro with no action is wasted time: every lesson must become one concrete change in the playbook, the Brand Hub, or the process.

## Information gathering

Ask up to 4 questions:

1. **Which campaign, and over what dates?** Name, start and end dates, original objective.
2. **Final data:** revenue, leads, CPA, ROAS, spend — final numbers versus target. (If a report already exists from `07-marketing-report-global`, use it as the input.)
3. **Who attends the retro?** Content, performance, design, sales, leader?
4. **How long ago did the campaign end?** Run the retro within 5 days of the end, while memory is fresh.

## Principles

1. **Mandatory after every major campaign.** No skipping because the team is busy. No retro means paying tuition without learning the lesson.
2. **Record only claims backed by data.** "Creative A felt strong" is not an insight; "creative A hit $18 CPA against a $28 account average" is.
3. **No individual blame.** Talk about systems and process. Everyone has the floor.
4. **Every lesson becomes one concrete change** — to the playbook, a template, the Brand Hub, or a process — with an owner and a deadline.
5. **Document so it still makes sense in 6 months** — and link the retro into the next campaign's brief.

## Workflow

### 1. Prepare (before the session)

- Pull final data: revenue, leads, CPA, ROAS, spend, timeline adherence, budget variance.
- Send the data to the team before the meeting — the meeting is for discussion, not for reading numbers.
- Book 60 minutes with a named facilitator (usually the leader). For distributed teams, pick a time that works across the relevant timezones and require written pre-reads from anyone who cannot attend live.

### 2. Campaign scorecard

| KPI | Target | Actual | % achieved | vs previous campaign |
|-----|--------|--------|------------|----------------------|
| Revenue | | | | |
| Leads | | | | |
| CPA | | | | |
| ROAS | | | | |
| Spend | | | | |
| Timeline (on schedule?) | | | | |
| Budget (within plan?) | | | | |

Overall verdict: **Success** (>90% of KPIs) / **Mixed** (60-90%) / **Miss** (<60%).

When comparing against category benchmarks, use the right region and industry row in `references/benchmarks-global.md` — and adjust for seasonality before declaring a CPA increase a failure, since Q4 media costs run materially above Q1.

### 3. What worked (repeat next time)

| # | What worked | Evidence (numbers) | Why it worked | How to apply next time |
|---|-------------|--------------------|---------------|------------------------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

Name the winning patterns explicitly:

- Content angle: which angle converted best
- Creative format: video / image / carousel — which performed
- Audience: which segment responded
- Timing: which day or hour performed best
- Channel: best CPA and ROAS

### 4. What did not work (avoid next time)

| # | What failed | Evidence | Root cause | Decision: stop / fix / retest |
|---|-------------|----------|------------|-------------------------------|
| 1 | | | | |
| 2 | | | | |

Root cause must go past the symptom. "The ads were bad" is not a root cause; "audience overlapped with the previous campaign > frequency rose above 4 > CTR fell below 1%" is.

### 5. Surprises

- **Positive surprises:** what beat expectations, by how much, why — what do you take from it?
- **Negative surprises:** what came in worse, by how much, why — how do you prevent it?

### 6. Process and execution review

| Item | Assessment | Problems hit | Improvement |
|------|------------|--------------|-------------|
| Brief quality | | | |
| Timeline adherence | | | |
| Team communication | | | |
| Review and approval process | | | |
| Launch-day execution | | | |
| Data and tracking setup | | | |

Biggest process bottleneck: the single thing most worth fixing next time.

### 7. Team callouts

Record specific contributions: [Name] — [the specific contribution and its positive impact on the result]. Recognize publicly, correct privately.

### 8. Playbook and Brand Hub updates plus action items

| Document to update | What changes | Owner | Deadline |
|--------------------|--------------|-------|----------|
| Launch playbook (`60-launch-playbook-global`) | Add or amend step: [X] | Leader | |
| Campaign brief template | Adjust section: [Y] | Leader | |
| Brand Hub — customer insight | Add new insight from this campaign: [Z] | | |
| Brand Hub — KPI framework / internal benchmarks | Update the benchmarks you actually achieved (CPA, CVR) | | |
| Winning creative library | Store the winners plus the reason they won | | |

Every action item needs an owner and a deadline — never "the whole team will handle it."

### 9. Input for the next campaign

- 3 things to definitely repeat: 1... 2... 3...
- 3 things to definitely do differently: 1... 2... 3...
- Hypothesis to test next campaign: [hypothesis + how it will be measured]

## Facilitation guide

- **Timing:** within 5 days of campaign end.
- **Format:** 60 minutes, full team, facilitator (leader): 10 min scorecard > 15 min what worked > 15 min what did not > 10 min process > 10 min action items and owners.
- **Ground rules:** no individual blame, systems and process only; everyone speaks; constructive, not a venting session.
- **After:** the leader publishes the document within 24 hours, shares it with the team and leadership, and links it into the next campaign brief.

## Output structure

File name: `campaign-retro-[campaign-name]-[YYYYMMDD].md` — the 9 sections above: scorecard > what worked > what did not > surprises > process review > team callouts > playbook and Brand Hub updates > input for the next campaign > action items with owners.

## Related skills

- `07-marketing-report-global`: the final report supplies the scorecard data.
- `60-launch-playbook-global`: execution lessons are written directly back into the playbook.
- `02-campaign-brief-global`: the "lessons from the previous campaign" section of a new brief comes from this retro.
- `34-ai-marketing-os-global`: new insights and real benchmarks are written into the Brand Hub.
- `65-team-performance-review-global`: team callouts and observations feed individual reviews at period end — keep the two documents separate.

## Quality checklist

- [ ] Retro run within 5 days of campaign end
- [ ] Scorecard covers all KPIs against target with a Success/Mixed/Miss verdict
- [ ] Every "what worked" and "what did not" entry has numeric evidence — no impressions
- [ ] Failures trace to a real root cause, not a symptom
- [ ] Benchmark comparisons adjusted for region, industry, and season
- [ ] At least one playbook update and one Brand Hub update
- [ ] Every action item has an owner and a deadline
- [ ] 3 things to repeat, 3 things to change, and a hypothesis for next time
- [ ] No individual blame anywhere in the document
- [ ] Document shared within 24 hours and linked into the next campaign brief
