# Ads Audit Checkpoints (Global)

> Reference for `21-ads-audit-global`. Load when scoring a specific dimension. Read only the dimensions you are scoring, not the whole file.
>
> **Scoring (rule 3, `skills/en/references/operating-rules-global.md`):** every check is `pass` / `fail` / `unknown` (data missing) / `n_a`. Check weight = severity multiplier (see SKILL.md) × dimension weight. Dimension and platform health = Σ weight(`pass`) / Σ weight(`pass` + `fail`), printed with coverage. A partial export makes the dependent checks `unknown`, never `fail`.
>
> **Source class (rule 4):** every numeric threshold below (EMQ, frequency, hook rate, audience size, creative counts, keyword counts, conversion rates) is `heuristic` — in-house or vendor convention, unverified — unless marked otherwise. Prefer the account's own history and note the date checked. Region ranges live in `variants/*.md`.

---

## 84 Checkpoints (Universal Core)

> Region-specific benchmark numbers live in the variant files. The checkpoint logic is identical worldwide.

### Dimension 1 — ACCOUNT (12 checks, weight 10%)

| # | Check | Severity |
|---|-------|----------|
| A01 | Business Manager / MCC structured (single source of truth) | High |
| A02 | Account billing healthy (no failed charges in 30d) | Critical |
| A03 | No active account warnings or restrictions | Critical |
| A04 | Domain verified (Meta) or website verified (Google/TikTok) | High |
| A05 | iOS 14.5+ Aggregated Event Measurement configured where still applicable (Meta) | High |
| A06 | Brand safety / suitability set (Meta + Google) | Medium |
| A07 | User access roles minimized (no over-permissioned users; MCP connections read-only where possible) | Medium |
| A08 | Spending limit set per account (prevents runaway charges) | Medium |
| A09 | 2FA enabled on all admin accounts | High |
| A10 | Conversion API token rotated within 12 months | Low |
| A11 | Account currency matches market currency | Low |
| A12 | Tax/VAT configuration correct for region | Low |

### Dimension 2 — CAMPAIGN (14 checks, weight 15%)

| # | Check | Severity |
|---|-------|----------|
| C01 | Cold / warm / retarget campaigns separated | High |
| C02 | Campaign objectives match real business outcome | Critical |
| C03 | No more than 3-5 active "core" campaigns | Medium |
| C04 | Campaign Budget Optimization (CBO) used appropriately | Medium |
| C05 | No overlapping audiences across active campaigns | High |
| C06 | Brand vs non-brand campaigns separated and read separately (Google) — see SKILL.md "Search: brand vs non-brand" | High |
| C07 | Search vs Performance Max separated (Google) | High |
| C08 | iOS / Android segregation when economics differ | Low |
| C09 | Budget allocated proportionally to ROAS-by-funnel-stage | High |
| C10 | Naming convention consistent (Brand_Funnel_Geo_Date) | Low |
| C11 | Campaign-level frequency caps set (where supported) | Medium |
| C12 | Holiday/promo campaigns tagged & sunset-dated | Low |
| C13 | Negative geo / language exclusions set | Medium |
| C14 | Brand keywords campaign exists with good QS (Google) | High |

### Dimension 3 — AD SET / AD GROUP (16 checks, weight 20%)

| # | Check | Severity |
|---|-------|----------|
| S01 | Daily budget ≥ 5× target CPA per ad set | Critical |
| S02 | Not editing ad sets currently in Learning Phase | High |
| S03 | Audience size 1M-50M for cold prospecting (Meta) | High |
| S04 | Audience overlap between ad sets <25% | High |
| S05 | Lookalikes built from quality seeds (purchasers, not clickers) | High |
| S06 | Negative keywords list maintained (Google) — recommend new negatives only from a search-terms report; without one the check is `unknown` | High |
| S07 | Match types appropriate (Broad+Smart Bidding, or Phrase/Exact) | High |
| S08 | Search term report reviewed within 14 days | High |
| S09 | Exclusion of past purchasers from acquisition campaigns | Critical |
| S10 | Placement: Advantage+/automatic where appropriate | Medium |
| S11 | Ad scheduling matches actual peak-conversion hours | Medium |
| S12 | Bid strategy matches account stage (Lowest Cost early, Cost Cap mature) | High |
| S13 | Demographic restrictions justified by data (not prejudice) | Medium |
| S14 | TikTok-specific: SmartTargeting tested vs manual | Medium |
| S15 | Quality score average ≥6/10 (Google) | High |
| S16 | Ad set count per campaign ≤5 (Meta) for ML efficiency | Medium |

### Dimension 4 — AD / CREATIVE (18 checks, weight 25%)

| # | Check | Severity |
|---|-------|----------|
| AD01 | Active concepts are truly distinct — each pair differs on at least 2 axes (angle, persona, proof, format). Concept counts are vendor heuristic; Meta publishes no similarity threshold | High |
| AD02 | No single creative running >21 days continuously | High |
| AD03 | Frequency <=2.5 on cold audience (7-day; compare retargeting with account history) | High |
| AD04 | All 3 formats present (video / image / carousel) | Medium |
| AD05 | Videos have sound/music (TikTok-critical) | Critical |
| AD06 | First 3 seconds hook tested (Hook Rate >=25% pass, >=30% good) | High |
| AD07 | Captions / on-screen text present (sound-off viewing) | High |
| AD08 | UGC / review-style creative present (≥1) | Medium |
| AD09 | CTA explicit in creative (voice or text) | High |
| AD10 | Vertical 9:16 used for Stories/Reels/TikTok | High |
| AD11 | Resolution ≥720p (1080p preferred) | Medium |
| AD12 | RSA: ≥8/15 headlines, ≥4/4 descriptions filled (Google) | High |
| AD13 | Asset strength "Good" or higher on RSA (Google) | Medium |
| AD14 | Sitelink / callout / call extensions present (Google) | Medium |
| AD15 | Landing page load time <3s on 4G | High |
| AD16 | Landing page mobile-first design verified | Critical |
| AD17 | Creative-to-LP message match (no bait-and-switch) | High |
| AD18 | Compliance: no policy violations (alcohol, health, financial) | Critical |

### Dimension 5 — TRACKING (16 checks, weight 20%)

| # | Check | Severity |
|---|-------|----------|
| T01 | Pixel/Tag installed on all relevant pages | Critical |
| T02 | Purchase / Lead / KeyEvent firing accurately | Critical |
| T03 | Conversion API (CAPI / Enhanced Conversions) deployed | High |
| T04 | Event Match Quality ≥6.0 (Meta) | High |
| T05 | No duplicate events (deduplication ID set) | Critical |
| T06 | UTM parameters present on all paid links | Medium |
| T07 | GA4 linked to Google Ads + GA4 linked to BigQuery | High |
| T08 | Conversion windows aligned across platforms | High |
| T09 | Server-side tracking layer considered | Medium |
| T10 | Third-party attribution tool (if used) reconciled vs platform (DTC) | High |
| T11 | TikTok Pixel + Events API both firing | High |
| T12 | View-through and click-through windows documented | Medium |
| T13 | Cross-domain tracking working (multi-domain checkout) | High |
| T14 | First-party data collection (email/phone) for CAPI matching | High |
| T15 | Cookie consent in place — legal basis per region in `references/global-legal-compliance.md` | Critical |
| T16 | Bot/spam traffic filtered from conversion data | Medium |

Any suspected tracking failure → verdict INVESTIGATE, hand off to `53-tracking-setup-global` before judging creative or audience.

### Dimension 6 — OPTIMIZATION (8 checks, weight 10%)

| # | Check | Severity |
|---|-------|----------|
| O01 | Automated rules documented (and any write action routed through the rule 7 gate) | Medium |
| O02 | Budget pacing reviewed weekly | Medium |
| O03 | Creative refresh cadence set (≥30% new every 14 days) | High |
| O04 | A/B testing framework defined (one variable at a time) | Medium |
| O05 | Reporting cadence: daily skim, weekly deep-dive | Low |
| O06 | Diagnostics tab reviewed (Quality, Engagement, Conversion) | Medium |
| O07 | Performance reviewed by funnel stage (TOFU/MOFU/BOFU) | High |
| O08 | Stop-loss thresholds defined per campaign, anchored on break-even CPA | High |

---

## Dropshipping Audit Checklist (Special Section)

> Dropshipping has unique audit needs: high creative volume, thin margins, attribution opacity, and compressed test cycles. This section augments — not replaces — the 84 universal checkpoints. All pass criteria below are `heuristic`.

### 1. Creative Testing Velocity

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| New creatives launched per week | ≥10 (vendor heuristic) | Critical |
| Creative-to-spend ratio | 1 winning ad funds 4-5 tests | High |
| Hook variations tested | ≥3 hooks per product | High |
| UGC creator pipeline active | ≥2 UGC creators delivering weekly | High |
| Cycle time from brief to launch | <72 hours | High |

> **Failure mode:** a store running 2-3 creatives "until they die" starves delivery of fresh signal and fatigue compounds. Fix: build a creative ops calendar (see `06-ugc-egc-brief-global`).

### 2. CBO vs ABO Setup

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Testing layer uses ABO (Ad Set Budget) | ≥3 ad sets, each funded per S01 | High |
| Scaling layer uses CBO (Campaign Budget) | Top winners only, single CBO | High |
| Budget reallocates within 3-7 days of clear winner | Document rule + route through rule 7 gate | Medium |
| No mixed CBO with non-comparable ad sets | Audit campaign structure | High |

### 3. Pixel + CAPI Dual Tracking

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Pixel + CAPI both firing on Purchase event | Verified in Test Events | Critical |
| EMQ above the team's heuristic floor | Events Manager | High |
| Email + phone + name passed via CAPI (with consent) | Backend integration | Critical |
| Server-side tracking considered for higher-AOV stores | Verified deployment | High |
| iOS attribution gap reconciled with a third-party attribution tool | Compare last 30 days | High |

### 4. Landing Page CRO Signals

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Mobile load time (LCP) fast on 4G | PageSpeed Insights | Critical |
| Add-to-Cart rate vs the store's own baseline | GA4 / Shopify | High |
| Checkout conversion (ATC → Purchase) vs break-even CVR | GA4 / Shopify | High |
| Hero matches winning ad (creative-LP message match) | Manual review | Critical |
| Trust badges, real reviews, return policy visible above fold | Manual review | High |
| Exit-intent + abandoned cart sequence active | Email tool of choice | High |

### 5. Attribution Accuracy

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| UTMs use consistent schema (utm_source/medium/campaign/content) | URL builder doc | High |
| At least one third-party attribution tool or MMP connected | Tool of choice | High |
| Platform-reported revenue vs store revenue gap documented | Reconciliation report | High |
| Post-purchase survey ("How did you hear about us?") active | Order form | Medium |
| Customer LTV tracked, not just first-order revenue | Cohort report quarterly | High |

### 6. Profit Margin Tracking

| Check | Pass criteria | Severity |
|-------|---------------|----------|
| Net margin per order calculated (after COGS, ad spend, fees) | Spreadsheet or profit tool | Critical |
| MER (total revenue / total ad spend) tracked daily | Dashboard | High |
| Break-even CPA / ROAS documented and visible (see SKILL.md "Break-even") | Operations dashboard | Critical |
| Refund/chargeback rate tracked against the store's own baseline | Store reports | High |
| Profit-per-customer rising or flat (not declining) | 90-day cohort | High |

> **Dropshipping cross-reference:** also call `29-dropshipping-mastery-global` for product-fit and supply-chain audit beyond ad-account scope.
