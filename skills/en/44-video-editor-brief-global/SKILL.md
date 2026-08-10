---
name: 44-video-editor-brief-global
description: "Use when an editor or videographer needs production direction — beat-by-beat storyboard, footage to shoot, b-roll, text overlays, music and pacing, transitions, CTA end frame, and per-channel export specs. This is the EDIT instruction, not the spoken script. Trigger on 'video brief', 'editor brief', 'storyboard', 'brief for the video editor', 'how should this video be cut', 'we have the footage and no direction'. Also use when raw clips exist and nobody knows what the final should look like. Not for — the words said on camera, see `04-script-video-global`; briefing a creator to film their own, see `06-ugc-egc-brief-global`; resizing a finished video, see `50-asset-resize-global`."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "video brief"
  - "editor brief"
  - "storyboard"
  - "brief for the video editor"
  - "shoot brief"
  - "videographer brief"
  - "video ad brief"
  - "how should this video be cut"
output: "File .md — video brief with overview, concept, beat-by-beat storyboard, shooting direction, editing direction, and per-channel deliverables. The shooter knows the setup; the editor knows the cut."
related:
  - product-marketing-context-global
  - 04-script-video-global
  - 06-ugc-egc-brief-global
  - 41-campaign-asset-list-global
  - 42-image-brief-global
  - 46-brand-guideline-global
  - 47-design-review-global
---

# Video Editor Brief (Global)

A good video brief means the shooter knows the setup and the editor knows the cut without a single explanatory call. The first three seconds must work as a standalone clip.

**How this differs from `04-script-video-global`:** the script is the SPOKEN CONTENT (what is said, structured hook-body-CTA). This brief is the PRODUCTION DIRECTION (what to shoot, how to cut, what music, what overlays, how to export). If no script exists, run `04-script-video-global` first, then paste its lines into the "Dialogue / VO" column of the storyboard below.

## Information gathering

Read `.agents/product-marketing-context-global.md`, the script from `04-script-video-global`, and the asset list if available. If information is missing, ask up to 4 questions:

1. **Where does the video run, and how long?** TikTok organic, Reels, Meta ads, YouTube — 15s, 30s, 60s, or 3-5 minutes?
2. **Funnel stage and objective?** TOFU, MOFU, or BOFU — what must this video accomplish?
3. **Who appears, and what is available to shoot?** Founder, staff, real customer, or voiceover only — is there a physical product to film?
4. **Production setup?** In-house or contracted, shoot date, publish date, and who edits?

## Principles

1. **Complete enough that the editor never asks.** Every cutting decision belongs in the brief.
2. **Shoot more takes than you need** — at least three per beat, so the edit can pick the best.
3. **The first three seconds must stand alone.** Clipped out on their own, they should still make sense and still hook.
4. **Always attach a reference video.** Describing a style in words is not enough.
5. **Multiple formats need separate briefs.** Do not run TikTok organic and a Meta ad off one brief.
6. **The CTA lives in the last five seconds** and needs a clear end frame (text plus next step).
7. **Clear the music and the claims.** Use platform commercial-music libraries or licensed tracks, and follow FTC endorsement rules when a creator or customer appears.

## Workflow

### 1. Lock the concept and reference

One-sentence idea (readable in a single pass), tone (serious, playful, urgent, inspiring, educational), and 1-2 reference videos annotated with what to take from each.

### 2. Write the beat-by-beat storyboard

Split the video by timeline: Hook (0-3s) -> Beat 1..N -> CTA (final 5s). Each beat states the shot, the dialogue or VO (from the script), the text overlay, and the transition.

### 3. Write the shooting direction

Lighting, background, camera angle, gear, dos and don'ts — so the shooter sets up correctly the first time.

### 4. Write the editing direction

Music (mood, BPM, source, license), cut style, color grade, subtitle style — so the editor matches pacing and brand.

### 5. Lock deliverables and channel specs

Which files, which dimensions, which deadline — including thumbnail or cover frame.

## Output structure

File name: `video-editor-brief-[name]-[YYYYMMDD].md`

```markdown
# Video Brief — [Project name]

## Video overview
| Item | Detail |
|------|--------|
| Project name | |
| Channel | TikTok / Reels / Meta ads / YouTube |
| Target duration | 15s / 30s / 60s / 3-5 min |
| Funnel stage | TOFU / MOFU / BOFU |
| On camera | |
| Shoot date / publish date | |
| Shooter / editor | |

## Concept
- One-sentence idea: [what this video is about]
- Tone: [Serious / Playful / Urgent / Inspiring / Educational]
- Reference video: [link + what to take from it]

## Storyboard — beat by beat
| Beat | Time | Shot | Dialogue / VO | Text overlay | Transition |
|------|------|------|---------------|--------------|------------|
| Hook | 0-3s | | [from 04-script-video-global] | | |
| Beat 1 | 3-Xs | | | | |
| Beat 2 | | | | | |
| Beat 3 | | | | | |
| CTA | final 5s | [end frame: CTA + logo + contact] | | [CTA text] | |

## Shooting direction
- Lighting: [natural / ring light / studio]
- Background: [color / setting / location]
- Camera angle: [eye level / slightly low / overhead]
- Gear: [phone / camera — vertical or horizontal]
- Do: at least three takes per beat; shoot enough B-roll for the explanatory sections
- Do not: shoot into the light; change setting mid-beat without a reason

## Editing direction
- Music: [mood + BPM + source — confirm the license covers paid ads if this is an ad]
- Cut style: [fast under 2s / slow / mixed by beat]
- Color grade: [bright and airy / warm / per brand]
- Subtitles: [auto plus manual cleanup / manual / none]
- Subtitle font: [heading font] Bold, light fill, contrasting outline — legible on mobile
- Text overlay: [heading font] and brand colors, kept inside the safe zone
- Disclosure: add "#ad" or "Paid partnership" on screen and in caption when a creator or incentivized customer appears

## Deliverables
| File | Spec | Deadline |
|------|------|----------|
| Raw footage | [storage location + format] | |
| Final edit | [dimensions per channel — see spec table] | |
| Thumbnail / cover frame | 1280x720 (YouTube) or a 9:16 vertical frame | |
| Alternate cuts (if needed) | [15s cut from the 60s master, etc.] | |
```

## Channel specs

| Channel | Ratio | Dimensions | Suggested length | Notes |
|---------|-------|------------|------------------|-------|
| TikTok / Reels / Shorts | 9:16 | 1080x1920 | 15-60s | Hook in 0-3s; safe zone 150px top / 300px bottom, plus ~140px right for UI icons |
| Meta Feed | 1:1 or 4:5 | 1080x1080 / 1080x1350 | 15-60s | Most viewers watch muted — subtitles are mandatory |
| Meta ads | 1:1 + 9:16 | export both | 15-30s | CTA lands earlier than in organic |
| YouTube in-stream | 16:9 | 1920x1080 | 3-5 min | Separate 1280x720 thumbnail |
| YouTube Shorts | 9:16 | 1080x1920 | under 60s | Same safe zones as Reels |
| LinkedIn | 1:1 or 16:9 | 1080x1080 / 1920x1080 | 30-90s | Muted autoplay — burn in captions |

Export MP4 (H.264). Name files with the convention: `[Campaign]_[Channel]_[Size]_[Stage]_[Version]_[Status].mp4`.

## Position in the campaign timeline

Per the designer timeline in `41-campaign-asset-list-global`, video and thumbnails are complex assets — deadline Launch - 5 days. Concept and storyboard are approved at the T-7 checkpoint, before the shoot.

## Related skills

- `04-script-video-global`: write the spoken lines first; this brief covers production (run it first if no script exists).
- `06-ugc-egc-brief-global`: creator and customer-generated video uses its own brief; this skill covers brand-produced video.
- `41-campaign-asset-list-global`: where the video sits in the asset list and its deadline.
- `42-image-brief-global`: brief the static thumbnail that ships with the video.
- `46-brand-guideline-global`: subtitle font, overlay colors, and end-frame logo rules.
- `47-design-review-global`: review the cut before publishing (hook, pacing, CTA, channel spec).

## Quality checklist

- [ ] Script or dialogue exists (from skill 04) before the storyboard is written
- [ ] Storyboard covers every beat: hook 0-3s, body, CTA in the final 5s
- [ ] The first three seconds work as a standalone clip
- [ ] Every beat has a shot, dialogue, text overlay, and transition
- [ ] Shooting direction covers lighting, background, angle, gear, and take count
- [ ] Editing direction covers music, cut style, color grade, and subtitle style
- [ ] Subtitles and overlays use brand fonts and colors, inside the safe zone
- [ ] End frame carries the CTA, logo, and next step
- [ ] Deliverables list files, specs, and deadlines per channel
- [ ] A reference video is attached with notes on what to take from it
- [ ] Music license and disclosure requirements are confirmed
