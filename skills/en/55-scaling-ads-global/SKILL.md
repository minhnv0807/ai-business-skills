---
name: 55-scaling-ads-global
description: "Use when a WINNING ad has to be scaled without breaking it — readiness checks, vertical scaling at plus 20 to 30 percent per step, horizontal scaling into new audiences, creatives, and channels, learning-phase reset risk, how Advantage+ and Performance Max behave when scaled, creative refresh cadence, and the signals that mean stop. Trigger on 'scale ads', 'increase the ad budget', 'scale a winner', 'CPA went up after I scaled', 'how fast can I scale', 'it worked at 50 a day and broke at 200'. Not for — fixing an account that is not working yet, see `03-performance-eval-global`; warm audience plans, see `56-retargeting-plan-global`; proving the winner first, see `19-ab-test-setup-global`."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "scale ads"
  - "increase ad budget"
  - "scale campaign"
  - "scale a winner"
  - "vertical scaling"
  - "horizontal scaling"
  - "CPA went up after scaling"
  - "how fast can I scale"
output: "File .md — scaling roadmap by week, budget increase rules, pre-scale checklist, stop signals, and a creative refresh schedule"
related:
  - product-marketing-context-global
  - 19-ab-test-setup-global
  - 21-ads-audit-global
  - 03-performance-eval-global
  - 56-retargeting-plan-global
  - 52-account-structure-global
  - 57-next-ads-plan-global
---

# Scaling Ads (Global)

Scaling means increasing spend while holding or improving efficiency. Scaling badly means CPA spikes and budget burns. **Hard rule: never increase budget while CPA is bad.** Fix the problem first (run `21-ads-audit-global`), then scale.

## Information gathering

Ask up to 4 questions:

1. **Is there a proven winner?** How many consecutive days has CPA been stable? At least 7 are needed.
2. **What are the current numbers?** CPA, ROAS, frequency, spend, and reach against total audience size.
3. **Current daily budget and target daily budget?**
4. **Which platform, and how many spare creatives exist?** Never scale on a single creative.

## Principles

1. **Bad CPA means no scaling.** Adding budget to a broken campaign accelerates the loss.
2. **+20-30% per step, never double overnight.** Sudden jumps reset the learning phase and CPA spikes. The safest cadence is +20% every 72 hours.
3. **Monitor 24-48 hours after every increase** before the next one.
4. **Do not edit a winning ad set while scaling.** Any significant change — budget shock, audience edit, creative swap inside the ad set — can reset learning.
5. **Always hold a creative reserve.** At least 2-3 fresh creatives ready before scaling. Scaling accelerates fatigue.
6. **Vertical first, horizontal in parallel.** Raise the winner's budget while duplicating audience and creative so the account never depends on a single point.
7. **Scaling raises cost per result even when done right.** Broader delivery means less efficient impressions. Decide in advance how much CPA erosion is acceptable at the higher volume.

## Workflow

### 1. Readiness check — all must pass

- [ ] Running stably for at least 7 days
- [ ] CPA at or below target on at least 5 of the last 7 days
- [ ] Frequency below 2.5 (audience not saturated)
- [ ] Reach below 50% of the addressable audience (room left to grow)
- [ ] Not currently in the learning phase
- [ ] Tracking verified correct — never scale on bad data (`53-tracking-setup-global`)
- [ ] At least 2 fresh creatives in reserve

If any item fails, do not scale. Go back to optimizing or preparing.

### 2. Vertical scaling — raise the budget

| Mode | Increase | Cadence | Condition |
|------|---------:|---------|-----------|
| Conservative | +20% | Every 72h | CPA holding at target |
| Moderate | +30% | Every 2-3 days | CPA clearly better than baseline |
| Aggressive | +50% | Once only | Very stable campaign, risk accepted |
| Never | 2x overnight | — | Guarantees a learning reset and CPA spike |

After each increase, monitor for 24-48 hours:

- CPA up by 20% or less: hold, let it stabilize, then increase again.
- CPA up more than 20%: HOLD, do not increase further.
- CPA up more than 40%: revert to the previous budget and wait 48 hours for stability.

### 3. Horizontal scaling — expand

1. **Duplicate the winning ad set into a new audience.** Keep the creative identical. Test the same demographic against a different interest theme, lookalike 1% -> 3% -> 5%, or broad. Exclude the original audience to avoid overlap.
2. **New creative on the winning audience.** Keep the audience identical, add 2-3 variants changing hook or format. Run these in the testing campaign, not inside the winning ad set.
3. **New channel with the winning message.** Port the proven hook from Meta to TikTok or YouTube (or the reverse). Keep the core message, change the execution.
4. **New market.** The cheapest volume expansion is often a second country rather than a wider audience at home. Check the cost baseline first: per `references/benchmarks-global.md`, a Tier 2 market can cost a fraction of Tier 1 CPM, but conversion value and AOV usually drop too. Re-run `10-reverse-kpi-global` for the new market before committing budget.

### 4. Learning-phase reset risk

| Action | Resets learning? | Safer way |
|--------|------------------|-----------|
| Budget increase up to 20-30% | Usually not | Step up gradually, wait 72h |
| Budget increase above 30-50% | Likely | Break into several smaller steps |
| Change audience, placement, or bid strategy | Yes | Duplicate into a new ad set instead of editing |
| Add or remove creative inside the ad set | Possibly | Add in a new ad set or the testing campaign |
| Pause and restart after a long gap | Possibly | Avoid pausing winners; throttle with budget instead |

### 5. Automated campaign types behave differently

Advantage+ (Meta) and Performance Max (Google) do not respond to scaling the way manual campaigns do:

- **They dislike frequent budget edits.** Large or repeated changes push them back into a learning state. Same +20-30% discipline applies, with a longer settling window.
- **They need signal, not structure.** When performance drops during scaling, the fix is usually more or better creative assets and cleaner conversion data, not more ad sets.
- **They cannibalize manual campaigns.** Running Advantage+ or Performance Max alongside manual campaigns targeting the same pool means competing in the same auction and unreadable attribution. Decide which one owns the objective.
- **Exclusions and audience signals are directional, not hard rules.** Do not assume an exclusion list keeps existing customers out the way it does in a manual campaign — verify with a customer-versus-new-customer report.
- **Scale by raising the budget on one campaign**, not by duplicating the campaign. Duplicates split the conversion signal and both learn slower.

### 6. Scaling roadmap

Expressed as multiples of the starting daily budget so it holds in any market or currency.

| Week | Daily budget | Action | KPI checkpoint |
|------|-------------|--------|----------------|
| 1 (testing) | 1.0x baseline | Test 3-5 ad sets | CPA at or below target |
| 2 | 1.4-1.7x | +20% on the winner, pause losers | CPA stable 5 of 7 days |
| 3 | 2.0-3.0x | +20-30% again, duplicate the winner into a new audience | Volume up, CPA held |
| 4 | 3.0-5.0x | Horizontal: lookalikes, broad, new channel | CPA within tolerance |
| Month 2+ | 5x+ | Full scale plus continuous new creative | ROAS at or above target |

Every step must still clear the learning floor from `52-account-structure-global`: `(50 events x target CPA) / 7`.

### 7. Operating cadence

**Daily, 15 minutes:** yesterday's CPA versus target — scale, hold, or pause; frequency above 2.5 means prepare new creative; check spend pace.

**Weekly:** pull 7 days of data and apply the decision rules — scale winners +20%, pause losers with a written reason, brief new creative wherever frequency is climbing. Compare against `references/benchmarks-global.md` for the market and industry before concluding a campaign is broken.

## Stop-scaling signals

- CPA up more than 30% versus baseline for two consecutive days
- Frequency above 3.5
- ROAS down more than 25%
- CTR down more than 40% from its stable level
- Delivery drops suddenly (check for rejections or "learning limited")

Action: revert to the last budget that worked, wait 48-72 hours for stability, and run `21-ads-audit-global` if it does not recover.

## Creative refresh schedule while scaling

| Signal | Severity | Action |
|--------|----------|--------|
| Frequency above 2.5 | Warning | Brief new creative now |
| Frequency above 3.5 | Urgent | Launch new creative today |
| CTR down more than 30% | Week 2-3 | Refresh the hook, keep the body |
| Routine | Every 2-3 weeks | Keep 2-3 new creatives ready to swap |

## Output structure

File name: `scaling-plan-[product]-[YYYYMMDD].md`

```markdown
# Scaling Plan — [Campaign/Product]
Baseline CPA: [amount] · Current daily budget: [amount] · Target daily budget: [amount] · Market: [x]

## 1. Readiness checklist     [7 items with status]
## 2. Vertical plan           [increase schedule, 24-48h checkpoints]
## 3. Horizontal plan         [new audiences / creatives / channels / markets, with exclusions]
## 4. Automated campaign notes [Advantage+ / Performance Max handling]
## 5. Weekly roadmap          [budget multiple, action, checkpoint]
## 6. Stop signals            [thresholds and the action for each]
## 7. Creative pipeline       [reserve creatives and deadlines]
```

## Related skills

- `19-ab-test-setup-global`: a winner must come from a valid test before it is scaled.
- `21-ads-audit-global`: audit before scaling if CPA is unstable, and again if scaling breaks performance.
- `03-performance-eval-global`: daily and weekly checks and decision rules.
- `56-retargeting-plan-global`: scaling cold traffic grows the warm pool — raise retargeting budget alongside.
- `52-account-structure-global`: how to split the winner into its own scaling campaign.
- `57-next-ads-plan-global`: this period's scaling results feed next period's plan.

## Quality checklist

- [ ] All 7 readiness conditions checked before any budget increase is proposed
- [ ] Increase steps stay at +20-30% with 24-48 hour monitoring points
- [ ] Horizontal plan includes exclusions to prevent overlap with the original audience
- [ ] Learning-reset risk table included with the safer alternative for each action
- [ ] Advantage+ / Performance Max handled separately from manual campaigns
- [ ] Stop-scaling signals stated with numeric thresholds
- [ ] At least 2 reserve creatives confirmed before scaling starts
- [ ] Budget path expressed in multiples, and every step clears the learning floor
- [ ] The hard rule is restated: bad CPA means no budget increase
