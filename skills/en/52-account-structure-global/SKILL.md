---
name: 52-account-structure-global
description: "Use when an ad account HIERARCHY needs designing or cleaning up — campaign, ad set, and ad structure by objective, a naming convention that keeps data readable, CBO versus ABO by stage, how many ad sets and creatives to run, and the minimum daily budget an ad set needs to exit learning. Trigger on 'account structure', 'campaign structure', 'naming convention', 'how many ad sets should I run', 'CBO or ABO', 'our account is a mess of duplicated campaigns'. Not for — scoring an existing account against 84 checkpoints, see `21-ads-audit-global`; pixel and conversion setup, see `53-tracking-setup-global`; budget across channels, see `54-media-plan-global`; scaling a winner, see `55-scaling-ads-global`."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "account structure"
  - "campaign structure"
  - "naming convention"
  - "set up campaign"
  - "how many ad sets"
  - "CBO or ABO"
  - "restructure ad account"
  - "ad account setup"
output: "File .md — full campaign structure by stage, naming convention, budget allocation, minimum ad set budget math, and a pre-launch checklist"
related:
  - product-marketing-context-global
  - 51-audience-research-global
  - 53-tracking-setup-global
  - 54-media-plan-global
  - 05-ad-copy-global
  - 19-ab-test-setup-global
  - 55-scaling-ads-global
---

# Account Structure (Global)

Good structure means data you can read, optimizations you can trust, and scaling that does not fall apart. Run this after `53-tracking-setup-global` verifies green, and after `51-audience-research-global` and `54-media-plan-global` exist.

## Information gathering

Read the media plan and audience profile if they exist. If information is missing, ask up to 4 questions:

1. **Which platforms and objective?** Meta / Google / TikTok / LinkedIn — lead gen / conversion / traffic / awareness?
2. **How many products or offers are running?** Each primary offer generally deserves its own campaign.
3. **Total monthly budget and target CPA?** This determines how many ad sets the account can actually feed.
4. **Which stage are you in?** Testing / scaling / maintaining?

## Principles

1. **Consolidate before you split.** Fewer, better-funded ad sets is now the platform-recommended structure on both Meta (Advantage+ / broad) and Google (Performance Max, broad match + smart bidding). Splitting an already-small budget across many ad sets starves every one of them.
2. **Consistent naming from day one.** Renaming later is painful, and historical data becomes unfilterable.
3. **One campaign, one objective.** Never mix lead generation and purchase optimization in the same campaign.
4. **Cold stays separate from retargeting.** Different campaigns, different message, never a shared audience pool.
5. **Do not touch an ad set that is still in learning.** Meta needs roughly 50 optimization events per ad set per week to exit learning. Every significant edit restarts it.
6. **Structure follows budget, not ambition.** If the budget cannot fund the structure, cut ad sets, not budget per ad set.

## Workflow

### 1. Hierarchy overview

```
Account
|-- Campaign 1 — [Objective] — [Product/Offer] (Cold Testing)
|   |-- Ad Set 1.1 — [Broad / Advantage+]      -> Ad A (hook 1) / Ad B (hook 2)
|   |-- Ad Set 1.2 — [Interest theme A]        -> Ad A / Ad B
|   |-- Ad Set 1.3 — [Interest theme B]        -> Ad A / Ad B
|   \-- Ad Set 1.4 — [Lookalike 1-3%]          -> Ad A / Ad B
|-- Campaign 2 — [Objective] — Scale winner (split out once a winner is proven)
\-- Campaign 3 — Retargeting
    \-- Ad Set 3.1 — [Warm 7-30 days] — objection-handling creative
```

### 2. Naming convention

| Level | Format | Example |
|-------|--------|---------|
| Campaign | `[Platform]_[Objective]_[Product]_[AudienceType]_[Market]_[MMYY]` | `META_LEAD_COURSE-A_COLD_US_0726` |
| Ad Set | `[Audience]_[Age]_[Gender]_[Placement]_[Budget]` | `INT-BUSINESS_25-45_ALL_ADVPLUS_150USD` |
| Ad | `[CreativeType]_[HookType]_[Version]` | `VID_PAIN_v1`, `IMG_SOCIAL-PROOF_v2` |

Rules: uppercase, underscore separators, no spaces, no special characters. Include the market code when running more than one country — regional cost differences are large enough (Tier 1 CPM 6-7x Tier 2, per `references/benchmarks-global.md`) that blended reporting hides the truth. The ad name must match `utm_content` exactly (see `53-tracking-setup-global`) so ads manager data and GA4 reconcile in both directions.

### 3. Consolidation check

Before building, run this test on the planned structure:

| Question | If no |
|----------|-------|
| Can every ad set reach ~50 optimization events per week at its budget? | Merge ad sets or optimize for an earlier funnel event |
| Do two ad sets target overlapping pools? | Merge them; overlap bids against yourself |
| Is there a real hypothesis behind each split? | Delete the split |

On Meta, the default modern answer is one broad or Advantage+ ad set with several creatives, plus a small number of deliberate tests. On Google, prefer fewer campaigns with more conversion volume over many thin ad groups.

### 4. CBO vs ABO

| | ABO (budget at ad set) | CBO / Advantage campaign budget |
|---|------------------------|----------------------------------|
| Use when | **Testing** — you need guaranteed spend on each audience | **Scaling** — a winner exists, let the algorithm allocate |
| Advantage | Every ad set gets enough data to conclude | Automatically pushes spend to the best performer |
| Risk | You must manually pause losers | Budget concentrates on one ad set; other tests starve |
| Rule | Default to ABO in testing | Move to CBO only once an ad set is proven stable |

### 5. Structure by stage

**TESTING (weeks 1-2):** one campaign per objective; 3-5 ad sets (broad/Advantage+, interest theme A, interest theme B, lookalike, small retargeting); 2-3 ads per ad set to test creative and hook. ABO with even budgets. Goal: find the winning audience and creative. Pause any ad set above 2x target CPA after 3 days.

**SCALING:** split the winner into its own CBO campaign. Increase +20-30% per step, never double overnight (see `55-scaling-ads-global`). Do not edit the winning ad set while scaling. Keep testing new creative in parallel inside the testing campaign.

**MAINTAINING:** 15 minutes of daily monitoring. Refresh creative every 2-3 weeks. Retargeting runs continuously.

### 6. Budget allocation by campaign type

| Campaign type | % Budget | Purpose |
|---------------|---------|---------|
| Cold — testing | 30% | Find new winners |
| Cold — scaling | 50% | Main volume |
| Retargeting | 15% | Convert warm and hot |
| Lookalike | 5% | Open new pools from proven seeds |

### 7. Minimum daily budget per ad set

Do not use a fixed currency figure. Derive it from the target CPA so it holds in any market:

```
Daily floor per ad set = (50 optimization events x target CPA) / 7 days
Quick sanity check     = daily budget >= 5x target CPA
```

Using global Meta CPA medians of $18-38 from `references/benchmarks-global.md`, the derived floor is roughly:

| Target CPA | Derived daily floor per ad set |
|-----------:|-------------------------------:|
| $18 | ~$130 |
| $25 | ~$180 |
| $38 | ~$270 |

If the budget cannot support that floor, do one of three things, in order: (a) merge ad sets, (b) optimize for an earlier, more frequent event such as Add to Cart or Lead instead of Purchase, (c) reduce the number of markets. Never split budget thinner and hope. In Tier 2 markets the same math produces a much lower floor because CPA is lower — recalculate per market, do not copy a Tier 1 floor into a Tier 2 account or vice versa.

Google Search and LinkedIn behave differently: Search needs enough clicks at the market CPC ($1-2 broad, $5-50+ on commercial intent) to gather signal, and LinkedIn's $30-100+ CPM means a viable B2B ad set floor is materially higher than a Meta one.

## Output structure

File name: `account-structure-[product]-[YYYYMMDD].md`

```markdown
# Account Structure — [Product] — [Platform]
Stage: [Testing/Scaling/Maintaining] · Monthly budget: [amount] · Markets: [list]

## 1. Campaign tree
[Full hierarchy using the naming convention]

## 2. Ad set table
| Campaign | Ad set (named) | Audience | Daily budget | ABO/CBO | Ads inside |

## 3. Naming convention applied
| Level | Format | Real example from this project |

## 4. Budget allocation
| Campaign type | % | Daily amount | Monthly amount |

## 5. Learning-phase math
| Ad set | Target CPA | Derived floor | Planned budget | Passes? |

## 6. Pre-launch checklist
- [ ] Pixel/CAPI fires correctly on landing and confirmation pages (see 53-tracking-setup-global)
- [ ] Correct conversion event selected (Lead / Purchase), no duplicates
- [ ] Consent mode and CMP live in EU/UK and California traffic
- [ ] UTMs on every link; utm_content matches the ad name exactly
- [ ] Test events all green — NOT GREEN MEANS DO NOT LAUNCH
- [ ] Naming format applied across campaigns, ad sets, and ads
- [ ] Every ad set budget clears the derived learning floor
- [ ] Exclusions applied: cold excludes purchasers and warm audiences
```

## Common mistakes

| Mistake | Consequence | Fix |
|---------|-------------|-----|
| Too many ad sets for the budget | Nothing exits learning, no conclusive data | Consolidate to 3-5, or 1 broad plus tests |
| Editing an ad set mid-learning | Learning resets, CPA swings | Wait until learning completes, then edit |
| Ad-hoc naming | Data cannot be filtered or compared | Apply the format and rename before launch |
| Retargeting mixed into cold | Wrong message, artificially cheap CPA | Split campaigns and cross-exclude |
| CBO during testing | Budget collapses onto one audience | ABO to test, CBO to scale |
| One structure across many markets | Tier 1 costs get blended with Tier 2 | Split by market or at minimum tag the market |
| Manual ad sets fighting Advantage+/PMax | Overlapping auctions, unreadable attribution | Pick one approach per objective and hold it |

## Related skills

- `51-audience-research-global`: source of the targeting behind each ad set.
- `54-media-plan-global`: total budget and channel split before campaigns are cut.
- `53-tracking-setup-global`: must verify green before launch.
- `05-ad-copy-global`: copy and creative for each ad.
- `19-ab-test-setup-global`: how to test one variable inside this structure.
- `55-scaling-ads-global`: rules for splitting out and funding winners.

## Quality checklist

- [ ] Hierarchy is clear: one campaign, one objective; cold separated from retargeting
- [ ] Naming convention covers all three levels, includes market, and has real project examples
- [ ] ABO/CBO choice matches the stage (test = ABO, scale = CBO)
- [ ] Ad set count justified by budget, with a consolidation check documented
- [ ] Every ad set clears the derived learning floor, calculated per market
- [ ] Budget allocation follows 30/50/15/5 or states why it deviates
- [ ] Pre-launch checklist includes tracking verified green and consent live
