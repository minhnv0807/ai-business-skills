---
name: 65-team-performance-review-global
description: "Use when a leader needs to evaluate a marketing team member using data: a KPI scorecard by role, strengths with real examples, areas to improve stated as observable behavior, a 30/90-day development plan, and a 1-5 rating rubric. Trigger on 'performance review', 'evaluate a team member', 'review my marketing team', 'monthly 1:1 review', 'feedback for a team member', or 'development plan for an employee'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "performance review"
  - "evaluate a team member"
  - "review my marketing team"
  - "monthly 1:1 review"
  - "feedback for a team member"
  - "development plan for an employee"
  - "KPI scorecard by role"
output: "File .md — full review: KPI scorecard, strengths, areas to improve, 30/90-day development plan, rating rubric, next steps"
related:
  - 64-team-brief-global
  - 63-campaign-retrospective-global
  - 07-marketing-report-global
  - 62-marketing-review-global
  - 47-design-review-global
---

# Team Performance Review (Global)

> A review is not a grade — it exists so the person knows what to do to get better. Feedback without data is opinion; feedback with data is coaching. There should be no surprises in a review: feedback is given continuously through the period, and the review only summarizes it.

## Information gathering

Read the brief history (`64-team-brief-global`), last period's output, and the reports (`07-marketing-report-global`) if available. If missing, ask up to 4 questions:

1. **Who is being reviewed, in what role, for what period?** Content writer / designer / media buyer / channel owner; monthly or quarterly.
2. **What KPIs were set at the start of the period?** If none were set, this review can only be qualitative — say so explicitly in the document.
3. **Concrete output data:** pieces published, assets delivered, CPA/ROAS on campaigns they own, on-time rate, revisions per task.
4. **Specific observations from the period:** 2-3 real situations (positive and negative) with dates.

## Principles

1. **No surprises.** Negative feedback is given when it happens, not saved for review day.
2. **Every statement needs evidence.** "Hard-working" is not an assessment; "on time on 9 of 10 tasks, proposed two new content angles unprompted" is.
3. **Assess behavior, not character.** Write "submitted late 3 times without notice", not "irresponsible".
4. **Rate consistently.** Apply the same standard across the team; do not let personal rapport shift the scale.
5. **A review must produce a development plan.** Without one it is just an unusable scorecard.
6. **The document is confidential.** Leader and reviewee only.

## Documentation caution

In many jurisdictions, written performance documentation carries employment-law weight and can be produced as evidence in a dispute. Write it accordingly:

- Record **observable behavior and measurable outcomes** with dates — what was delivered, when, against what agreed standard.
- Avoid subjective characterizations, comparisons to other individuals, and anything touching protected characteristics (age, gender, race, religion, disability, pregnancy, national origin, or similar).
- Do not put speculation about a person's attitude, motives, personal circumstances, or health in the document.
- Keep this review separate from any discussion of discipline, termination, or compensation changes. **This skill does not give legal or HR advice.** Anything termination-adjacent, any performance improvement plan with employment consequences, and any cross-border reporting line should go to HR or employment counsel before it is written or delivered.

## KPIs by role

| Role | Quantitative KPIs | Qualitative KPIs |
|------|-------------------|------------------|
| Content writer | Pieces per month, on-time rate, revisions per piece, engagement rate on their work | On-brand voice, sharpness of the angle, proactively proposing angles |
| Designer | Assets per month, on-time rate, share approved on the first pass, design review score | Understands briefs, follows the brand guideline, handles asset gaps |
| Media buyer | CPA vs target, ROAS, share of campaigns hitting KPI, optimization frequency | Tracking discipline, quality of the test log, flags risks early |
| Channel owner | Response SLA, share of channels set up to checklist, open and click rates | Incident handling, cross-functional coordination |

If no KPI was set for the role at the start of the period, the first action after the review is to set KPIs for the next period. Do not measure someone against a standard they never saw.

## Output structure

```markdown
# Performance Review — [Name] — [Period]

Role: [role] · Reviewer: [leader] · Date: [date]

## I. KPI scorecard
| KPI set at period start | Target | Actual | % achieved | Note |
|-------------------------|--------|--------|------------|------|
| [Role KPI 1] | | | | |
| [Role KPI 2] | | | | |
| On-time delivery rate | | | | |
| Revisions per task | | | | |

KPI summary: Met / Near / Not met — with the specific numbers.

## II. Strengths this period
| Strength | Specific example (date + situation) | Impact on the team or KPI |
|----------|-------------------------------------|---------------------------|

## III. Areas to improve
| Item | Observed behavior | Actual impact | Specific expectation |
|------|-------------------|---------------|----------------------|

## IV. Development plan
30-day goals:
- [ ] [Specific, measurable skill or behavior]

90-day goals:
- [ ] [...]

Support from the leader: [training, materials, check-in frequency]

## V. Feedback from the team member
- What do they think they contributed this period?
- What support do they need from the leader?
- What is blocking them that the leader does not know about?
- Which direction do they want to grow?

## VI. Overall rating
| Criterion | Score 1-5 | Comment |
|-----------|-----------|---------|
| Output quality | | |
| On-time delivery | | |
| Initiative | | |
| Communication and collaboration | | |
| Learning and improvement speed | | |
| **Overall** | | |

Scale: 1 = needs significant improvement · 3 = meets expectations · 5 = exceeds expectations.

## VII. Next steps
- [ ] Send the document to the reviewee within 24 hours of the 1:1
- [ ] Set a 30-day follow-up reminder
- [ ] Any compensation change: route through HR before it is stated in writing
```

## 1:1 session format (60 minutes)

| Duration | Content |
|----------|---------|
| 5 min | Ask for their self-assessment first |
| 20 min | Walk the KPIs and data together |
| 20 min | Strengths and areas to improve, listen to their response |
| 10 min | Development plan — discuss until they agree, do not impose |
| 5 min | Their feedback for the leader |

The leader prepares the document before the session and does not write it live during the meeting. For distributed teams, hold the 1:1 on video rather than in writing — written-only performance feedback reads harsher than intended and removes the chance to respond.

## Related skills

- `64-team-brief-global`: source of on-time rate and revision counts.
- `62-marketing-review-global` and `47-design-review-global`: approval outcomes serve as quantitative evidence.
- `63-campaign-retrospective-global`: the retro covers the system, this review covers the individual — never merge the two documents.
- `07-marketing-report-global`: results for the channels or campaigns they own.

## Quality checklist

- [ ] Every statement has a real example with a date or a number
- [ ] No negative feedback appears here for the first time
- [ ] Assessments describe observable behavior and measurable outcomes, not character
- [ ] No subjective characterizations, peer comparisons, or references to protected characteristics
- [ ] Development plan has 30-day and 90-day goals that are measurable
- [ ] Includes support from the leader, not only demands on the employee
- [ ] Includes a section capturing the team member's feedback upward
- [ ] Ratings use the same scale applied to everyone in the same role
- [ ] Anything termination-adjacent or compensation-related routed to HR or counsel before it is written
