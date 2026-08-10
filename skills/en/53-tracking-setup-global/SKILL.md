---
name: 53-tracking-setup-global
description: "Use when conversion TRACKING must be set up or fixed before spending — Meta Pixel and Conversions API, Google Ads conversions with Enhanced Conversions, GA4, TikTok Pixel and Events API, server-side GTM, consent mode for GDPR and CCPA, UTM conventions, iOS ATT attribution windows, and a pre-launch verification checklist. Trigger on 'tracking setup', 'pixel setup', 'CAPI', 'GA4 events', 'conversions are not being recorded', 'Meta and Shopify numbers do not match'. Also use when launch is imminent and nothing has been verified. Not for — auditing a live account broadly, see `21-ads-audit-global`; analyzing data once it flows, see `13-data-analysis-global`; the campaign hierarchy, see `52-account-structure-global`."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "tracking setup"
  - "pixel setup"
  - "conversions API"
  - "CAPI"
  - "GA4 setup"
  - "server-side tracking"
  - "consent mode"
  - "UTM convention"
  - "conversion tracking not working"
output: "File .md — tracking setup checklist per platform, consent plan, UTM template, event mapping, CRM/offline conversion plan, pre-launch verification checklist, and a troubleshooting table"
related:
  - product-marketing-context-global
  - 52-account-structure-global
  - 54-media-plan-global
  - 21-ads-audit-global
  - 12-landing-page-brief-global
  - 13-data-analysis-global
---

# Tracking Setup (Global)

Ads without verified tracking is driving blind. **Hard rule: do not launch ads until tracking verifies green.** Every dollar spent before verification is unmeasurable. Set it up correctly the first time — changing events mid-campaign destroys historical comparability.

> Full per-platform install steps and the consent mode parameter reference: read `references/platform-tracking-setup.md`.

## Information gathering

Ask up to 4 questions:

1. **Which ad platforms and objective?** Meta / Google / TikTok / LinkedIn / YouTube — lead (form or message) / purchase / traffic?
2. **What runs the website or landing page?** Shopify / WordPress / Webflow / Framer / custom — and is there access to edit the head tag or install GTM?
3. **Which markets receive traffic?** This decides the consent requirements: EU/UK means GDPR and ePrivacy, California means CCPA/CPRA, other US states have their own opt-out laws.
4. **Where does the sale actually close?** On site (pixel-measurable) or offline via sales calls, demos, or DMs (needs CRM/offline conversion import)?

## Principles

1. **No green, no launch.** Verification comes before spend, every time.
2. **Consent is part of tracking, not a legal afterthought.** In the EU/UK, tags must not fire before consent. Getting this wrong risks fines and, on Google, loss of remarketing audiences.
3. **One installation method only.** GTM plus hardcoded tags equals duplicate events and doubled phantom conversions.
4. **Client-side plus server-side, deduplicated.** Browser-only tracking loses a large share of events to ad blockers, ITP, and iOS ATT. Send the same event from both sides with a shared event ID.
5. **Consistent UTMs.** Define the convention once, before anyone builds a link. GA4 cannot repair inconsistent casing or naming after the fact.
6. **Measure to revenue, not to lead.** If 1,000 leads produce 10 sales, you must be able to tell whether the failure is in ads or in sales. That requires CRM or offline conversion import.
7. **Expect platform numbers to disagree.** Ads managers use different attribution windows and modeled conversions. Pick one source of truth for decisions and use the others as directional.

## Workflow

### 1. Choose the measurement architecture

| Layer | Purpose | Minimum |
|-------|---------|---------|
| Client-side pixel/tag | Fast setup, on-page events | Meta Pixel, Google tag, TikTok Pixel |
| Server-side API | Recovers events lost to blockers and ITP | Meta Conversions API, TikTok Events API, Google Enhanced Conversions |
| Analytics | Cross-channel truth, funnel analysis | GA4 with key events configured |
| Consent layer | Legal gate in front of everything above | CMP plus Google consent mode v2 |
| CRM / offline | Connects leads to actual revenue | CRM with source fields, offline conversion import |

Server-side GTM is the recommended container for anything beyond a simple store: it centralizes event forwarding, improves data quality, and keeps first-party cookie lifetimes usable under ITP.

### 2. Consent management (do this before any tag fires)

This is a first-class requirement, not an optional extra.

**EU / UK — GDPR and ePrivacy:**
- Install a certified consent management platform. Meta requires a CMP for EU traffic; Google requires a Google-certified CMP for EEA/UK traffic to keep personalized advertising and audience features.
- Implement **Google consent mode v2**. The four signals are `ad_storage`, `analytics_storage`, `ad_user_data`, `ad_personalization`. Default them to `denied` for EEA/UK before the banner is answered, then update on consent.
- Non-essential tags must not fire before consent is granted. Consent must be as easy to refuse as to accept, and withdrawable.
- Keep a consent log — which user, which choice, when, which policy version.

**California — CCPA/CPRA (and comparable US state laws):**
- Provide a visible opt-out of sale/sharing of personal information.
- Honor the Global Privacy Control browser signal as a valid opt-out.
- On Meta, apply **Limited Data Use** for California traffic.

**Email and SMS:** CAN-SPAM in the US and GDPR in the EU require documented opt-in for marketing sends and a working unsubscribe. Any list uploaded as a Custom Audience or Customer Match list must have that consent on record — see `14-email-marketing-global`.

Record the decision in the output file: which CMP, which regions gated, who verified.

### 3. Install per platform

Full step-by-step checklists live in `references/platform-tracking-setup.md`. Summary of what must exist:

| Platform | Client-side | Server-side | Verification tool |
|----------|-------------|-------------|-------------------|
| Meta | Pixel with standard events (PageView, ViewContent, AddToCart, Lead, Purchase) | Conversions API with `event_id` deduplication, Event Match Quality >= 6.0 | Meta Pixel Helper, Test Events |
| Google Ads | Google tag / GTM conversion actions | Enhanced Conversions (hashed email/phone), consent mode v2 | Tag Assistant, conversion diagnostics |
| GA4 | GA4 tag, key events marked as conversions | Measurement Protocol or server-side GTM | GA4 DebugView, Realtime |
| TikTok | TikTok Pixel (ViewContent, AddToCart, SubmitForm, CompletePayment) | Events API with deduplication | TikTok Pixel Helper, Events diagnostics |
| LinkedIn | Insight Tag with conversion rules | Conversions API for CRM-side events | LinkedIn Insight Tag Helper |

Only one primary conversion action per objective should be enabled for bidding. Extra enabled conversions inflate counts and confuse smart bidding.

### 4. iOS ATT and attribution windows

Since iOS 14.5, a large share of iOS users opt out of app tracking, so platform-reported conversions are partly modeled rather than observed.

- Meta's post-ATT default is a **7-day click / 1-day view** attribution window. Compare periods on the same window or the trend is meaningless.
- Verify the domain and configure **Aggregated Event Measurement** with a prioritized list of up to 8 web events per domain. The event you optimize for must be ranked highest.
- Expect ads manager conversions and GA4 last-click conversions to differ, often materially. Decide up front which one drives budget decisions.
- Server-side events plus Enhanced Conversions and good Event Match Quality recover a meaningful share of the loss. This is the main reason server-side is no longer optional.
- Third-party cookie deprecation compounds this. Prioritize first-party data collection — email capture, account creation, CRM — over pixel-only audience building.

### 5. UTM convention

```
https://domain.com/lp?utm_source=[source]&utm_medium=[medium]&utm_campaign=[campaign]&utm_content=[ad_name]
```

| Parameter | Convention | Example |
|-----------|-----------|---------|
| utm_source | meta / google / tiktok / linkedin / klaviyo | meta |
| utm_medium | paid_social / paid_search / display / email / organic | paid_social |
| utm_campaign | `[product]_[audience]_[market]_[MMYY]` | course-a_cold_us_0726 |
| utm_content | `[creative-type]_[hook-type]_[version]` — matches the ad name | vid_pain_v1 |

Lowercase, no spaces, no special characters. `utm_content` must equal the ad name defined in `52-account-structure-global` so ads manager and GA4 reconcile in both directions. Add `utm_term` only for search keywords.

### 6. GA4 event mapping

| GA4 event | Trigger | Platform equivalent |
|-----------|---------|---------------------|
| page_view | All pages | PageView (Meta), ViewContent (TikTok) |
| view_item | Product or offer page | ViewContent (Meta) |
| add_to_cart | Cart add | AddToCart (Meta/TikTok) |
| begin_checkout | Checkout started | InitiateCheckout (Meta) |
| generate_lead | Form submit or qualified message | Lead (Meta), SubmitForm (TikTok), Conversion (Google) |
| purchase | Payment confirmed, with value and currency | Purchase (Meta/TikTok/Google) |

Each action fires exactly one event. Mark the event that matches the ads objective as a key event in GA4. Always send `value` and `currency` on purchase — without them ROAS cannot be computed and multi-market revenue cannot be normalized.

### 7. CRM and offline conversions

Required whenever the sale closes off-site (B2B, high-ticket, coaching, agency, phone or DM sales):

1. **Capture source on every lead.** CRM fields: source, medium, campaign, ad content, GCLID or fbclid, timestamp, owner, stage, disqualification reason, closed revenue.
2. **Import offline conversions weekly.** Meta offline/CAPI conversions and Google Ads offline conversion import via GCLID or Enhanced Conversions for Leads. This teaches bidding from real revenue instead of raw lead count.
3. **Reconcile monthly.** Compare CRM lead count against ads manager lead count. A gap above 20% signals a tracking or attribution problem, not a sales problem.

Uploaded CRM data must be hashed and covered by consent.

### 8. Verify green before launch

All must pass. One missing item means do not launch:

- [ ] Pixel/tag fires on landing page and confirmation page
- [ ] Correct conversion event type selected — not PageView
- [ ] No duplicate events (one action, one event in the events manager)
- [ ] Server-side API live, deduplication working, Meta EMQ >= 6.0
- [ ] Google Enhanced Conversions enabled and receiving hashed data
- [ ] Consent mode v2 implemented; tags blocked before consent in EEA/UK; Limited Data Use applied for California
- [ ] Test event: complete one real conversion and confirm it is recorded
- [ ] Domain verified and Aggregated Event Measurement events prioritized
- [ ] UTMs on all ad links and matching the convention
- [ ] GA4 receiving paid sessions (confirm in Realtime)
- [ ] CRM source capture live if the sale closes off-site

### 9. Ongoing checks

**Daily (2 minutes):** events flowing in the last 24 hours on every platform; Google Ads conversions recording; GA4 showing paid sessions.

**Weekly:** server-side match rate above 70%; no duplicate events; lead counts across ads manager, GA4, and CRM within 20% of each other; every live link carries a correct UTM; consent banner still firing correctly after any site release.

## Troubleshooting

| Problem | Common cause | Fix |
|---------|--------------|-----|
| Pixel does not fire | Tag missing on the page or blocked by consent gate | Check GTM preview and the consent state; confirm the tag is allowed after consent |
| Duplicate events | GTM and hardcoded tag both installed | Remove one; verify `event_id` deduplication |
| Low match rate / low EMQ | No hashed email or phone sent server-side | Add customer parameters to the server payload |
| Conversion not recorded | Wrong event name or wrong trigger page | Check spelling and that the trigger is the confirmation page |
| GA4 far below ads manager | Different attribution windows plus modeled conversions | Compare on the same window; treat one source as decision-grade |
| Remarketing audiences shrinking in the EU | Consent mode v2 missing or misconfigured | Implement all four consent signals and a certified CMP |
| Leads arrive with no source | No CRM source capture | Add hidden UTM/click-ID fields to every form |

## Output structure

File name: `tracking-setup-[product]-[YYYYMMDD].md`

```markdown
# Tracking Setup — [Product/Campaign]
Platforms: [list] · Site platform: [x] · Markets: [x] · Objective: [Lead/Purchase]

## 1. Measurement architecture   [client, server, analytics, consent, CRM]
## 2. Consent plan               [CMP, regions gated, consent mode v2, LDU, log owner]
## 3. Platform setup status      [table with status per item]
## 4. Attribution settings       [window per platform, AEM priority list]
## 5. UTM convention             [parameters and real project examples]
## 6. Event mapping              [GA4 to platform events]
## 7. CRM / offline conversions  [fields captured, import cadence]
## 8. Pre-launch verification    [green checklist, verified by, date]
## 9. Ongoing check schedule     [who, when, alert thresholds]
```

## Related skills

- `52-account-structure-global`: build campaigns only after tracking is green; `utm_content` must match ad names.
- `54-media-plan-global`: the objective in the plan determines which events must be tracked.
- `21-ads-audit-global`: periodic tracking audit (match rate, duplicates, EMQ).
- `12-landing-page-brief-global`: the landing page must expose the events and form fields this setup needs.
- `13-data-analysis-global`: reads the clean data this system produces.

## Quality checklist

- [ ] Setup checklist complete for every platform in the plan
- [ ] Consent plan explicit: CMP, consent mode v2 signals, regions, California opt-out, consent log
- [ ] Server-side layer live with deduplication and a documented match rate
- [ ] Attribution window stated per platform, with an agreed decision-grade source
- [ ] UTM convention documented with real examples and matching ad names
- [ ] Event mapping complete from page_view to purchase, with value and currency
- [ ] Offline or CRM conversion path exists if the sale closes off-site
- [ ] Green verification checklist completed, dated, and signed off by a named person
- [ ] Daily and weekly checks scheduled with alert thresholds (match rate >70%, source gap <20%)
- [ ] The hard rule is restated in the output: not green means do not launch
