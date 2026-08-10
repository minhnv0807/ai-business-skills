---
name: 33-b2b-lead-gen-global
description: "Use when the user needs B2B pipeline work — ICP and account lists, prospecting, cold email and LinkedIn outbound sequences, lead scoring, MQL to SQL handoff, sales decks, objection handling, demo scripts, CRM pipeline hygiene, and RevOps reporting. Trigger on 'find leads', 'prospect list', 'cold email sequence', 'outbound campaign', 'lead scoring model', 'our pipeline is empty', 'sales deck for enterprise buyers'. Also use when the user has a strong product and no route to the companies that need it. Not for — consumer lifecycle email, see `14-email-marketing-global`; the offer being sold, see `31-offer-design-global`; positioning against rivals, see `58-positioning-global`; inbound content, see `36-content-brief-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "prospecting"
  - "lead gen"
  - "cold email"
  - "outbound"
  - "sales enablement"
  - "lead scoring"
  - "MQL"
  - "SQL"
related:
  - product-marketing-context-global
  - 08-competitor-research-global
  - 09-customer-insight-global
  - 14-email-marketing-global
  - 31-offer-design-global
---

# B2B Lead Gen (Global)

This skill connects marketing to sales: define ICP, find accounts and contacts, score leads, write outreach, create sales assets, and set MQL/SQL handoff. The goal is qualified pipeline, not a large email list.

## Information gathering

Read `.agents/product-marketing-context-global.md` if available. Ask up to 4 questions: ICP, deal size/ACV, target market/region, and current outbound channels. Use CRM exports or existing lists as baseline when available. For deeper guidance, read `references/b2b-lead-gen-playbook.md`.

## Pick the mode

| User needs | Mode |
|------------|------|
| "Find prospects" | Prospecting |
| "Write outreach emails" | Cold outreach |
| "Score leads" | Lead scoring |
| "Handoff to sales" | RevOps handoff |
| "Build a sales deck / objections" | Sales enablement |

## Workflow

### 1. Define ICP

Clarify:

- Firmographic: industry, size, revenue, region.
- Trigger: funding, hiring, expansion, tool usage, regulation, churn signal.
- Pain: problem with budget behind it.
- Exclusion: who should not be targeted.

### 2. Map lead sources

| Source | Best for |
|--------|----------|
| LinkedIn/Sales Nav | B2B role/title targeting |
| Apollo/Clay/ZoomInfo | Account and contact data |
| Google Maps/local directories | Local SMB |
| GitHub/job posts | Devtool/SaaS intent |
| G2/Capterra/review sites | Competitor/category demand |
| Website visitors/forms | Warm intent |

### 3. Score and prioritize

Use 100 points:

| Group | Points |
|-------|--------|
| ICP fit | 35 |
| Intent trigger | 25 |
| Pain/proof | 15 |
| Contact quality | 15 |
| Timing | 10 |

Only push to outreach when score is at least 60/100.

### 4. Write outbound sequence

Default 4-touch sequence:

1. Email 1: pain + relevance + soft CTA.
2. Email 2: proof/case + short question.
3. Email 3: value asset or mini-audit.
4. Breakup: permission to close the loop.

Avoid spam, exaggerated claims, and fake personalization.

### 5. Create sales enablement

For high-potential accounts, create:

- Persona-specific one-pager.
- Objection handling sheet.
- Demo talk track.
- Simple ROI calculator.
- Proposal outline.

### 6. Handoff to sales/CRM

Every lead should have:

- Source, score, trigger, pain, suggested opener.
- Owner, next step, follow-up SLA.
- Status: New, Working, Meeting Booked, SQL, Opportunity, Closed.

## Output template

```markdown
# B2B Lead Gen Plan — [Brand]

## 1. ICP
| Segment | Fit criteria | Pain | Exclusion |

## 2. Lead sources
| Source | Query/filter | Data needed | Owner |

## 3. Scoring model
| Signal | Points | Why it matters |

## 4. Prospect table
| Account | Contact | Trigger | Score | Suggested opener | Next step |

## 5. Outreach sequence
### Email 1
Subject:
Body:

### Follow-ups

## 6. Sales enablement assets
| Asset | Persona | Purpose | Draft notes |

## 7. CRM handoff
| Stage | Entry criteria | Owner | SLA |
```

## Related skills

- `09-customer-insight-global`: persona, pain, JTBD.
- `31-offer-design-global`: B2B/high-ticket offer.
- `14-email-marketing-global`: nurture after capture.
- `08-competitor-research-global`: competitor triggers and alternative positioning.

## Quality checklist

- Lead list includes reasons to buy, not just emails.
- Exclusion criteria are explicit.
- Outreach has real relevance, not fake merge-field personalization.
- Compliance: opt-out, no unlawful scraping or spam.
- Sales handoff has owner and SLA.
- Output has a clear 48-hour next action.
