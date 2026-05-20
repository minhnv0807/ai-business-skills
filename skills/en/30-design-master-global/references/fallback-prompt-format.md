# Fallback Prompt Format (Tier Free)

Output prompts formatted for **5 platforms** when no API key is available. The user copy-pastes into each platform's free tool → generates images on that platform's free quota. This skill does NOT call any API — it only outputs a paste-ready `.md` file.

Trigger: Step 5 detects `TIER=free` (no `$OPENAI_API_KEY`, no `$OD_BIN`).

## Output file template

The skill writes `docs/design/<slug>-prompt.md` containing:
- Frontmatter (metadata) — see the `SKILL.md` frontmatter schema
- 5 sections, one per platform, each with instructions + a paste-ready text block

Body copy in plain English so the user can read along. The prompt content itself is in English (the models on these platforms handle English best).

---

## 1. ChatGPT Plus / DALL-E 3 (web UI)

**When to use**: User has a ChatGPT Plus subscription (unlimited DALL-E 3 via subscription). Best for descriptive English natural language.

**Format**: Natural-language paragraph. DALL-E 3 performs best with full descriptive sentences — no keyword stuffing.

```
<assembled prompt from the skill compose step>. Avoid: <negatives list>.
Style: <style anchor, 2-3 words>.
Palette: <hex codes or mood description>.
```

**User instructions**:
1. Open chat.openai.com
2. Paste the prompt into the chat box
3. Type "create this image" or include the prompt directly — DALL-E 3 auto-triggers
4. If the output isn't quite right — refine with a follow-up message ("make it warmer", "more minimalist")

---

## 2. MidJourney v6 (Discord)

**When to use**: User has a MidJourney subscription (paid). Best for cinematic / illustrative / branding visuals.

**Format**: MJ slash command with parameters at the end.

```
/imagine prompt: <subject>, <composition>, <style>, <palette> --ar <aspect> --v 6 --style raw --no <negatives>
```

### Aspect mapping

| Skill aspect | MJ flag |
|--------------|---------|
| 1:1 | `--ar 1:1` |
| 4:5 IG portrait | `--ar 4:5` |
| 9:16 story | `--ar 9:16` |
| 16:9 hero | `--ar 16:9` |
| 8.5:11 magazine | `--ar 17:22` |

### Negatives format

MJ uses the `--no` flag with keywords separated by commas or spaces:

```
--no text, warped letters, extra fingers, logo, watermark, stock photo
```

### Style flags

- `--style raw` for photographic realism (reduces the default "MJ aesthetic")
- `--stylize 250` (default) or `--stylize 750` for an artistic boost (illustrative)
- `--v 6` (v6 is the most stable default in 2026; v7 if the user has access)

**User instructions**:
1. Join the MidJourney Discord server (subscription required)
2. Go to a `#newbies-*` channel or DM the bot
3. Paste the full `/imagine ...` command
4. Wait 30-60s; MJ generates 4 variants
5. Pick U1-U4 to upscale, or V1-V4 for variations

---

## 3. Leonardo.ai

**When to use**: User has a Leonardo account (free tier 150 tokens/day, paid unlimited). Best for game art / vector / specific style presets.

**Format**: Form-based dashboard, no command line.

```
Prompt:         <concise prompt, one line, max 80 words>
Negative:       <negatives, one line>
Style preset:   <Cinematic / 3D Animation / Anime / Photography / Illustration>
Model:          SDXL or Phoenix (Leonardo's proprietary)
Aspect:         <1:1 / 16:9 / 9:16 / custom>
Guidance:       7 (default) or 9 for tighter prompt adherence
Tokens:         standard 10 tokens / Alchemy mode 20 tokens
```

### Model selection

- **SDXL**: open-source Stable Diffusion XL, fast, decent photorealism
- **Phoenix**: Leonardo's proprietary model, best quality but burns more tokens
- **Flux Dev/Pro**: if the user has access, the best 2026 option

**User instructions**:
1. Go to leonardo.ai/dashboard
2. Click "Image Generation"
3. Paste prompt + negative + pick style preset + model
4. Click Generate (4 images by default)
5. Download PNG / SVG (if a vector style)

---

## 4. Google Gemini / Imagen 3

**When to use**: User has Gemini Advanced (paid) or a Gemini free trial. Best for photorealism + accurate text rendering (Imagen 3 is stronger at text than DALL-E 3).

**Format**: Natural language, similar to DALL-E 3.

```
<descriptive prompt paragraph, full sentences, no slash commands>.
Style: <2-3 words>.
Palette: <hex codes or mood>.
Avoid: <negatives>.
```

**User instructions**:
1. Open gemini.google.com
2. Paste the prompt into chat
3. Type "generate this image" or let Gemini auto-detect image intent
4. Imagen 3 generates 1-4 images depending on tier
5. Click download on the image you want

**Note**: Imagen 3 is strongest at rendering text inside an image (vs DALL-E 3 / MJ, which usually warp it) — if the user genuinely needs short in-image text (a one-line headline), Imagen 3 is the best choice among the 5 platforms.

---

## 5. Bing Image Creator / DALL-E 3 free

**When to use**: User has no subscription. Bing Image Creator uses DALL-E 3 free (15 fast generations/day, then slow).

**Format**: Simplified single line, max 480 chars (Bing limit).

```
<short 1-2 sentence prompt, brand keyword + style + palette + minimal negatives>
```

### Compression strategy

Bing's 480-char ceiling forces a shorter prompt:
- Subject + one composition cue + one style anchor + palette hex
- Drop detailed negatives, keep the 2-3 most important
- Cut repeated adjectives

E.g. an 800-char full prompt → compress to ~400 chars for Bing.

**User instructions**:
1. Go to bing.com/create (Microsoft account required)
2. Paste the prompt
3. Click "Create" — 4 variants generated
4. Click an image to enlarge, save / share

---

## Output file structure

`docs/design/<slug>-prompt.md` template:

```markdown
---
title: <Image asset name>
type_artifact: image-prompt-fallback
mode: <mode>
subject: <one-line>
gen_mode: fallback-prompt
model: manual
output_files:
  - docs/design/<slug>-prompt.md
created: <date>
last_updated: <date>
---

# <Title>

<1-2 paragraph context — brand, mode, visual goal>

## 1. ChatGPT Plus / DALL-E 3

[paste-ready prompt block 1]

**Instruction**: ...

## 2. MidJourney v6

[paste-ready prompt block 2]

**Instruction**: ...

## 3. Leonardo.ai

[paste-ready prompt block 3]

**Instruction**: ...

## 4. Google Gemini / Imagen 3

[paste-ready prompt block 4]

**Instruction**: ...

## 5. Bing Image Creator

[paste-ready prompt block 5]

**Instruction**: ...

## Recommended platform for this mode

<one-line recommendation — e.g. "Mode business-logo → MidJourney v6 (strongest cinematic branding), backup DALL-E 3">
```

## Section anti-patterns

- Skipping the platform-specific format — each platform has its own syntax (MJ uses slash command + flags, DALL-E uses paragraphs, Leonardo uses form fields)
- Outputting the same prompt for all 5 platforms — no optimization, user has to re-adapt
- Forgetting negatives — output quality crashes, you get warped-text and extra-finger artifacts
- Prompt too generic (e.g. "nice café logo") — no brand context, no style direction
- Compressing the Bing prompt but dropping the palette hex — output drifts from the brand
- MJ command missing the `--ar` flag — defaults to 1:1, doesn't match the requested format
- Leonardo skipping model selection — user has no idea whether to pick SDXL or Phoenix
- Forgetting to print "Recommended platform" — user has to guess which platform is best for the mode

## Recommended platform per mode (cheat sheet)

| Mode | Best platform | Reason |
|------|---------------|--------|
| personal-brand | DALL-E 3 | Best portrait + face accuracy |
| business-logo | MidJourney v6 | Best text rendering for logo brainstorm + cinematic branding mark |
| business-campaign | MidJourney v6 | Strongest cinematic key visual |
| marketing-day-to-day | DALL-E 3 | Fastest, batch-friendly for daily ops |
| editorial | MidJourney v6 | Best cinematic, magazine-quality editorial photography |
| infographic | Imagen 3 | Best text rendering, supports more text in image |
| web-mockup hero | MJ v6 / Leonardo Phoenix | Cinematic 16:9 hero visual |
| quote-graphic background | DALL-E 3 / Leonardo | Abstract texture, no text needed |
