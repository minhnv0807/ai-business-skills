---
name: 41-campaign-asset-list-global
description: "Use when a campaign needs its full design asset list before anyone opens a tool — asset type, dimensions, channel, quantity, priority, owner, deadline, and status, with deadlines counted backward from launch day on a T-14 to D+1 timeline plus a naming convention. Trigger on 'campaign asset list', 'what does the designer need', 'list the design files', 'creative asset plan', 'how many banners do we need', 'the designer keeps asking what to make'. Not for — the spec for one individual image, see `42-image-brief-global`; a slide sequence, see `43-carousel-brief-global`; an urgent mid-campaign swap, see `48-quick-visual-brief-global`; resizing an existing master, see `50-asset-resize-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "campaign asset list"
  - "asset list"
  - "design checklist for campaign"
  - "what does the designer need"
  - "list the design files"
  - "creative asset list"
  - "asset plan"
output: "File .md — asset table by channel with deadlines counted back from launch day, the T-14 to D+1 designer timeline, and a naming convention. The designer can start without a follow-up call."
related:
  - product-marketing-context-global
  - 02-campaign-brief-global
  - 42-image-brief-global
  - 43-carousel-brief-global
  - 44-video-editor-brief-global
  - 45-design-tool-brief-global
  - 47-design-review-global
  - 48-quick-visual-brief-global
  - 50-asset-resize-global
---

# Campaign Asset List (Global)

The first step of design production: list every asset the campaign needs before opening any design tool. Read the campaign brief from `02-campaign-brief-global` first; if there is no brief yet, run that skill before this one.

## Information gathering

Read `.agents/product-marketing-context-global.md` and the campaign brief if available. If information is missing, ask up to 4 questions:

1. **Campaign name, primary objective, and launch date?** Lead, sale, or awareness — plus the confirmed launch date, which anchors every backward deadline.
2. **Which channels?** Meta Ads, TikTok Ads, Google/YouTube, LinkedIn, Pinterest, email (Klaviyo/Mailchimp/HubSpot), landing page — is organic running in parallel?
3. **Which formats?** Video ads or static only? Any UGC or creator content in the mix?
4. **Who owns delivery?** Which designer takes the work, and does a brand guideline exist? If not, run `46-brand-guideline-global` first.

## Principles

1. **List first, tool second.** Build the list before opening Canva, Figma, or Adobe Express.
2. **Every asset has a dated deadline.** "As soon as possible" is not a deadline.
3. **Every funnel stage needs its own creative.** TOFU, MOFU, and BOFU must not share one asset.
4. **A missing asset on launch day is a planning failure, not a design failure.** Every gap traces back to an incomplete list.
5. **Status is updated in this file in real time** so the lead can track progress without asking.
6. **Ask when the brief is thin.** Never guess the missing input.

## Workflow

### 1. Map channels and formats

From the campaign brief, list every channel that will run and the formats each one needs: single image, carousel, story/reel, in-feed video, email banner, landing page section, organic post.

### 2. Map assets to the funnel

| Stage | Creative job | Example assets |
|-------|--------------|----------------|
| TOFU | Stop the scroll, name the pain, build awareness | Single-image hook, video thumbnail, teaser post |
| MOFU | Build trust, explain, show proof | Value carousel, story series, case-study banner |
| BOFU | Close the conversion, make the offer explicit | Retargeting static, end-card CTA, landing page hero |

### 3. Set deadlines backward from launch

| Complexity | Example assets | Deadline |
|------------|----------------|----------|
| Concept MVP (approved before full production) | Rough layout, draft concept | Launch - 7 days |
| Complex | Landing page, video, video thumbnail | Launch - 5 days |
| Medium | Carousel, full banner size set | Launch - 3 days |
| Fast | Static post, story | Launch - 1 day |

### 4. Assign owner, priority, and status

Every row carries an owner, a priority (High / Medium / Low), and a status (DRAFT / REVIEW / APPROVED / ARCHIVED). Assets close to launch on the primary channel are always High.

## Output structure

File name: `campaign-asset-list-[campaign-name]-[YYYYMMDD].md`

```markdown
# Asset List — [Campaign name]

## Overview
| Item | Detail |
|------|--------|
| Campaign name | |
| Launch date | |
| Channels | |
| Total assets required | |
| Designer | |
| Brand guideline applied | [link to brand guideline file] |

## Meta Ads (Facebook / Instagram)
| # | Asset | Dimensions | Stage | Quantity | Priority | Owner | Deadline | Status |
|---|-------|-----------|-------|----------|----------|-------|----------|--------|
| 1 | Single image — Feed | 1080x1080 | TOFU | 2 variants | High | | Launch-1 | DRAFT |
| 2 | Single image — Link/landscape | 1200x628 | TOFU | 2 variants | Medium | | Launch-1 | |
| 3 | Story / Reels cover | 1080x1920 | MOFU | 2 variants | Medium | | Launch-1 | |
| 4 | Carousel 5-7 cards | 1080x1080 | MOFU | 1 set | High | | Launch-3 | |
| 5 | Retargeting static | 1080x1080 | BOFU | 2 variants | High | | Launch-1 | |

## TikTok Ads
| # | Asset | Dimensions | Stage | Quantity | Priority | Owner | Deadline | Status |
|---|-------|-----------|-------|----------|----------|-------|----------|--------|
| 6 | Static cover / thumbnail | 1080x1920 | TOFU | 2 variants | High | | Launch-5 | |
| 7 | End card / CTA overlay | 1080x1920 | BOFU | 1 | Medium | | Launch-3 | |

## LinkedIn / Pinterest / YouTube
| # | Asset | Dimensions | Purpose | Owner | Deadline | Status |
|---|-------|-----------|---------|-------|----------|--------|
| 8 | LinkedIn single image | 1200x627 | B2B awareness | | Launch-3 | |
| 9 | Pinterest pin | 1000x1500 | Discovery traffic | | Launch-3 | |
| 10 | YouTube thumbnail | 1280x720 | Video cover | | Launch-5 | |

## Email (Klaviyo / Mailchimp / HubSpot)
| # | Asset | Dimensions | Purpose | Owner | Deadline | Status |
|---|-------|-----------|---------|-------|----------|--------|
| 11 | Email header banner | 600x200 | Broadcast | | Launch-3 | |
| 12 | Email hero image | 600x400 | Offer email | | Launch-3 | |

## Landing page / Website
| # | Asset | Spec | Purpose | Owner | Deadline | Status |
|---|-------|------|---------|-------|----------|--------|
| 13 | Hero banner | Full-width 1440px | Above the fold | | Launch-5 | |
| 14 | Product / service visual | 800x600 | Proof section | | Launch-5 | |
| 15 | CTA button set | SVG/PNG | Primary + secondary | | Launch-5 | |

## Organic content
| # | Asset | Dimensions | Channel | Owner | Deadline | Status |
|---|-------|-----------|---------|-------|----------|--------|
| 16 | Teaser post | 1080x1080 | Instagram / Facebook | | Launch-1 | |
| 17 | Teaser story | 1080x1920 | Story | | Launch-1 | |
```

Adjust the number of rows to the real campaign — the table above is a starting frame, not a required count.

## Designer timeline: T-14 to D+1

Paste this timeline at the end of the asset list file so designer and lead track the same milestones.

| Phase | Milestone | Work to complete | Skill | Note |
|-------|-----------|------------------|-------|------|
| Pre-launch | T-14 | Read campaign brief, build this asset list | 41 | Do not start designing before the brief is read |
| Pre-launch | T-13 | Receive approved copy from content | 05 | Copy must be approved before it is set into a layout |
| Pre-launch | T-7 | Concept MVP (30 minutes max), lead approves | 42/45/12 | No production before concept approval |
| Pre-launch | T-5 | Complex assets done: landing page, video, thumbnails | 12/44 | Hard deadline |
| Pre-launch | T-3 | Medium assets done: carousel, full banner set | 42/43 | Hard deadline |
| Pre-launch | T-1 | Fast assets done: statics, stories; final export check, upload | 42/50 | No size left out |
| Launch day | Launch | Standby for urgent assets | 48 | Respond within 2 hours |
| In flight | On request | Quick brief, duplicate the winner, change one element | 48 | Turnaround 2-4 hours |
| Post-campaign | D+1 | Read creative performance report, mark winners and losers in this list | 21 | Winner becomes next cycle's base template |
| Post-campaign | D+2 | Resize winners into missing sizes, archive losers | 50 | Prevents repeating failed creative |
| Post-campaign | D+3 | Update the asset library in shared storage | — | Upload source files and links, not only exports |

## Naming convention and folders

- Asset file name: `[Campaign]_[Channel]_[Size]_[Stage]_[Version]_[Status]`
- Example: `SpringLaunch_Meta_1080x1080_TOFU_v2_APPROVED.png`
- Status tags: `_DRAFT` (in progress) / `_REVIEW` (awaiting feedback) / `_APPROVED` / `_ARCHIVED`
- Shared storage (Drive, Dropbox, SharePoint):

```
/[Brand]/Campaigns/[CampaignName]/Assets/
  Working/    — work in progress
  Final/      — approved files, subfoldered by channel
  Archived/   — losers and retired files
```

- Export formats: JPG for static, PNG for transparency, MP4 for motion, SVG for logo and icon sets.

## Related skills

- `02-campaign-brief-global`: the input — the asset list is derived from the campaign brief.
- `42-image-brief-global`, `43-carousel-brief-global`, `44-video-editor-brief-global`, `45-design-tool-brief-global`: write the detailed brief for each listed asset.
- `12-landing-page-brief-global`: use for the landing page assets in this list.
- `47-design-review-global`: every REVIEW to APPROVED transition goes through review.
- `48-quick-visual-brief-global`: assets that appear while the campaign is running.
- `50-asset-resize-global`: covering every size and repurposing winners after the campaign.

## Quality checklist

- [ ] Every live channel has assets in the list — no channel missed
- [ ] Every funnel stage (TOFU/MOFU/BOFU) has its own creative
- [ ] Every asset has exact dimensions matching the channel spec
- [ ] Every asset has a dated deadline counted back from launch (T-5 / T-3 / T-1)
- [ ] Every asset has an owner and a priority
- [ ] A T-7 concept MVP checkpoint exists before full production
- [ ] Naming convention and folder structure are written into the file
- [ ] The T-14 to D+1 timeline is embedded for tracking
- [ ] Copy that will be set into designs has an approval date before the design deadline
