---
name: 64-team-brief-global
description: "Use when a leader needs to assign work to a marketing team member or run a cross-functional meeting: a task brief with concrete deliverables, a deadline with a time and timezone, a definition of done, constraints, and check-in points, plus an async-first meeting template. Trigger on 'assign a task', 'brief for my team', 'team brief', '1:1 brief', 'definition of done', 'meeting agenda template', or 'marketing standup agenda'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "assign a task"
  - "brief for my team"
  - "team brief"
  - "1:1 brief"
  - "definition of done"
  - "meeting agenda template"
  - "marketing standup agenda"
  - "delegate work to the team"
output: "File .md — a task brief by role (writer / designer / media buyer / channel owner) or meeting notes with an agenda and action items carrying owners and deadlines"
related:
  - product-marketing-context-global
  - 02-campaign-brief-global
  - 62-marketing-review-global
  - 65-team-performance-review-global
  - 41-campaign-asset-list-global
  - 67-agency-vendor-brief-global
---

# Team Brief and Meeting Template (Global)

> A good brief means the recipient knows exactly what to make, by when, and what "done" looks like. "Make some good content" is not a brief. "Write 3 Facebook captions on the pain angle, 200 words each, submitted Wednesday before 9:00 CET" is. Thirty minutes writing a proper brief saves three hours of rework.

## Information gathering

Read `.agents/product-marketing-context-global.md` and the current campaign brief if available. If missing, ask up to 4 questions:

1. **What is the task, and which campaign or objective does it serve?** Describe the deliverable concretely.
2. **Who is it assigned to, and do they have capacity?** What role (writer, designer, media buyer, sales)?
3. **What is the real deadline?** A date and a time with a timezone — "end of week" and "ASAP" are not deadlines.
4. **What does "done" mean?** Measurable acceptance criteria, and where the work gets submitted.

## Principles

1. **Deadlines carry a time and a timezone.** On a distributed team, "Friday" means five different moments. Write "Friday 17:00 UTC" and let people convert.
2. **Important tasks get a written brief.** Do not brief verbally and then blame the maker for getting it wrong.
3. **State what is NOT needed.** This blocks over-delivery and scope drift.
4. **Briefing is not micromanaging.** Lock the output and the standard, respect how the person works.
5. **Repeated misses mean the brief is broken.** If the same person keeps missing, fix the brief before fixing the person.
6. **Two-way confirmation.** The task is not assigned until the recipient confirms they understand it and accept the deadline.

## Workflow

### 1. Scope the task and check the recipient

Check capacity before assigning: how many tasks do they hold, and which deadline comes first? If they are overloaded, choose between moving the deadline, cutting the scope, or reassigning — do not stack work and hope they absorb it.

### 2. Write the brief using the role template

Pick the role template below. Every brief needs: context (why), deliverable (what), done criteria (when it is finished), references (a good example and an anti-example), and constraints (hard limits).

### 3. Set check-in points for complex tasks

For tasks over 3 days or with multiple deliverables, set a draft checkpoint for a mid-way review. Do not discover at the deadline that the work went in the wrong direction.

### 4. Assign and confirm

Ask "any questions?", get explicit confirmation of understanding and of the deadline, and set a follow-up reminder one day before it is due. On async teams, this confirmation happens in writing in the task thread so the record exists.

### 5. Accept against the done criteria

Check the output against the checklist in the brief. If it misses, say which criterion it missed — no vague reactions. To approve content or ads use `62-marketing-review-global`; to approve visuals use `47-design-review-global`.

## Output structure — Task brief

```markdown
# Task Brief — [Task name]

Assigned to: [name] · Assigned by: [leader] · Date: [date]
Deadline: [day, date, time + timezone]
Priority: Urgent / High / Normal

## Why this task matters
[2-3 sentences: which campaign or objective it serves, why the deadline matters]

## What to produce
| # | Deliverable | Detailed spec | Format | Quantity |
|---|-------------|---------------|--------|----------|
| 1 | | | | |
| 2 | | | | |

**Not in scope:** [list explicitly what is out of scope]

## Definition of done
- [ ] [Criterion 1 — measurable, not vague]
- [ ] [Criterion 2]
- [ ] Submitted to: [folder / channel / method]

## Reference material
- Brand voice / brand guideline: [link]
- Campaign brief: [link]
- Good reference: [link + why it is good]
- Anti-reference, do NOT copy: [link + why]

## Constraints
- [Hard limits: banned words, claims that cannot be made, mandatory format]

## Check-in points
- [Date]: submit first draft for review
- [Date]: final after feedback
- If blocked or unsure: raise it immediately, do not guess
```

## Role templates

**Writer:** task (quantity + format + angle + platform) · tone (with a concrete reference) · one-sentence key message · must include (social proof / CTA / data) · length · deadline · where to submit.

**Designer:** task (quantity + format + platform) · pixel dimensions · exact copy to paste · brand reference · visual reference · mood in two adjectives · deadline · file format and submission folder. For a full asset breakdown, run `41-campaign-asset-list-global`.

**Media buyer:** task (campaign name + platform) · objective · audience (link the audience research) · creative (link the approved files) · daily budget · KPI targets (max CPA / min ROAS) · launch date · reporting cadence.

**Sales / support:** task · lead source · response SLA · reference script · what must be logged in the CRM · criteria for handing a lead back to marketing.

## Cross-functional meeting template (async-first)

Distributed teams should default to written updates and reserve live time for decisions only. Circulate the pre-read at least 12 hours before the call so people in other timezones can comment in writing.

```markdown
# Meeting notes — [Topic] — [Date]

Attendees: [name + function] · Chair: [name] · Notetaker: [name]
Duration: [30-45 minutes] · Timezone: [reference timezone + local equivalents]

## Pre-read (circulated [X] hours before)
- Results vs target: [link to dashboard or report]
- Written updates from anyone who cannot attend live: [link to thread]

## Agenda (live time = decisions only)
| # | Topic | Presenter | Time |
|---|-------|-----------|------|
| 1 | Questions on the pre-read | | 5 min |
| 2 | Blockers | | 15 min |
| 3 | Decisions to make | | 20 min |
| 4 | Assignments for next period | | 5 min |

## Decisions made
| Decision | Basis (data/insight) | Accountable | Revisit when |
|----------|----------------------|-------------|--------------|

## Action items
| Task | Owner | Deadline (with timezone) | Done when |
|------|-------|--------------------------|-----------|

## Open questions
| Question | What is needed to decide | Owner | Due |
```

Meeting rules: do not meet to report numbers — send them in writing beforehand. Meet only to make decisions and clear blockers. Every meeting ends with action items that have owners and deadlines; if it does not, the meeting did not need to happen. Publish the notes in the shared channel within 24 hours so people in other timezones are not dependent on being in the room.

## Related skills

- `02-campaign-brief-global`: source of campaign context for writing task briefs.
- `41-campaign-asset-list-global`: the asset list handed to the designer.
- `62-marketing-review-global`: approval gate for content and ads after delivery.
- `47-design-review-global`: approval gate for visuals.
- `65-team-performance-review-global`: on-time rate and revision counts come from brief history.
- `67-agency-vendor-brief-global`: use instead when the recipient is an agency or freelancer rather than an employee.

## Quality checklist

- [ ] Deadline carries a date, a time, and a timezone
- [ ] Deliverables have quantity, format, and spec — nothing vague
- [ ] Contains a "not in scope" section to block scope drift
- [ ] Definition of done is measurable, not a feeling
- [ ] Includes a good reference and an anti-reference
- [ ] States exactly where the work is submitted (folder / channel)
- [ ] Asked "any questions?" and received written confirmation from the recipient
- [ ] Follow-up reminder set one day before the deadline
- [ ] Meetings have a pre-read, decisions-only live time, and notes published within 24 hours
