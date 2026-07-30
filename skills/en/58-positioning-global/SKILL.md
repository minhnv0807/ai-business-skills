---
name: 58-positioning-global
description: "Use when the user needs to define or sharpen product/brand positioning: a positioning statement built on Promise + Proof + Path, a differentiation matrix against competitors, category entry points, a three-level message hierarchy, and tagline directions. Trigger on 'positioning', 'positioning statement', 'brand positioning', 'differentiation', 'USP', 'why should customers choose us', 'repositioning', or 'brand message'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "positioning"
  - "positioning statement"
  - "brand positioning"
  - "differentiation"
  - "USP"
  - "why should customers choose us"
  - "repositioning"
  - "brand message"
  - "category entry points"
output: "File .md — positioning statement (Promise + Proof + Path), differentiation matrix, category entry points, 3-level message hierarchy, tagline directions"
related:
  - product-marketing-context-global
  - 08-competitor-research-global
  - 09-customer-insight-global
  - 31-offer-design-global
  - 59-go-to-market-global
  - 02-campaign-brief-global
---

# Positioning (Global)

> Positioning is not a pretty tagline. It is an explicit decision: who you serve, what you solve, and who you beat. Sharp positioning gives content an angle, ads a hook, and the team one story. Vague positioning makes everything generic. Run `08-competitor-research-global` and `09-customer-insight-global` first if you do not yet have competitor data and customer insight.

## Information gathering

Read `.agents/product-marketing-context-global.md` and the Brand Hub if available. If missing, ask up to 4 questions:

1. **What is the product or service** — what concrete result does the buyer get, at what price, in what category?
2. **Who buys today and why** (ask real customers, do not guess)? What words do they use when they recommend you to someone else?
3. **How are the main competitors positioned** — what is their message, and what are their strengths and weaknesses?
4. **Where are you genuinely better** (with evidence)? Where are you genuinely worse, so you avoid positioning into a weak spot?

## Principles

1. **Positioning requires a choice.** You cannot be cheapest, most premium, and fastest at the same time. Pick one lead direction and accept losing the others.
2. **Every claim needs proof.** Differentiation without evidence is a slogan. Buyers do not believe it, and under FTC substantiation rules an advertised claim needs supporting evidence on file before it runs.
3. **Know who you are NOT for.** Naming the segment you do not serve sharpens the message and stops budget waste.
4. **Positioning is stable, messaging is flexible.** Review positioning every 6 months as the market and competitors move. Campaign messaging can change; positioning should not change monthly.
5. **Feature to value to message.** Do not sell the feature ("real-time dashboard"). Convert it to value ("know today whether you are profitable"), then to a message that lands emotionally ("stop finding out at month end that you were losing money").

## Workflow

### 1. Pick a positioning strategy

Six common directions — choose the one your real strengths can defend:

| Strategy | Description | Example message direction |
|----------|-------------|---------------------------|
| By attribute | Lead on one distinctive property | "The only CRM built for field service teams" |
| By price and quality | Premium, or value-for-money | "Agency-grade creative at in-house cost" |
| By use case | Own a specific situation | "Built for teams shipping weekly, not quarterly" |
| By user | Aim at one narrow buyer | "For solo founders doing their own marketing" |
| By category | Category creator or leader | "The first compliance layer for AI agents" |
| Against a competitor | Define yourself by contrast | "Not another course. A working system." |

Define your category: narrow enough to win, wide enough to have a market.

### 2. Write the positioning statement

Two layers, use both:

**Layer 1 — Full statement (internal, used in every brief):**

```
For [target audience] — people who [specific pain or desire],
[brand/product] is the [category]
that helps them [core outcome],
unlike [competitor or alternative], because [real differentiator].
```

**Layer 2 — Promise + Proof + Path (for content, sales, and landing pages):**

| Component | Question | Example (DTC skincare) |
|-----------|----------|------------------------|
| Promise | What do you commit to, based on real customer insight? | "Know exactly what your skin needs before you spend on the wrong products" — not "effective skincare" |
| Proof | What evidence shows the promise is real? | Verified before/after photos, dermatologist review, third-party ingredient testing, published pricing with no hidden fees |
| Path | What steps does the buyer walk to get the promise? | 1. Free skin quiz > 2. Personal routine > 3. Follow the routine > 4. Reassess at 8 weeks |

The Promise fails if it is generic. The Path fails if the buyer cannot picture the next step.

### 3. Build the differentiation matrix

Pull data from `08-competitor-research-global`:

| Competitor / Alternative | Their positioning | Strengths | Weaknesses | How you differ (with proof) |
|--------------------------|-------------------|-----------|------------|-----------------------------|
| Competitor A | | | | |
| Competitor B | | | | |
| Alternative (DIY or do nothing) | | | | |

Then lock **3 real differentiators** — each a Claim plus its Proof:

| # | Claim | Proof / reason to believe |
|---|-------|---------------------------|
| 1 | | |
| 2 | | |
| 3 | | |

Primary differentiator: one sentence. This is what every piece of content and every ad will reflect.

Market gap (what nobody does well yet): write it down explicitly so you can take it.

### 4. Map category entry points

Category entry points are the situations that make a buyer think of the category and start looking. Strong positioning means being remembered first in those moments.

| Trigger situation | What the buyer is thinking or searching | How you want to be remembered | Content / channel that serves it |
|-------------------|----------------------------------------|-------------------------------|----------------------------------|
| [e.g. breakout two weeks before a wedding] | [needs a fast fix, afraid of being scammed] | [transparent, diagnosis before selling] | [short-form diagnostic video, search] |
| [e.g. month-end and still no idea if we are profitable] | | | |
| [e.g. current vendor raised prices or missed a deadline] | | | |

Pick 2-3 priority entry points and map them to awareness stages: unaware (educate — name the problem) > problem-aware but not motivated (agitate) > solution-aware but undecided (compare — differentiate) > ready (close — offer).

### 5. Build the message hierarchy and tagline directions

| Level | Where it is used | Content |
|-------|------------------|---------|
| Level 1 — Core message | Headline, ad hook | Shortest possible: biggest benefit, clearest audience |
| Level 2 — Supporting messages | Body copy, landing page | 2A proof/social proof · 2B differentiation · 2C objection handling |
| Level 3 — Proof points | Testimonials, case studies | Specific numbers, real customer quotes, outcomes achieved |

Tagline directions: 3-5 options, each 5-8 words, anchored on the primary differentiator or the promise. Note which direction to test — the final tagline is chosen after message testing with real buyers, not in a meeting room.

### 6. Validate

- Read the statement to someone who knows nothing about the product. Do they understand it immediately?
- Does every claim have proof attached, and is that proof documented well enough to defend under FTC substantiation?
- Do sales and content, reading the same doc, say the same thing?
- One-minute check: fill in "[Product] helps [specific segment] achieve [measurable outcome] through [distinct mechanism]." If it fills cleanly, the positioning holds.

## Output structure

File name: `positioning-[product-name]-[YYYYMMDD].md`

```markdown
# Positioning — [Brand / product]

## 1. Positioning statement
- Full statement: "For... is the... that helps... unlike... because..."
- Promise: | Proof: | Path (steps):

## 2. Target segmentation
| Segment | Description | Main pain | Main desire | Priority |
| Primary / Secondary / Tertiary |
- Who this is NOT for:

## 3. Differentiation matrix
| Competitor | Their positioning | Strengths | Weaknesses | How you differ |
- 3 differentiators (Claim + Proof):
- Primary differentiator (one sentence):
- Market gap:

## 4. Category entry points
| Trigger situation | What they think | How you want to be remembered | Content / channel |

## 5. Message hierarchy
- Level 1 core message:
- Level 2 supporting (proof / differentiation / objection):
- Level 3 proof points:

## 6. Tagline directions
| # | Option (5-8 words) | Anchored on which differentiator | Test note |

## 7. Positioning map
[Two axes fitting the category — your position vs competitors — open space]

## 8. Rollout plan
| Where applied | What to update | Owner | Deadline |
| Ads / Landing page / Content pillars / Sales script / Brand Hub |
```

## Positioning map

Pick two axes that fit the category (price x perceived quality; specialist x approachable; premium x mass; trust x entertainment). Read the map: crowded corners are brutal auctions; empty corners are open space you can take — but verify real demand exists there before jumping in.

## Related skills

- `08-competitor-research-global`: run first — supplies the competitive landscape for step 3.
- `09-customer-insight-global`: run first — pain, desire, and triggers are the raw material for the Promise and entry points.
- `31-offer-design-global`: run after — offer architecture must align with positioning (do not position premium then discount everywhere).
- `59-go-to-market-global`: uses the positioning statement as the source message for the GTM plan.
- `02-campaign-brief-global`: the core message in the brief comes from message hierarchy Level 1.

## Quality checklist

- [ ] Exactly one lead positioning strategy chosen — not a blend of three
- [ ] Full statement covers target + category + outcome + differentiator
- [ ] Promise is based on real customer insight, not internal wishes
- [ ] Every claim has proof, and the proof is documented well enough to substantiate
- [ ] Contains an explicit "who this is NOT for" section
- [ ] Differentiation matrix has at least 2 competitors plus 1 alternative
- [ ] At least 2 category entry points with concrete triggers
- [ ] Message hierarchy has all 3 levels, Level 1 short enough to use as a hook
- [ ] 3-5 tagline directions plus a test plan
- [ ] Not positioned on a dimension where you are weaker than competitors
- [ ] Rollout plan covers ads, landing page, content, sales, and Brand Hub with one message
