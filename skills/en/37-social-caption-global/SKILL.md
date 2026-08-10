---
name: 37-social-caption-global
description: "Use when the user needs ORGANIC social captions for Instagram, LinkedIn, TikTok, Facebook, or X — hook, mobile-readable body, two A/B variants, platform-correct hashtags, written to brand voice and funnel stage. Trigger on 'write a caption', 'Instagram caption', 'LinkedIn post copy', 'TikTok caption', 'caption for this photo', 'we have the image but no words'. Also use when the user drops a picture and asks what to write with it. Not for — paid ad copy with character limits and policy, see `05-ad-copy-global`; the spoken lines in a video, see `04-script-video-global`; the brief that precedes writing, see `36-content-brief-global`; long-form authority posts, see `26-thought-leadership-content-global`."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "write a caption"
  - "Instagram caption"
  - "LinkedIn post"
  - "TikTok caption"
  - "Facebook post copy"
  - "social post copy"
  - "organic post"
  - "caption variants"
output: "File .md — 2 ready-to-publish caption variants (A/B) plus selection notes and platform-correct hashtags, written to brand voice and funnel stage"
related:
  - product-marketing-context-global
  - 35-brand-voice-global
  - 36-content-brief-global
  - 01-content-calendar-global
  - 05-ad-copy-global
  - 42-image-brief-global
  - 43-carousel-brief-global
---

# Social Caption (Global)

Organic captions for owned social posts on Instagram, LinkedIn, TikTok, Facebook, and X. A good caption has a hook strong enough to stop the thumb, a body that earns the scroll, and a CTA clear enough that the reader knows what to do. Written for someone reading on a phone, moving fast.

**Not this skill:** paid ad copy — different constraints (ad policy review, character limits in placements, primary text truncation, iteration against CPA). Use `05-ad-copy-global`.

## Information gathering

Read the Brand Voice Document (`35-brand-voice-global`) and the content brief (`36-content-brief-global`) first. If the brief already sets angle, hook direction, and CTA, use them — do not re-ask. If both are missing, ask up to 4 questions:

1. **What is the product, service, or topic — and is there a real number, testimonial, or case study available?**
2. **Which funnel stage?** TOFU (awareness) / MOFU (consideration) / BOFU (conversion)
3. **Which channel?** Instagram / LinkedIn / TikTok / Facebook / X
4. **What is the intended CTA and target length?** (comment / click / DM / book / buy — short under 100 words / medium 100-200 / long over 200)

## Principles

1. **The first line is the hook.** Never open with the brand name or a greeting. The reader decides in about a second.
2. **One caption = one message.** Do not stack benefits into a single post.
3. **A specific number beats a vague adjective.** "Cut onboarding from 11 days to 3" beats "dramatically faster".
4. **Write for mobile.** Paragraphs of 1-3 sentences with white space between them. No walls of text.
5. **BOFU needs a clear CTA and a real reason to act now.** Manufactured urgency is a brand risk; a genuine deadline, batch, or capacity limit is not.
6. **Read it aloud before you ship it.** If it sounds like a status report, the tone is wrong.
7. **Check it against brand voice.** Vocabulary and banned words from `35-brand-voice-global`. Default banned list: "game-changer", "revolutionary", "unlock your potential", "don't miss out", "act now", "elevate your", "we're excited to announce", "best-in-class".
8. **Disclose material connections.** Paid partnership, gifted product, affiliate link, or employee-authored posts need clear disclosure in the caption itself, not only in a platform tag — FTC endorsement rules apply to organic content.

## Workflow

### 1. Read the brief and the brand voice

From `36-content-brief-global`: angle, source insight, key message, CTA. From `35-brand-voice-global`: tone, vocabulary, sentence rules. Without a brief, gather the 4 answers above first.

### 2. Write the hook to funnel stage

The hook must stand alone with no context.

| Stage | Hook direction | Typical form |
|-------|----------------|--------------|
| TOFU | Pain / curiosity / contrarian | A question that names the frustration, or a statement that inverts the category's default belief |
| MOFU | Social proof / concrete result | A number, a short testimonial, a before-and-after |
| BOFU | Offer / genuine urgency | A specific discount or bonus, a real deadline, a real capacity limit |

### 3. Write 2 genuinely different A/B variants

The two variants must differ structurally, not by a few swapped words:

- **Variant A**: one hook direction (for example pain) plus one body structure (for example a list).
- **Variant B**: a different hook direction (for example curiosity or social proof) plus a different structure (for example a short narrative).

Each variant: Hook (opening line) then Body (2-4 short paragraphs, 1-3 sentences each) then CTA (a specific action).

### 4. Write the selection note

State plainly: use A when [context or audience], use B when [context or audience], and how to mix (hook A with body B, or the reverse) if that is sensible.

### 5. Apply hashtags and platform adaptation

Hashtags are a discovery and categorization signal now, not a reach lever. Fewer and more targeted outperforms volume on every major platform.

| Channel | Hashtags | Adaptation |
|---------|----------|------------|
| Instagram | 3-5, targeted to the actual topic | The first line carries the hook — it is what shows before "more". Visual leads; the caption supports it |
| LinkedIn | 3, professional and topical | First 2-3 lines are visible before "see more". First-person point of view, no hard sell, external links often better in the first comment |
| TikTok | 3-5, mixing one trending tag with niche tags | 1-2 lines, keyword-forward so it surfaces in TikTok search. The real hook lives in the first second of video; the caption supports it |
| Facebook | 0-2, or none | Longer captions work. Conversational. Line breaks matter more than hashtags |
| X | 1-2 maximum | One idea, no wind-up. If it needs more, it is a thread — write it as one |

Truncation points and character limits change; check the platform preview before publishing rather than trusting a remembered number.

## Output structure

File name: `social-caption-[topic]-[YYYYMMDD].md`

```markdown
# Social Caption — [Topic]

## Context
| Item | Detail |
|------|--------|
| Funnel stage | TOFU / MOFU / BOFU |
| Channel | |
| Objective | |
| Target length | |
| Source brief | [link to content brief if any] |
| Disclosure required | none / paid partnership / gifted / affiliate |

## Variant A — [hook direction]
**Hook:**
[Opening line — stands alone, creates pain / curiosity / surprise]

**Body:**
[2-4 short paragraphs, 1-3 sentences each, white space between]

**CTA:**
[Specific action]

## Variant B — [different hook direction]
**Hook:**
[Different angle — if A used pain, B uses curiosity or social proof]

**Body:**
[Different structure from A — if A used a list, B uses narrative]

**CTA:**
[May match or differ from A]

## Selection notes
- Use **A** when: [context / audience]
- Use **B** when: [context / audience]
- Mixing A+B: [hook A with body B or the reverse, if sensible]

## Hashtags
[Per platform norm — Instagram 3-5 / LinkedIn 3 / TikTok 3-5 / Facebook 0-2 / X 1-2]

## Brand voice check
- Matches Brand Voice Document: Yes / No
- Banned words: none present
- Read aloud: sounds natural
- Every claim substantiable: Yes
```

## Related skills

- `35-brand-voice-global`: read before writing (tone, vocabulary, banned words); run its section VII checklist before handoff.
- `36-content-brief-global`: supplies angle, source insight, key message, and CTA.
- `01-content-calendar-global`: captions are written against a calendar slot (channel, funnel stage, pillar).
- `05-ad-copy-global`: when the post will run as a paid ad, rewrite to ad-copy standards. Never push an organic caption into an ad unchanged.
- `42-image-brief-global`, `43-carousel-brief-global`: the accompanying visual brief, produced after the caption is approved.

## Quality checklist

- First line is a hook — no brand name, no greeting.
- One caption = one message = one CTA.
- The two variants differ genuinely (different hook direction and different structure).
- Selection note states when to use A and when to use B.
- Specific numbers replace vague adjectives wherever evidence exists.
- Paragraphs are 1-3 sentences and readable on a phone.
- BOFU has a clear CTA and, where urgency is used, a real reason for it.
- No banned words (checked against `35-brand-voice-global`).
- Hashtag count and style match the channel's current norm.
- Material connection disclosed in-caption where one exists.
- Read aloud — it sounds like a person talking.
