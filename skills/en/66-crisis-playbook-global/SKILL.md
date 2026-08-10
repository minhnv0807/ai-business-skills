---
name: 66-crisis-playbook-global
description: "Use when a brand faces a communications CRISIS or a campaign is failing in public — L1 to L5 severity classification, a first-four-hours process, response templates by type, an escalation matrix, a do-not-do list, holding statements, and a post-mortem. Trigger on 'PR crisis', 'crisis playbook', 'a complaint is going viral', 'bad reviews are spreading', 'our content caused backlash', 'we are getting attacked online'. Also use when the user forwards an angry thread and asks what to do right now. Not for — monitoring before anything blows up, see `15-social-listening-global`; diagnosing weak performance numbers, see `03-performance-eval-global`; the routine post-campaign review, see `63-campaign-retrospective-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "crisis"
  - "crisis playbook"
  - "PR crisis"
  - "campaign is failing"
  - "content caused backlash"
  - "bad reviews spreading"
  - "complaint going viral"
  - "brand under attack online"
output: "File .md — crisis classification, hour-by-hour response plan, who does what, what to say and not say, escalation matrix, post-mortem"
related:
  - 15-social-listening-global
  - 03-performance-eval-global
  - 63-campaign-retrospective-global
  - 07-marketing-report-global
  - 62-marketing-review-global
---

# Crisis Playbook (Global)

> A crisis arrives without warning, so the playbook must exist before it is needed. Three ground rules: (1) do not react before you have facts — most crises look worse than they are in the first 30 minutes; (2) do not stay silent past 4 hours on a spreading crisis, because silence reads as admission; (3) handled well, a crisis builds trust; handled badly, it destroys it permanently.

## Information gathering

Read the `15-social-listening-global` report if available (early detection). Before doing anything, answer 4 questions:

1. **What type of crisis is this?** Match it against the L1-L5 table below.
2. **How fast is it spreading?** Ten people or ten thousand? One channel, or has it jumped channels?
3. **Where did it start?** An unhappy customer, a creator or influencer, a competitor, a regulator, or the press?
4. **What is actually true?** Which fact is disputed, do you have evidence, and do you have enough to respond at all?

If you do not have enough information: publish one short line confirming you are investigating and commit to a specific update time. Do not go silent, and do not respond to unverified claims.

## Principles

1. **Assess first, react second.** Thirty to sixty minutes of investigation beats a wrong answer in five minutes.
2. **Never silent past 4 hours** on a spreading crisis.
3. **Do not delete legitimate negative comments** (clear spam and hate speech excepted) — deleting escalates.
4. **Do not argue in public.** Move the complainant to a private channel.
5. **Do not respond while emotional.** Draft it, wait 30 minutes, reread, then send.
6. **Do not promise what you cannot deliver**, and do not minimize the facts.
7. **L3 and above must go to the leader.** Never self-handled.
8. **Regulated categories escalate straight to legal.** In health, finance, insurance, credit, and crypto, any challenge to a claim goes directly to legal review — do not draft a public response first.

## Crisis classification

| Level | Type | Example | Priority | Response window |
|-------|------|---------|----------|-----------------|
| L1 | Operational — campaign or system failure, severe KPI miss | Ads not delivering, landing page down, tracking broken | High | 2-4 hours |
| L2 | Content — inaccurate or misleading content published | Misleading caption, wrong figure, inappropriate image | High | 2-4 hours |
| L3 | Reputation — customer complaint spreading | Viral one-star review, exposé thread | Critical | 1-2 hours |
| L4 | Brand attack — coordinated | Mass fake reviews, competitor smear, brigading | Critical | Same day |
| L5 | Legal / compliance / data | Deceptive-advertising or undisclosed-endorsement complaint, personal data breach, IP infringement, platform enforcement action | Critical + counsel | Immediate |

## Process by level

### L1 — Operational

In the first 2 hours: pull the full data set to find where the real number sits; diagnose the root cause (run `03-performance-eval-global`); notify leadership with a hypothesis and actions; deploy the emergency fix.

Report template: "Campaign [X] is at [actual] against a target of [target]. Preliminary cause: [hypothesis]. In progress: [3 actions]. Next update at [time]."

### L2 — Content

Immediately: screenshot and archive the evidence BEFORE removing anything; take down the affected post (faster than apologizing on the broken post); notify the leader, do not self-handle.

Within 2-4 hours: establish what was wrong, who was affected, and the reach; draft the response and have the leader approve it before posting (run `62-marketing-review-global`).

Response template: "We found that [content X] in our [date] post contained [an error / inaccurate information]. We have [removed / corrected] it and apologize for the confusion. The correct information is: [...]. Thanks to [the person who flagged it] for raising it."

### L3 — Reputation

Immediately: do NOT delete comments, do NOT argue in public, archive all evidence with timestamps.

Within 1-2 hours: verify whether the complaint is legitimate.

- If legitimate: acknowledge, apologize, fix, compensate. Template: "[Name], we're sorry about this experience. That is not the standard we intend. Could you send us a direct message so we can resolve it with you directly?"
- If not legitimate: state the facts calmly with evidence, and do not escalate the tone.

Note: in US and EU markets, review platforms are part of the crisis surface. Respond on the platform where the complaint lives, and never incentivize or suppress reviews to offset it — that is itself an FTC issue.

### L4 — Brand attack

Archive evidence with timestamps; notify leadership immediately; weigh staying silent (a small-scale attack is amplified by responding) against speaking up (if it is spreading); never respond emotionally; report coordinated inauthentic behavior through the platform's own reporting flow; consult counsel if there are signs of defamation.

### L5 — Legal, compliance, and data

Stop every related campaign IMMEDIATELY. Notify leadership. Consult counsel before doing anything else, and make no public statement before legal input. Route by trigger:

| Trigger | First move |
|---------|------------|
| Claim challenged as deceptive, or an endorsement ran without disclosure | Pause the asset, pull the substantiation file and the creator contract, route to counsel. FTC exposure attaches to the advertiser, not only the creator |
| Personal data exposed or accessed without authorization | Notify your data protection lead or counsel the moment you become aware. Under GDPR a controller has a 72-hour duty to report a qualifying breach to the supervisory authority, and affected individuals must be told without undue delay where the risk is high. Do not wait for full facts to start the clock |
| California or other US state privacy complaint (CCPA/CPRA and equivalents) | Route to counsel; preserve the request and response record, do not respond ad hoc |
| Platform policy enforcement (account restricted, ads disapproved at scale, page unpublished) | Do not spin up backup accounts. File the platform appeal, document the disputed asset, and fix the underlying policy issue |
| Regulated category (health, finance, insurance, credit, crypto) | Any claim issue escalates straight to legal review before any response is drafted |

This playbook coordinates the response. It does not give legal advice, and it does not replace counsel on any of the triggers above.

## Escalation matrix

| Level | Handled by | Who must know | Timeline |
|-------|------------|---------------|----------|
| L1 | Media buyer + leader | Leadership same day | 2-4 hours |
| L2 | Content + leader | Leadership if reach > 10K | 2-4 hours |
| L3 | Leader | Leadership immediately | 1-2 hours |
| L4 | Leadership + leader | Board or executive team if needed | Same day |
| L5 | Leadership + counsel | Board or executive team, plus the data protection lead for any data incident | Immediate |

## Do-not-do list

- Delete legitimate negative comments.
- Argue or trade emotional replies with an angry person.
- Respond before verifying the facts.
- Promise compensation or a fix you may not be able to deliver.
- Lie, or downplay the severity.
- Stay silent past 4 hours while a crisis spreads.
- Let a junior decide the response at L2 or above.
- Buy, incentivize, or suppress reviews to offset negative sentiment.
- Open replacement ad accounts to work around a platform enforcement action.
- Make a public statement on a legal or data matter before counsel has seen it.

## Output structure

```markdown
# Crisis Response — [Incident name] — [Date/time]

## 1. Initial assessment
| Item | Content |
|------|---------|
| Classification | L[1-5] — [type] |
| Origin | |
| Current scale | [estimated reach, number of channels] |
| Verified facts | |
| Unverified claims | |

## 2. Hour-by-hour response plan
| Time window | Action | Owner | Status |
|-------------|--------|-------|--------|
| 0-1h | | | |
| 1-4h | | | |
| 4-24h | | | |
| Day 2-7 | | | |

## 3. Messaging
Approved to say: [...]
Not to say: [...]
Single spokesperson: [...]
Channels used: [...]

## 4. Internal actions
| Task | Owner | Deadline |
|------|-------|----------|

## 5. Monitoring
| Metric | Before | After 24h | After 7 days |
|--------|--------|-----------|--------------|
| Sentiment | | | |
| Mention volume | | | |
| Inbox / complaints | | | |
```

## After the crisis

After one week: write the post-mortem (what happened, how it was handled, the outcome), update this playbook with the new lessons, and run a team session so it does not repeat. If the crisis was campaign-related, fold it into `63-campaign-retrospective-global`.

## Related skills

- `15-social-listening-global`: early detection before it becomes a crisis, and sentiment tracking during and after.
- `03-performance-eval-global`: root-cause diagnosis for L1 operational crises.
- `62-marketing-review-global`: approve the response content before publishing.
- `63-campaign-retrospective-global`: extract systemic lessons once it is resolved.
- `07-marketing-report-global`: report the impact on monthly KPIs.

## Quality checklist

- [ ] Classified to the correct level before responding
- [ ] Evidence archived with timestamps before anything was removed
- [ ] Facts in the response verified
- [ ] Response approved by the leader (mandatory at L2 and above)
- [ ] Single spokesperson — not several people answering differently
- [ ] Nothing on the do-not-do list was done
- [ ] Legal, data, and platform-enforcement triggers routed to counsel before any public statement
- [ ] Sentiment monitoring scheduled at 24 hours and 7 days
- [ ] Post-mortem scheduled within one week
