---
name: 67-agency-vendor-brief-global
description: "Use when briefing or managing an external agency, freelancer, or production vendor: scope of work, deliverable specs, revision rounds, approval process, USD payment milestones, IP assignment and confidentiality terms, and a post-project vendor scorecard. Trigger on 'brief an agency', 'hire a freelancer', 'manage a vendor', 'scope of work', 'the agency is not delivering', 'onboard a new vendor', or 'brief a production house'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "brief an agency"
  - "hire a freelancer"
  - "manage a vendor"
  - "scope of work"
  - "the agency is not delivering"
  - "onboard a new vendor"
  - "brief a production house"
  - "vendor scorecard"
output: "File .md — a brief complete enough that the agency delivers correctly without five meetings: scope, specs, timeline, payment, IP, evaluation"
related:
  - 64-team-brief-global
  - 02-campaign-brief-global
  - 41-campaign-asset-list-global
  - 61-budget-planning-global
  - 47-design-review-global
  - 62-marketing-review-global
---

# Agency and Vendor Brief (Global)

> Agencies usually deliver the wrong thing not because they are bad, but because the brief was thin and expectations never matched. A good brief means fewer revisions, on time, on budget. Treat the vendor as a professional partner rather than hired hands: a clear brief plus clear feedback produces the best work.

## Information gathering

Read the campaign brief (`02-campaign-brief-global`) and the asset list (`41-campaign-asset-list-global`) if available. If missing, ask up to 4 questions:

1. **What exactly are you hiring for?** Video production, design, media buying, PR, creator booking, landing page development?
2. **Timeline and hard deadline?** Start date and the date the final must exist.
3. **Approved budget in USD?** Is tax included, and what are the payment terms (net 15, net 30, milestone-based)?
4. **What specific deliverables must you receive, and who is the single point of contact on your side?**

## Principles

1. **Always brief in writing.** No matter how good the relationship, a verbal brief gives you nothing to point at in a dispute.
2. **Feedback comes from ONE person.** Multiple simultaneous reviewers confuse the vendor and stretch revision cycles.
3. **Fix the number of included revision rounds.** Unlimited revisions disrespects both sides' time.
4. **State what is NOT included.** This is the only reliable way to stop scope creep.
5. **Pay by milestone.** Never pay 100% before work starts.
6. **Score the vendor after every project.** Build an internal database so the next selection is fast and correct.

## Workflow

### 1. Prepare before sourcing

Lock four things: a measurable project objective, a budget ceiling, a hard deadline, and the minimum acceptable deliverable. If those four are not clear, you are not ready to brief an agency.

### 2. Write and send the brief

Use the template below. Send it with the brand guideline, the brand voice document, and 3-5 good references plus the references you do not want.

### 3. Collect quotes and lock scope

Compare quotes against the same scope, not on headline price. Confirm in writing: scope, number of revision rounds, timeline, payment milestones, and the contract terms in section 9.

### 4. Run the project

Keep one point of contact on each side. Give feedback within the window you committed to — if the agency slips because your feedback was late, that is on you. Feedback must be specific and actionable, never "make it better".

### 5. Accept and evaluate

Check delivery against the deliverable spec. Approve visuals through `47-design-review-global` and content through `62-marketing-review-global`. After final payment, score the vendor and file it in the database.

## Output structure

```markdown
# Agency/Vendor Brief — [Project name]

## 1. Project information
| Item | Detail |
|------|--------|
| Project name | |
| Client | [Company] — [Owner] — [Email/phone] |
| Vendor | [Name] — [Contact person] — [Email] |
| Type of work | |
| Start date / deadline | |
| Total budget (USD, tax treatment stated) | |

## 2. Context and objective
About the brand: [2-3 sentences — who the brand is, what it is doing, how this project fits the strategy]
Project objective: [one measurable sentence — e.g. "5 UGC videos to test as paid creative on Meta, target CTR above 2%"]

| Metric | Target | How measured | Due |
|--------|--------|--------------|-----|

## 3. Scope of work
| # | Deliverable | Detailed spec | Output format | Quantity |
|---|-------------|---------------|---------------|----------|

Revisions included: [N] rounds against consolidated feedback. Additional rounds: [$X] per round.

**NOT included:** [list explicitly to block scope creep]

## 4. Brand guidelines to follow
- Palette / typography / logo: [link to brand kit — use the brand's own tokens, no substitutions]
- Tone of voice: [link to brand voice doc]
- Good references: [3-5 links + why]
- Anti-references, do NOT copy: [link + why]

## 5. Deliverable spec
| Deliverable | Platform | Size / ratio | Duration | File format | Language / locale |
|-------------|----------|--------------|----------|-------------|-------------------|

## 6. Approval process
| Round | Vendor submits | Your feedback due | Note |
|-------|----------------|-------------------|------|
| Draft | | +2 business days | |
| Revision | | +1 business day | |
| Final | | | Hard deadline |

Approval authority: creative — leader; budget change — leadership; timeline extension — leader under 3 days, leadership over 3 days.

## 7. Payment (USD)
| Milestone | % | Amount | Condition | Payment term |
|-----------|---|--------|-----------|--------------|
| Contract signed | 30% | | Contract executed | Before work starts |
| Draft approved | 40% | | Draft accepted | Net 15 |
| Final delivered | 30% | | Final accepted | Net 30 |

Confirm with finance before signing: tax treatment (US contractors need a W-9, non-US vendors a W-8BEN; EU vendors may invoice with VAT or under reverse charge), currency of payment, and who absorbs transfer fees.

## 8. Communication
Single point of contact: [your side] / [vendor side]. Primary channel: [email / Slack / project tool]. Meeting cadence: [weekly / per milestone]. Your feedback SLA: [N] business days. Working timezones for both sides: [list].

## 9. Contract terms — IP, confidentiality, and liability
Agree these in writing before work starts. Standard practice in US and EU engagements:

- **IP assignment.** State that all deliverables and the underlying working files are assigned to the client on full payment. In the US, "work made for hire" only covers specific statutory categories, so contracts normally pair the work-for-hire language with an explicit present assignment of all rights as a fallback. In much of the EU, moral rights cannot be assigned and are instead waived or licensed to the extent local law permits.
- **Third-party material.** The vendor warrants that fonts, stock footage, music, and AI-generated assets are properly licensed for the intended commercial use, and identifies anything with a restricted or time-limited license.
- **Talent and model releases.** Signed releases for every person appearing on camera, covering the territories and channels you will run in, and the intended usage period.
- **Confidentiality / NDA.** Project information is confidential and not shared with third parties. The vendor does not post the work to a portfolio or social channel without written consent.
- **Data protection.** If the vendor touches customer data, agree the processing terms your counsel requires before any data is shared.
- **Indemnity and liability cap.** Both are commonly negotiated in US and EU contracts: the vendor typically indemnifies the client against third-party IP claims, and liability is often capped at the fees paid. Where the cap sits, and what is carved out of it, is a negotiation — have counsel review it.
- **Post-acceptance revisions** are billed separately.

These are the points to cover, not legal advice. Have counsel review the contract before signing.

## 10. Post-project vendor scorecard
| Criterion | Score 1-5 | Note |
|-----------|-----------|------|
| Output quality | | |
| On-time delivery | | |
| Communication | | |
| Response speed | | |
| Value for money | | |
| **Overall** | | |

Use again: Yes / No — reason.
```

## Vendor red flags

- Accepts the brief without asking a single question — they probably did not read it closely.
- Timeline "whenever works for you" — no self-committed deadline.
- No single point of contact; several people reaching out separately.
- Promises unlimited revisions — usually paired with a weak first round.
- Demands 100% payment before starting.
- Quote far below market — usually missing scope, or it will resurface as change orders.
- Will not accept IP assignment or a confidentiality clause.
- Cannot show licensing provenance for stock, music, or AI-generated assets.

## Related skills

- `02-campaign-brief-global`: campaign context for the background and objective sections.
- `41-campaign-asset-list-global`: the deliverable list you are outsourcing.
- `61-budget-planning-global`: set the budget ceiling before briefing.
- `47-design-review-global` and `62-marketing-review-global`: acceptance gates for the delivered output.
- `64-team-brief-global`: use instead when the recipient is an internal employee rather than a vendor.

## Quality checklist

- [ ] Project objective is measurable, not "make something good"
- [ ] Scope states both what is included and what is NOT
- [ ] Number of included revision rounds is explicit
- [ ] Deliverables have full technical specs (size, format, duration, language)
- [ ] Timeline covers both vendor submission dates and your feedback deadlines
- [ ] Payment split into milestones in USD, nothing paid fully in advance
- [ ] IP assignment, confidentiality, third-party licensing, and talent releases are written down
- [ ] Indemnity and liability cap discussed and reviewed by counsel
- [ ] One point of contact named on each side, with working timezones
- [ ] Vendor scorecard completed and filed after the project
