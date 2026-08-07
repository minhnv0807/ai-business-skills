---
name: 56-retargeting-plan-global
description: "Use when the user needs a retargeting and lookalike plan: warm audience tiers, a different message per tier, frequency caps, attribution windows, lookalike seeds, exclusions, and a first-party data base that survives iOS ATT and cookie deprecation. Trigger on 'retargeting', 'remarketing', 'warm audience', 'custom audience', 'lookalike audience', 'retarget cart abandoners', or 'my retargeting pool is shrinking'."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "retargeting"
  - "remarketing"
  - "warm audience"
  - "custom audience"
  - "lookalike audience"
  - "retarget cart abandoners"
  - "my retargeting pool is shrinking"
  - "win back past customers"
output: "File .md — retargeting strategy: audience tiers, message framework per tier, first-party list plan, lookalike brief, frequency caps, and exclusion rules"
related:
  - product-marketing-context-global
  - 51-audience-research-global
  - 53-tracking-setup-global
  - 55-scaling-ads-global
  - 05-ad-copy-global
  - 52-account-structure-global
  - 14-email-marketing-global
  - 16-marketing-psychology-global
---

# Retargeting Plan (Global)

Retargeting is a conversation with people who already know you. The message must differ completely from cold ads: handle objections, do not reintroduce the brand. Never serve the same ad to cold and warm audiences.

## Information gathering

Ask up to 4 questions:

1. **Which platforms and which offer are being retargeted?** Meta / Google / TikTok / YouTube / Pinterest / email and SMS?
2. **What event data already exists?** Video views, page engagement, landing page visits, add to cart, checkout started, form submits, purchases. If none, run `53-tracking-setup-global` first and let data accumulate.
3. **How large are the current warm pools, and how large is the first-party list?** Pixel audience size plus email/SMS/CRM list size.
4. **Budget, and what is the main objection?** Price, trust, timing, or "not now"?

## Principles

1. **Message intensity follows audience heat.** Hotter audiences get the offer and urgency; cooler audiences get trust and value.
2. **Shorter window means hotter audience means stronger message.** Someone who visited yesterday is not someone who watched a video last month.
3. **First-party data is the durable base, not pixel audiences.** Post-iOS ATT and with third-party cookies deprecated, pixel-built retargeting pools are materially smaller and decay faster than they used to. Email, SMS, and CRM lists you own do not disappear when a browser changes policy. Build the plan on owned lists and treat pixel audiences as an accelerator.
4. **Always exclude converters.** Do not waste impressions on people who already bought, unless there is a genuine upsell.
5. **Frequency caps are mandatory.** High-frequency retargeting produces irritation and negative feedback, which raises costs.
6. **Retargeting is 10-20% of budget** (repo operating standard is 15%). The pool is finite; volume comes from cold.
7. **Seed quality beats seed size.** A lookalike from purchasers beats a lookalike from viewers.
8. **Consent applies to every uploaded list.** Custom Audience and Customer Match uploads require documented marketing consent, hashed data, and removal on opt-out — see the consent section in `53-tracking-setup-global`.

## Workflow

### 1. Build the durable first-party base first

Before designing pixel tiers, confirm these exist:

| Asset | Why it matters | Minimum action |
|-------|----------------|----------------|
| Email list with consent | Survives cookie and ATT changes; usable on every platform | Capture email before or during checkout, and on the lead magnet |
| SMS list with consent | High-intent channel in US markets | Explicit opt-in with a documented double confirmation where required |
| CRM with source fields | Connects retargeting to actual revenue | Source, campaign, stage, revenue, opt-out flag |
| Logged-in or account users | Stable identifier across devices | Encourage account creation post-purchase |
| Server-side event stream | Recovers events browsers drop | Conversions API / Events API (`53-tracking-setup-global`) |

If pixel pools are too small to run, the first-party list is what keeps retargeting alive. Upload it as a Custom Audience and Customer Match list, and run email and SMS flows in parallel through `14-email-marketing-global`.

### 2. Audience tiers

| Tier | Audience | Signal | Window | Message direction |
|------|----------|--------|--------|-------------------|
| 1 (hottest) | Add to cart / checkout started | Pixel + server event | 7-14 days | Strong offer, urgency, guarantee |
| 2 | Lead form opened but not submitted, open sales conversation | Pixel, CRM | 3-7 days | Reminder, remove the next-step friction |
| 3 | Landing page visitors who did not convert | Pixel + server event | 14-30 days | Trust, social proof, objection handling |
| 4 | Video viewers above 50% | Platform engagement audience | 14-30 days | Deepen interest, educate, prove |
| 5 | Page and post engagers | Platform engagement audience | 30-60 days | Soft offer, value add |
| 6 | Email / SMS / CRM list | First-party upload | Continuous | Nurture through owned channels, ads as reinforcement |
| 7 | Past customers | Purchase event + CRM | 180 days | Upsell, cross-sell, replenishment, loyalty |

Note on durability: tiers 1-5 are pixel-dependent and will be smaller than the platform-reported estimate suggests. Tiers 6 and 7 are the ones you control. If tiers 1-3 are too small to spend the planned budget, merge them into a single hot tier rather than running several starved ad sets.

### 3. Message framework per tier

- **Tiers 1-2 (about to buy):** offer, urgency, guarantee. CTA: "Complete your order", "Finish signing up". Formats: dynamic product ads, countdown, limited availability, abandoned-cart email plus SMS in sequence.
- **Tiers 3-4 (interested):** objection handling, social proof, soft CTA. CTA: "See how it works", "Read the reviews". Formats: testimonial video, FAQ, comparison, founder explainer.
- **Tiers 5-6 (aware):** value add and soft offer. CTA: "Learn more", "Get the free [resource]". Formats: educational content, case study, newsletter.
- **Tier 7 (existing customers):** upsell, cross-sell, replenishment, member-only pricing. CTA: "Your exclusive offer". Formats: bundle, subscription, referral (see `18-referral-program-global`).

Message-to-audience map to hand to `05-ad-copy-global`:

| Audience | Core message |
|----------|--------------|
| Video viewers 75% | Education plus proof |
| Site visitors, last 3 days | Strong offer plus urgency |
| Page visitors who did not convert | Address the objection plus scarcity |
| Open sales conversation | Personal, last chance |
| Email subscribers, never purchased | First-purchase incentive |
| Past customers | Upsell, cross-sell, replenishment |

### 4. Creative formats

- **Dynamic product ads** (catalog required): re-show exactly what was viewed.
- **Testimonial and review video:** answers "can I trust this".
- **Comparison and FAQ:** answers a specific, named objection.
- **Urgency creative:** countdown, limited stock — tiers 1-2 only, and only when the scarcity is real.
- **Founder or behind-the-scenes:** works well on tiers 4-5 where the barrier is familiarity.

### 5. Frequency caps

| Platform | Recommended cap |
|----------|-----------------|
| Meta | 2-3 impressions per 7 days (hot tiers may run slightly higher) |
| TikTok | 3-4 impressions per 7 days |
| YouTube | 2 impressions per day |
| Any platform, absolute ceiling | 2-3 impressions per person per day |

### 6. Lookalike and similar audiences

| Seed | Minimum seed size | Lookalike % | Platform | Purpose |
|------|------------------:|-------------|----------|---------|
| Purchasers | >= 100 | 1% | Meta | Highest-quality prospecting |
| High-value purchasers (top revenue decile) | >= 100 | 1-2% | Meta | Value-based lookalike |
| Qualified leads | >= 500 | 1-3% | Meta | Scale lead generation |
| Video viewers 75% | >= 1000 | Broad | TikTok | Scale awareness |
| Email / CRM list | >= 300 | 1-5% | Meta, Google Customer Match | Extend from owned data |

Lookalikes are cold campaigns and sit in the 5% lookalike slice of the 30/50/15/5 split, not in the retargeting budget — but their seeds are produced by this system. Build value-based lookalikes wherever revenue data is available; they consistently beat flat purchaser seeds.

### 7. Exclusions

- [ ] Existing purchasers (unless a genuine upsell path exists)
- [ ] Submitted leads and closed deals
- [ ] Email and SMS unsubscribes, and anyone who exercised an opt-out right
- [ ] Audiences currently running in prospecting campaigns (exclude in both directions)
- [ ] Cross-tier: hotter tiers excluded from cooler tiers, so each person sits in exactly one tier

## Output structure

File name: `retargeting-plan-[product]-[YYYYMMDD].md`

```markdown
# Retargeting Plan — [Product/Campaign]
Platforms: [x] · Budget: [amount] ([%] of total) · Primary window: [days]

## 1. First-party base      [lists owned, size, consent status, growth plan]
## 2. Audience tiers        [tier, audience, signal, window, estimated size]
## 3. Message per tier      [tier -> message -> CTA -> format]
## 4. Creative brief        [what to produce; hand to 05-ad-copy-global]
## 5. Frequency caps        [per platform]
## 6. Lookalike brief       [seed, %, purpose, refresh cadence]
## 7. Exclusion rules       [converters, opt-outs, prospecting overlap, cross-tier]
## 8. Expected KPIs         [retargeting CPA and ROAS, typically 2-3x better than prospecting]
```

## Related skills

- `51-audience-research-global`: defines the original cold/warm/hot tiering.
- `53-tracking-setup-global`: pixel, server-side events, and consent are the raw material for every custom audience.
- `05-ad-copy-global`: writes the copy for each tier's message.
- `52-account-structure-global`: retargeting sits in its own campaign with cross-exclusions.
- `55-scaling-ads-global`: scaling cold grows the warm pool — raise retargeting budget in step.
- `14-email-marketing-global`: the owned-channel half of tiers 6 and 7.
- `16-marketing-psychology-global`: objection handling, social proof, and honest scarcity.

## Quality checklist

- [ ] First-party list plan documented before pixel tiers, with consent status per list
- [ ] Only tiers with enough people to actually spend are created; thin tiers merged
- [ ] Each tier has its own message, CTA, and format — no shared creative with cold
- [ ] Windows match audience heat: hotter means shorter window and stronger message
- [ ] Frequency caps stated per platform
- [ ] Lookalike seeds meet minimum size, with value-based seeds used where revenue data exists
- [ ] Exclusions complete: purchasers, closed leads, opt-outs, prospecting overlap, cross-tier
- [ ] Retargeting budget within 10-20% of total (standard 15%)
- [ ] Plan acknowledges pixel pool decay and does not depend on pixel audiences alone
