# Fallback Prompt Format (Tier Free)

Output prompt formatted cho **5 platforms** khi khong co API key. User copy-paste vao tool free moi platform → gen image bang quota free cua ho. Skill nay KHONG call API — chi output file `.md` paste-ready.

Trigger: Step 5 detect `TIER=free` (khong co `$OPENAI_API_KEY`, khong co `$OD_BIN`).

## Output file template

Skill output `docs/design/<slug>-prompt.md` voi:
- Frontmatter (metadata) — xem `SKILL.md` frontmatter schema
- 5 sections, moi section 1 platform voi instruction + paste-ready text block

Body file tieng Viet pho thong de user doc. Prompt content tieng Anh (model tren cac platform handle English tot hon).

---

## 1. ChatGPT Plus / DALL-E 3 (web UI)

**Khi dung**: User co ChatGPT Plus subscription (DALL-E 3 unlimited theo subscription). Best cho descriptive English natural language.

**Format**: Natural language paragraph format. DALL-E 3 best voi cau mo ta day du, khong can keyword stuff.

```
<assembled prompt tu skill compose>. Avoid: <negatives list>.
Style: <style anchor 2-3 tu>.
Palette: <hex codes or mood description>.
```

**Instruction cho user**:
1. Mo chat.openai.com
2. Paste prompt vao chat box
3. Go "create this image" hoac kem prompt luon — DALL-E 3 auto-trigger
4. Neu output chua dung vibe — refine bang follow-up message ("make it warmer", "more minimalist")

---

## 2. MidJourney v6 (Discord)

**Khi dung**: User co MidJourney subscription (paid). Best cho cinematic / illustrative / branding visual.

**Format**: MJ slash command voi parameters cuoi.

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

MJ dung `--no` flag separate keyword bang dau phay hoac space:

```
--no text, warped letters, extra fingers, logo, watermark, stock photo
```

### Style flags

- `--style raw` cho photographic realism (giam "MJ aesthetic" default)
- `--stylize 250` (default) hoac `--stylize 750` cho artistic boost (illustrative)
- `--v 6` (v6 default on nhat 2026; v7 neu user co access)

**Instruction cho user**:
1. Join Discord MJ server (da subscribe)
2. Vao kenh `#newbies-*` hoac DM bot
3. Paste full `/imagine ...` command
4. Doi 30-60s, MJ gen 4 variants
5. Pick U1-U4 de upscale, hoac V1-V4 de variation

---

## 3. Leonardo.ai

**Khi dung**: User co Leonardo account (free tier 150 tokens/day, paid unlimited). Best cho game art / vector / specific style preset.

**Format**: Dashboard form-based, khong command line.

```
Prompt:         <concise prompt 1 line, max 80 tu>
Negative:       <negatives 1 line>
Style preset:   <Cinematic / 3D Animation / Anime / Photography / Illustration>
Model:          SDXL hoac Phoenix (Leonardo's proprietary)
Aspect:         <1:1 / 16:9 / 9:16 / custom>
Guidance:       7 (default) hoac 9 cho bam prompt sat hon
Tokens:         standard 10 tokens / Alchemy mode 20 tokens
```

### Model selection

- **SDXL**: open-source Stable Diffusion XL, fast, photorealistic OK
- **Phoenix**: Leonardo proprietary, best quality nhung ton tokens hon
- **Flux Dev/Pro**: neu user co access, best 2026

**Instruction cho user**:
1. Vao leonardo.ai/dashboard
2. Click "Image Generation"
3. Paste prompt + negative + chon style preset + model
4. Click Generate (4 images mac dinh)
5. Download PNG / SVG (neu vector style)

---

## 4. Google Gemini / Imagen 3

**Khi dung**: User co Gemini Advanced (paid) hoac Gemini free trial. Best cho photorealistic + accurate text rendering (Imagen 3 manh text hon DALL-E 3).

**Format**: Natural language tuong tu DALL-E 3.

```
<prompt paragraph descriptive, full sentences, no slash commands>.
Style: <2-3 tu>.
Palette: <hex codes or mood>.
Avoid: <negatives>.
```

**Instruction cho user**:
1. Mo gemini.google.com
2. Paste prompt vao chat
3. Go "generate this image" hoac Gemini auto-detect image intent
4. Imagen 3 gen 1-4 images depending on tier
5. Click download tren image

**Note**: Imagen 3 manh rendering text trong image (so voi DALL-E 3 / MJ thuong meo) — neu user can short text in-image (headline 1 line), Imagen 3 la lua chon tot nhat trong 5 platforms.

---

## 5. Bing Image Creator / DALL-E 3 free

**Khi dung**: User khong co subscription nao. Bing Image Creator dung DALL-E 3 free (15 fast generations/day, sau do slow).

**Format**: Simplified single-line, max 480 chars (Bing limit).

```
<short prompt 1-2 sentences, brand keyword + style + palette + minimal negatives>
```

### Compress strategy

Bing limit 480 chars → cat ngan prompt:
- Subject + 1 composition cue + 1 style anchor + palette hex
- Bo negatives chi tiet, chi giu 2-3 quan trong nhat
- Bo adjectives lap

Vd full prompt 800 chars → compress xuong ~400 chars cho Bing.

**Instruction cho user**:
1. Vao bing.com/create (can Microsoft account)
2. Paste prompt
3. Click "Create" — gen 4 variants
4. Click image to enlarge, save / share

---

## Output file structure

File `docs/design/<slug>-prompt.md` template:

```markdown
---
title: <Image asset name>
type_artifact: image-prompt-fallback
mode: <mode>
subject: <1-line>
gen_mode: fallback-prompt
model: manual
output_files:
  - docs/design/<slug>-prompt.md
created: <date>
last_updated: <date>
---

# <Title>

<1-2 paragraph context — brand, mode, muc tieu visual>

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

## Recommended platform cho mode nay

<1 line goi y platform tot nhat cho mode dang gen — vd "Mode business-logo → MidJourney v6 (cinematic branding manh nhat), backup DALL-E 3">
```

## Section anti-patterns

- Skip platform-specific format — moi platform co syntax rieng (MJ dung slash command + flags, DALL-E dung paragraph, Leonardo dung form fields)
- Output cung 1 prompt cho all 5 platforms — khong optimize, mat cong user adapt
- Quen include negatives — output low quality, co artifact text meo/extra fingers
- Output prompt qua generic (vd "logo cafe dep") — khong brand context, khong style direction
- Compress Bing prompt ma bo palette hex — output roi rac voi brand
- MJ command thieu `--ar` flag — default 1:1 khong match format yeu cau
- Leonardo skip Model selection — user khong biet chon SDXL vs Phoenix
- Quen print "Recommended platform" — user phai tu doan platform nao tot cho mode

## Recommended platform per mode (cheat sheet)

| Mode | Best platform | Ly do |
|------|---------------|-------|
| personal-brand | DALL-E 3 / Imagen 3 | Photorealistic portrait + face accuracy |
| business-logo | MidJourney v6 | Cinematic branding + scalable mark |
| business-campaign | MidJourney v6 | Cinematic key visual manh nhat |
| marketing-day-to-day | DALL-E 3 / Bing free | Fast iteration cho daily ops |
| editorial | DALL-E 3 / MJ v6 | Magazine-quality editorial photography |
| infographic | Imagen 3 / DALL-E 3 | Text rendering tot hon cho 2-3 numbers |
| web-mockup hero | MJ v6 / Leonardo Phoenix | Cinematic 16:9 hero visual |
| quote-graphic background | DALL-E 3 / Leonardo | Abstract texture khong can text |
