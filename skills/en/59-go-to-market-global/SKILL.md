---
name: 59-go-to-market-global
description: "Use when the user needs a go-to-market plan for a new product, offer, or course: beachhead segment selection, launch messaging, channels by phase across pre-launch, launch, and post-launch, milestones, and go/no-go criteria. Trigger on 'go-to-market', 'GTM plan', 'product launch plan', 'launch plan', 'launching a new product', 'beachhead segment', or 'GTM strategy'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "go-to-market"
  - "GTM plan"
  - "GTM strategy"
  - "product launch plan"
  - "launch plan"
  - "launching a new product"
  - "beachhead segment"
  - "new offer launch"
output: "File .md — full GTM plan: beachhead segment, launch message, channels by phase, pre-launch to post-launch timeline, milestones, go/no-go criteria"
related:
  - product-marketing-context-global
  - 58-positioning-global
  - 31-offer-design-global
  - 60-launch-playbook-global
  - 10-reverse-kpi-global
  - 61-budget-planning-global
  - 02-campaign-brief-global
---

# Go-To-Market Plan (Global)

> A launch is not a one-day event. It is a three-phase process: prepare, launch, sustain. Failed launches usually are not caused by a weak product — they are caused by nobody knowing, nobody believing, and nobody buying at the right moment. Run `58-positioning-global` and `31-offer-design-global` first to lock the message and the offer; run `60-launch-playbook-global` afterwards for the detailed execution checklist.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the positioning doc, and the offer doc if available. If missing, ask up to 4 questions:

1. **What is being launched?** Price, early-bird or bundle pricing, and any capacity limit.
2. **Who is the primary audience: who are they, where are they, what are they thinking?** Do you already have a warm base (followers, email list, past customers)?
3. **Timeline and budget:** exact launch date? Budget allocated to the launch?
4. **Team and competitors:** who do you have (writer, designer, media buyer, agency)? Does a competitor already sell something similar, and how are they positioned?

## Principles

1. **Never launch cold.** Start warming the audience at least 2 weeks before launch — teasers, community seeding, email warm-up.
2. **Beachhead first, expand later.** Pick one segment small enough to win and large enough to sustain you. Win there, then move to the next. Always plan from SOM (what you can actually reach in 3-6 months), never from TAM.
3. **One core message throughout.** Every launch asset reflects the same message, taken from the positioning statement.
4. **Have a plan B.** Launch day brings technical failures (page down, ad rejection, payment errors). Have the fallback ready in advance.
5. **No-go is a valid decision.** Launching at the wrong time is worse than launching late. Only the leader decides go/no-go — never delegate it.

## Workflow

### 1. Choose the beachhead segment

Score 2-3 candidate segments (1-5 per question, 45 max):

| Criteria group | Scoring questions |
|----------------|-------------------|
| Market need | Is the pain clear and growing? Is search or discussion volume high? Is the market durable rather than a passing trend? |
| Competition | Are there large incumbents? Have they saturated the channels? Is there a niche nobody addresses clearly? |
| Reachability | Do you already have a fitting channel or list? Can you test it on a small budget? Can the buyer decide quickly? |

Decision: 30+ points means launch on this beachhead. 25-30 means reconsider or narrow further. Below 25 means revisit the product or the segment.

Signals of a high-value beachhead customer: high LTV, low churn, active referrals. Filter question: "If this product disappeared tomorrow, what would you do?" The more painful the answer, the better the segment.

### 2. Lock the offer and the launch message

Offer summary (from `31-offer-design-global`):

| Item | Detail |
|------|--------|
| Product name | |
| List price / early bird / bundle | |
| Sales window and capacity limit | |
| Guarantee | |
| USP — one sentence of difference | |

Launch message hierarchy — 5 layers, used in this order inside every asset:

1. **Hook** (pain or desire) > 2. **Solution** (why this product) > 3. **Proof** (evidence) > 4. **Offer** (exactly what they get) > 5. **Urgency** (why buy now).

Required audience insight: persona, pain point, desire, primary objection, buying trigger. In US/EU markets the dominant objection is usually credibility and reviews rather than price — plan proof accordingly.

### 3. Set channels by phase

| Channel | Phase | Content | KPI |
|---------|-------|---------|-----|
| Meta (Facebook + Instagram) | Pre + Launch | Teaser > announce > urgency | Reach, leads |
| TikTok | Pre + Launch | Hook video, testimonial, creator content | Views, CTR |
| Email + SMS (Klaviyo, Mailchimp, Attentive) | Pre + Launch | Warm-up sequence > offer > last call | Open rate, CVR |
| Community seeding (Reddit, Discord, Slack, niche forums) | Pre-launch | Problem-aware content, no offer reveal | Engagement, saved posts |
| Google Search / Shopping | Launch | High-intent and brand keywords | CVR, ROAS |
| Affiliates / partners / creators | Launch | Co-promotion with tracked links | Attributed revenue |

Selection rule: you need both a REACH channel (drives traffic) and a CONVERT channel (closes). One channel rarely does both. Prioritize where the beachhead already spends time and where you have a real advantage.

### 4. Build the three-phase timeline

**PRE-LAUNCH (T-4 to T-1 weeks):**

| Week | Activity | Owner | Output |
|------|----------|-------|--------|
| T-4 | Offer finalized, landing page live | Leader + dev | Page live, tracking verified |
| T-3 | Produce teaser content (3-5 pieces) | Content | Posts ready |
| T-2 | Start seeding and warm-audience ads | Content + performance | Engagement, custom audiences |
| T-1 | Email/SMS pre-launch sequence | Leader | Warm list |
| T-3 days | Ads built and verified, tracking checked | Media buyer | Campaigns in Paused state |
| T-1 day | Full funnel final check > go/no-go | Leader | GO decision |

**LAUNCH WEEK:**

| Day | Activity | Channel | Owner |
|-----|----------|---------|-------|
| D-day morning | Official announcement | All | Leader |
| D-day | Turn on BOFU ads | Meta, TikTok, Google | Media buyer |
| D+1 | Follow-up email to non-buying leads | Email/SMS | Leader |
| D+2 | Social proof — first customer reviews | Social | Writer |
| D+3 | Media buyer report > scale, hold, or cut | — | Leader |
| D+5 | Urgency push — remaining capacity or bonus deadline | All | Leader |
| D+7 | Close cart — final email and post | Email + social | Leader |

**POST-LAUNCH (D+8 to D+14):** compile results (revenue, leads, ROAS, CPA), collect customer feedback to improve the product and capture testimonials, run the team retrospective, and decide whether to convert the campaign to evergreen.

### 5. Milestones and go/no-go

| Milestone | Timing | Pass criteria |
|-----------|--------|---------------|
| M1 — Offer + page ready | T-4 | Page live, tracking verified, offer locked (price, bonuses, deadline) |
| M2 — Audience warm | T-1 | Warm base large enough: [X] engagers / [Y] email subscribers / custom audience >= [Z] |
| M3 — Go/no-go | T-1 day | Passes the checklist below |
| M4 — Mid-launch check | D+3 | CPA within threshold, first orders landed |
| M5 — Close + retro | D+7 to D+14 | >= [X]% of target hit, retrospective complete |

**Go/no-go checklist (T-1 day, leader signs off):**

- [ ] Tracking fully working (pixel fires, server-side events, UTMs complete)
- [ ] Payment tested end to end (card, PayPal, and any wallet you accept)
- [ ] All links resolve, no 404s
- [ ] Offer copy correct (price, bonuses, deadline), and every claim substantiated
- [ ] Consent and privacy in place: cookie/consent banner, GDPR/CCPA notices, CAN-SPAM unsubscribe in every email
- [ ] Team confirmed ready, inbox coverage staffed across the relevant timezones
- [ ] Plan B documented for technical failure

Any missing item means NO-GO. Do not launch "roughly ready" and fix later.

### 6. Success metrics

| Metric | Target | How measured |
|--------|--------|--------------|
| Launch-week revenue | | |
| Orders / seats sold | | |
| CPL / CPA | | |
| ROAS | | |
| Email open rate | | |
| Landing page CVR | | |

Derive targets backwards from the revenue goal using `10-reverse-kpi-global` — never set targets by feel. Benchmark against `references/benchmarks-global.md` for the relevant region and industry; a US launch and an SEA launch are not comparable at face value.

## Output structure

File name: `gtm-plan-[product-name]-[YYYYMMDD].md`

```markdown
# GTM Plan — [Product] — Launch [date]

## 1. Product and offer summary
| Name / price / early bird / capacity / guarantee / USP |

## 2. Beachhead segment
- SOM score: [X]/45 — decision:
- Persona + pain + desire + objection + trigger:

## 3. Positioning and messaging
- Core message (one sentence):
- Message hierarchy: Hook > Solution > Proof > Offer > Urgency

## 4. Channel plan by phase
| Channel | Phase | Content | KPI |

## 5. Timeline
[Pre-launch T-4 to T-1 | Launch week D-day to D+7 | Post-launch D+8 to D+14]
| Checkpoint | Activity | Owner | Output | Deadline |

## 6. Milestones and go/no-go
| Milestone | Timing | Criteria |
- Go/no-go checklist T-1:

## 7. Success metrics
| Metric | Target | How measured |

## 8. Plan B
| Failure scenario | Fallback |
```

## Related skills

- `58-positioning-global`: run first — the launch core message comes from the positioning statement.
- `31-offer-design-global`: run first — the offer must be locked before GTM planning.
- `10-reverse-kpi-global`: derive lead and budget targets from the revenue goal.
- `61-budget-planning-global`: allocate the launch budget across phases.
- `60-launch-playbook-global`: run after — day-by-day execution, war room, escalation.
- `02-campaign-brief-global`: turn the GTM plan into briefs for content and performance.

## Quality checklist

- [ ] Beachhead selected by SOM scoring, not by intuition
- [ ] Offer summary complete: price, early bird, capacity, guarantee, USP
- [ ] Message hierarchy has all 5 layers: Hook > Solution > Proof > Offer > Urgency
- [ ] Channels cover both REACH and CONVERT, each with a role per phase
- [ ] Audience warming starts at least 2 weeks before launch
- [ ] Timeline covers all three phases with one owner per task
- [ ] Milestones have concrete, measurable pass criteria
- [ ] Go/no-go checklist complete, including payment, consent, and claim substantiation — leader signs off
- [ ] Success metrics derived backwards from the revenue target
- [ ] Plan B covers at least 3 failure scenarios (page down, ad rejection, payment failure)
- [ ] A retrospective is scheduled after launch (`63-campaign-retrospective-global`)
