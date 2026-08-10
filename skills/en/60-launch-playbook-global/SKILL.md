---
name: 60-launch-playbook-global
description: "Use when a launch needs a repeatable EXECUTION playbook — a T-30 to D+7 timeline, per-function checklists for content, design, ads, sales, and engineering, a launch-day war room, an escalation matrix, and roll-back criteria. Trigger on 'launch playbook', 'launch checklist', 'launch day plan', 'launch SOP', 'war room', 'we launch in two weeks and nothing is organized'. Also use when a GTM strategy exists and nobody knows who does what on the day. Not for — the strategy and beachhead choice, see `59-go-to-market-global`; the campaign brief, see `02-campaign-brief-global`; the post-launch review, see `63-campaign-retrospective-global`; a live crisis, see `66-crisis-playbook-global`."
metadata:
  version: 1.0.1
  category: strategy
license: MIT
triggers:
  - "launch playbook"
  - "launch process"
  - "launch checklist"
  - "launch SOP"
  - "war room"
  - "roll back launch"
  - "launch day plan"
  - "launch preparation"
output: "File .md — three-phase playbook: pre-launch T-30 to T-1, launch-day war room plus D+1 to D+7, post-launch; per-function checklists, escalation matrix, roll-back criteria"
related:
  - 59-go-to-market-global
  - 02-campaign-brief-global
  - 41-campaign-asset-list-global
  - 63-campaign-retrospective-global
  - 66-crisis-playbook-global
---

# Launch Playbook (Global)

> A playbook is not a plan. A plan is for one launch; a playbook is reusable and improves after every launch. Successful launches are not luck — they are the product of correct preparation and disciplined execution. Run `59-go-to-market-global` first for the GTM plan; this playbook is the execution layer underneath it.

## Information gathering

Read the GTM plan and the campaign brief if available. If missing, ask up to 4 questions:

1. **What is launching, and on what date?** Product or offer, exact D-day, and any blackout dates in the period.
2. **Who is on the team?** Content, design, media buying, sales/support, engineering — who can do what?
3. **What assets exist already?** Landing page, creative, email sequence, tracking — status of each.
4. **What did the last launch teach you?** Read the previous retrospective and update the playbook; never reuse the old version unchanged.

## Principles

1. **Update the playbook after every launch.** Lessons from the retrospective must land in the playbook.
2. **"No-go" is a valid decision.** Launching at the wrong time is worse than launching late.
3. **Only the leader decides go/no-go.** Never delegate it.
4. **Plan backwards from D-day.** Every task has exactly one owner and a deadline with a specific time and timezone. Keep a one-day buffer before launch for the unexpected.
5. **Ads are built and left Paused.** They go live on D-day only, never earlier.

## Phase 1 — Pre-launch (T-30 to T-1)

### T-30 to T-21: Foundation

- [ ] Offer finalized: price, bundle, guarantee, bonuses locked (no changes after this point)
- [ ] Positioning and core message locked (from `58-positioning-global` or the GTM plan)
- [ ] Landing page brief handed to design/dev
- [ ] Content team briefed: angles, hooks, visual direction
- [ ] Media buyer briefed: audience research, account structure, ads plan
- [ ] Full asset list built (run `41-campaign-asset-list-global`)
- [ ] Claim substantiation file started: every performance, health, or income claim has evidence on record

### T-21 to T-14: Build

- [ ] Landing page live, tracking verified green (pixel, server-side events, UTMs)
- [ ] Pre-launch email sequence written (3-5 emails), unsubscribe and sender identity compliant with CAN-SPAM/GDPR
- [ ] Designer has the brief and the asset list (T-14 checkpoint)
- [ ] Teaser content starts: 1-2 posts per week, problem-aware, NO offer reveal
- [ ] Warm-audience ads live (engagement objective, low CPM)
- [ ] Email #1 sent: name the problem
- [ ] Seeding in relevant communities (Reddit, Discord, Slack, niche forums) following each community's self-promotion rules
- [ ] Creators / UGC partners briefed, with disclosure requirements stated (FTC requires clear #ad or #sponsored disclosure on paid endorsements)

### T-7: Ramp up

- [ ] Teasers move to daily cadence
- [ ] Designer submits MVP concept > leader approves (T-7); complex assets such as the landing page finished by T-5
- [ ] Email #2: reveal the problem, hint at the solution
- [ ] Ads budget increased (traffic to landing page to build custom audiences)
- [ ] Social proof collected: testimonials from beta users or existing customers
- [ ] FAQ content published: handles the common objections

### T-3: Final prep

- [ ] All content approved and scheduled (medium-complexity assets — carousels, banner sets — done by T-3)
- [ ] Ads fully built and Paused, waiting for D-day
- [ ] Landing page final QA: load time, forms, payment (card, PayPal, wallets), mobile rendering
- [ ] Email #3: "Doors open [date] — want to be told first?"
- [ ] Team brief: who does what, at what hour, in which timezone (war room roster)
- [ ] Inbox coverage assigned with response scripts ready
- [ ] Fast assets (statics, stories) done by T-1

### T-1: Go / no-go check

- [ ] Tracking 100% working
- [ ] Payment tested successfully across every method offered
- [ ] All links resolve, no 404s
- [ ] Offer copy correct (price, bonuses, deadline)
- [ ] Consent, privacy notice, and unsubscribe paths verified
- [ ] Team confirmed ready
- **LEADER SIGN-OFF: GO / NO-GO** — any missing item means NO-GO

## Per-function checklist (before D-day)

| Function | Checklist |
|----------|-----------|
| Content | Captions, scripts, and creative approved by leader; hashtags and UTM links complete; schedule set or a person on duty to post; backup content if creator delivery slips |
| Design | Correct size per platform; assets follow the timeline T-14 brief > T-7 concept > T-5 complex > T-3 medium > T-1 fast; quick-asset standby on launch day |
| Ads (media buyer) | Pixel and tracking verified; campaigns built and Paused; budget matches plan; UTMs on every link; backup creative ready in case of policy rejection |
| Sales / support | Inbox coverage by shift and timezone; reply scripts for common comments and DMs; lead handoff process to sales; complaint-handling script |
| Engineering | Page loads fast, forms work, payment tested; on-call engineer on launch day; redirect plan if the page goes down |

## Phase 2 — Launch-day war room

The war room is one shared channel plus a clear on-duty roster. The leader coordinates and each function has a single point of contact. Data is checked hourly and decisions are made same-day. For distributed teams, publish the roster in a single reference timezone with local equivalents, and require written status updates at each checkpoint so no decision depends on someone being awake.

| Hour (launch timezone) | Activity | Owner |
|------------------------|----------|-------|
| T-1h | Leader runs the final check (page, tracking, schedule) | Leader |
| 0:00 | Publish the official announcement | Writer |
| +0:30 | Turn on BOFU ads (Meta, TikTok, Google) | Media buyer |
| +1:00 | Email and SMS blast: "We're live" | Leader |
| +2:00 | Data check 1: page views, form submits, ad delivery | Leader |
| +4:00 | Second post (different angle — social proof or urgency) | Writer |
| +7:00 | Mid-day review — adjust or hold | Leader |
| +12:00 | Evening push at peak time: stories, reposts | Writer |
| +15:00 | Day-1 wrap: numbers, anomalies, decisions for day 2 | Leader |

### D+1 to D+7

| Day | Activity | Owner |
|-----|----------|-------|
| D+1 | Follow-up email to non-buying leads — handle objections | Leader |
| D+1 | Mark winning and losing creative from day-1 data | Media buyer + designer |
| D+2 | Post social proof: first buyers, early results | Writer |
| D+3 | Media buyer report > leader decides scale, hold, or cut | Leader |
| D+5 | Urgency push: "X seats left" or "bonus ends [date]" | Writer + leader |
| D+7 | Last call: email, SMS, post > close cart | Leader + writer |

### Escalation matrix

| Situation | Severity | Action | Handled by |
|-----------|----------|--------|------------|
| Tracking not firing | Urgent | Pause ads, fix immediately | Media buyer + engineering |
| Landing page down | Urgent | Redirect or fix within 30 minutes | Engineering |
| Payment failing | Urgent | Notify engineering and leader immediately | Engineering |
| Ads rejected by platform policy | High | Activate backup creative, file appeal | Media buyer |
| CPA above 3x target | High | Notify leader immediately, wait for decision | Media buyer |
| Negative comments spreading | High | Notify leader, do NOT self-handle — follow `66-crisis-playbook-global` | Writer + leader |
| Claim challenged or complaint alleging deceptive advertising | High | Pause the asset, escalate to leader and legal | Leader |

### Roll-back criteria

Roll-back means pausing part or all of the launch to fix it. The leader decides.

| Situation | Threshold | Roll-back action |
|-----------|-----------|------------------|
| Tracking wrong or not firing | Any | Pause all ads until fixed — do not burn budget blind |
| CPA above threshold | > 3x target after the first 24h | Pause BOFU ads, keep organic; review creative and audience before restarting |
| Landing page CVR far below expectation | < 1/3 of expected after 48h | Keep TOFU, pause BOFU push; fix headline, form, and speed, then restart |
| Offer displayed wrong (price or bonus) | Any | Remove the post, fix, repost — faster than apologizing on the broken post |
| Reputation issue or complaints spreading | Spreading | Switch to `66-crisis-playbook-global`, stop all sales posts until resolved |

Roll-back is not failure. Continuing while knowing you are wrong is.

## Phase 3 — Post-launch (D+8 onward)

- [ ] D+8 to D+14: pull all data (revenue, leads, ROAS, CPA, CVR, top channels); media buyer writes the performance report; collect new customer feedback; 30-minute team debrief
- [ ] D+14 onward: decide on an evergreen campaign (if yes, always-on ads with an explicit ROAS target); document testimonials and case studies from the first customers
- [ ] **Update this playbook** with lessons from the retrospective (`63-campaign-retrospective-global`) — mandatory, never skipped because the team is busy

## Output structure

File name: `launch-playbook-[product-name]-[YYYYMMDD].md` — contains the T-30 to D+7 timeline with owners and deadlines filled in, the 5 function checklists, the war room roster, the escalation matrix, the roll-back criteria, and a "lessons applied from last launch" section.

## Related skills

- `59-go-to-market-global`: run first — the GTM plan is the strategic input, this playbook is the execution layer.
- `02-campaign-brief-global`: brief the team before entering the timeline.
- `41-campaign-asset-list-global`: enumerate the assets to produce at the T-30 to T-21 checkpoint.
- `63-campaign-retrospective-global`: run after every launch — lessons feed back into this playbook.
- `66-crisis-playbook-global`: activate when negative sentiment spreads or a reputation issue appears.

## Quality checklist

- [ ] Timeline complete from T-30 to D+7, planned backwards from D-day
- [ ] Every task has exactly one owner and a deadline with a time and timezone
- [ ] Checklists cover all 5 functions: content, design, ads, sales/support, engineering
- [ ] T-1 go/no-go checklist complete — leader signs off
- [ ] War room has an hourly roster and a named point of contact per function
- [ ] Escalation matrix is explicit: situation > severity > action > owner
- [ ] Roll-back criteria use concrete numeric thresholds, not judgment calls
- [ ] Ads are built and left Paused — only turned on at D-day
- [ ] A one-day buffer exists before launch
- [ ] Claim substantiation and endorsement disclosure are verified before assets go live
- [ ] The playbook update step after launch is included
