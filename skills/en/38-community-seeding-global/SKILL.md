---
name: 38-community-seeding-global
description: "Use when the user wants a plan for showing up in communities — Reddit, Facebook Groups, Discord, Slack, LinkedIn groups, Quora, niche forums — without astroturfing. Trigger on 'community marketing', 'Reddit marketing', 'seeding plan', 'post in groups', 'community strategy', 'forum marketing', or 'Discord and Slack communities'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "community marketing"
  - "Reddit marketing"
  - "seeding plan"
  - "post in groups"
  - "community strategy"
  - "forum marketing"
  - "Discord communities"
  - "Quora answers"
output: "File .md — prioritized community list with rules, named participant roster, 4 post types written in full, response scripts, participation calendar, measurement table, compliance and red-line checklist"
related:
  - product-marketing-context-global
  - 09-customer-insight-global
  - 15-social-listening-global
  - 35-brand-voice-global
  - 37-social-caption-global
  - 06-ugc-egc-brief-global
  - 39-content-audit-global
---

# Community Seeding (Global)

Community marketing done properly is participation, not placement. A brand earns the right to mention itself by being useful first, under a real name, in communities whose rules it has actually read. Manufactured engagement — sockpuppets, brand-written reviews, coordinated voting — is both against every major platform's rules and, in the US, against FTC rules. Getting caught is a bigger loss than never posting.

> Full per-platform rules, disclosure mechanics, and cadence limits: read `references/platform-rules.md`.

## Information gathering

Read `.agents/product-marketing-context-global.md` and the insight file (`09-customer-insight-global`) first. If information is missing, ask up to 4 questions:

1. **What is being marketed, and which communities does the target audience actually spend time in?** (subreddits, Discord servers, Slack groups, Facebook Groups, LinkedIn groups, Quora topics, niche forums)
2. **What is the objective?** Awareness / qualified leads / traffic / genuine social proof / product feedback
3. **Who on the team will participate under their real name, and how much time per week can they give?**
4. **Has the brand posted in these communities before — what happened, and was anything removed or banned?**

## Principles

1. **Real people, real names, one account each.** Every participant is an actual member of the team using a single account with their own identity. No personas, no second accounts, no purchased or aged accounts.
2. **Value first, at roughly 9:1.** For every promotional or self-referential post, contribute nine genuinely useful ones. This ratio is Reddit's long-standing self-promotion norm and travels well to every other community.
3. **Read the rules before the first post.** Every subreddit, server, and group has its own self-promotion policy. Many require flair, a specific thread, or a minimum tenure. Rules override this plan.
4. **Disclose the material connection every time.** If the person works for, is paid by, or holds equity in the brand, that must be clear in the post itself — not buried in a bio. This is FTC 16 CFR Part 255.
5. **Never write a review as if it came from a customer.** Brand-authored or employee-authored reviews presented as independent are prohibited under the FTC fake-review rule (16 CFR Part 465) and carry civil penalties. Customer stories must come from the customer, with permission on file.
6. **No vote manipulation or coordinated engagement.** No asking colleagues to upvote, no brigading, no cross-account replies to your own posts. Platforms detect this reliably.
7. **Warm up before you contribute anything promotional.** Minimum two weeks of ordinary participation per community; four is better.
8. **Measurable or it does not count.** UTM where links are permitted, a "how did you hear about us" field, and a log of removals and bans.

## Workflow — 4 phases

### Phase 1 — Community research and rules mapping (1 week)

Selection criteria:

| Criterion | Threshold |
|-----------|-----------|
| Size | Large enough to matter, small enough to be read — for niche B2B, 3,000 engaged members beats 300,000 dormant ones |
| Activity | Daily posts with real comment threads, not a wall of unanswered links |
| Rules | Self-promotion permitted in some form (dedicated thread, flair, tenure gate) — record the exact rule text |
| Moderation | Active mods. Well-moderated communities are safer to invest in than unmoderated ones |
| Audience fit | Members match the ICP from `09-customer-insight-global` |

Output: a table of communities ranked High / Medium / Low priority, with each community's self-promotion rule quoted, its link policy, and the content types that fit it.

### Phase 2 — Participant setup and warm-up (2-4 weeks)

Each participant needs:

- A real profile: real name, real photo, a bio that states where they work. Affiliation visible before anyone has to ask.
- Genuine history: joined, commented, answered questions 3-5 times a week, without mentioning the brand.
- A consistent area of expertise that matches what they actually know — a support lead answers support questions, a founder answers business-model questions.
- No brand mention at all during warm-up.

A new account with no history is not usable for this work. If nobody on the team can commit the time, do not run the plan — hand the objective to `06-ugc-egc-brief-global` and work with creators who are already members of those communities, under a disclosed paid arrangement.

### Phase 3 — Participation content (ongoing)

Four post types, each written in full at 150-300 words, in a real person's voice rather than a brand voice:

| Type | Purpose | Brand mention rule |
|------|---------|--------------------|
| 1. Genuine question / research post | Learn from the community, surface demand language | No brand mention at all |
| 2. Expertise share / teardown | Give real, specific value; earn recognition | Affiliation stated up front; product mentioned only if it is genuinely the answer |
| 3. Answering an existing thread | Help someone who already asked | Disclose the connection in the same comment, in plain words |
| 4. Customer story amplification | Real social proof | Written by the customer, posted by the customer or clearly attributed with permission. Never brand-authored |

What performs in communities: open questions, specific how-we-did-it write-ups with numbers, short guides, teardowns, and honest post-mortems including what did not work.

Response handling for every post:

- Prepare honest answers to the 3-5 questions members will realistically ask (pricing, availability, whether it actually works, alternatives — including competitors).
- Reply within the first few hours. Early real engagement is what most feeds reward.
- If someone asks whether you work there, answer plainly. Never deflect.
- Recommend the product only when a member has described a problem it genuinely solves, and disclose in the same breath.

### Phase 4 — Measurement

| Metric | How to capture |
|--------|----------------|
| Post reach and engagement | Native post stats per community; screenshot where no export exists |
| Inbound DMs and mentions | Ask "how did you hear about us" at first contact; log the community |
| Traffic | UTM per community, only where links are allowed by the rules |
| Leads and revenue | CRM source field set to the community name |
| Removals, warnings, bans | Log every one with the rule cited — this is the risk signal that decides whether to keep investing in that community |
| Sentiment | Track how the brand is spoken about unprompted, via `15-social-listening-global` |

## Output structure

File name: `community-seeding-[product]-[YYYYMMDD].md`

```markdown
# Community Seeding Plan — [Product] — [Period]

## I. Target communities
| Community | Platform | Size | Activity | Self-promotion rule (quoted) | Link policy | Priority | Content types that fit |
|-----------|----------|------|----------|------------------------------|-------------|----------|------------------------|
| | | | | | | High/Med/Low | |

## II. Participant roster
| Person | Role | Account | Expertise area | Warm-up status | Communities owned | Weekly time |
|--------|------|---------|----------------|----------------|-------------------|-------------|
| | | | | Not started / In progress / Ready | | |

## III. Four post types — written in full
### Type 1 — Genuine question (no brand mention)
[Full post, 150-300 words, real person's voice]

### Type 2 — Expertise share (affiliation stated up front)
[Full post — real insight, specific, not an advertisement]

### Type 3 — Answering an existing thread (connection disclosed inline)
[Full reply — answers the question first, mentions the product only if it is the honest answer]

### Type 4 — Customer story amplification (customer-authored, permission on file)
[The customer's own words + where permission is recorded]

## IV. Response scripts
| Likely question | Honest prepared answer | Who answers |
|-----------------|------------------------|-------------|
| | | |

## V. Participation calendar
| Date | Community | Post type | Participant | Summary | Target engagement |
|------|-----------|-----------|-------------|---------|-------------------|
| | | | | | |

## VI. Measurement
| Post | Community | Engagement | DMs | Leads | Removed / warned | Notes |
|------|-----------|------------|-----|-------|------------------|-------|
| | | | | | | |

## VII. Compliance log
| Post | Disclosure used | Rule checked | Approver |
|------|-----------------|--------------|----------|
| | | | |
```

## Red lines — never do these

- **Never** create or use a persona, sockpuppet, or second account. One real person, one account.
- **Never** write a review, testimonial, or "just a happy customer" post on behalf of a customer.
- **Never** ask colleagues to upvote, like, or reply to make a post look organic. That is vote manipulation on Reddit and coordinated inauthentic behavior on Meta.
- **Never** omit the material-connection disclosure when a participant is an employee, contractor, affiliate, or equity holder.
- **Never** post an identical block of text across multiple communities. Spam filters and members both notice.
- **Never** drop a product link in the first post to a community, or in any community whose rules forbid links.
- **Never** cold-DM members who have not asked to be contacted.
- **Never** argue with moderators. If a post is removed, read the rule, adjust, and move on.

Risks to manage: post removal or account ban (lost warm-up time — prevent by following rules); public exposure as astroturfing (severe brand damage — prevent by never doing it, and by answering affiliation questions honestly); community rule changes (re-read rules monthly); FTC enforcement on undisclosed endorsements and fake reviews (prevent with the compliance log in section VII).

## Related skills

- `09-customer-insight-global`: identifies which communities the ICP actually uses and supplies their real language.
- `15-social-listening-global`: tells you what the community is already discussing, so the angle fits an active conversation.
- `35-brand-voice-global`: types 2 and 3 still have to match the brand's core message, even written in a personal register.
- `06-ugc-egc-brief-global`: the paid alternative — working with creators and community members through a disclosed paid arrangement.
- `37-social-caption-global`: owned-channel posts, which follow different rules from community posts.
- `39-content-audit-global`: feed community results into the periodic audit to decide which communities to keep.

## Quality checklist

- Every community's self-promotion rule is quoted verbatim, not summarized from memory.
- Every participant is a real, named person with one account and a stated affiliation.
- Warm-up of at least two weeks completed before any promotional participation.
- All 4 post types written in full — no outlines.
- Posts read as a person wrote them, not a brand page.
- No brand-authored customer reviews anywhere in the plan.
- Material connection disclosed in every post where one exists, in the post itself.
- Value-to-promotion ratio across the calendar is at least 9:1.
- Cadence respects each community's rules and does not repeat identical text.
- Measurement defined per post (UTM where permitted, source field, DM attribution).
- Removal and ban log in place.
- No red line is crossed anywhere in the plan.
