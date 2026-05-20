# Fallback Prompt Format (Tier Free)

Output prompt formatted cho **5 platforms** khi không có API key. User copy-paste vào tool free mỗi platform → gen image bằng quota free của họ. Skill này KHÔNG call API — chỉ output file `.md` paste-ready.

Trigger: Step 5 detect `TIER=free` (không có `$OPENAI_API_KEY`, không có `$OD_BIN`).

## Output file template

Skill output `docs/design/<slug>-prompt.md` với:
- Frontmatter (metadata) — xem `SKILL.md` frontmatter schema
- 5 sections, mỗi section 1 platform với instruction + paste-ready text block

Body file tiếng Việt phổ thông để user đọc. Prompt content tiếng Anh (model trên các platform handle English tốt hơn).

---

## 1. ChatGPT Plus / DALL-E 3 (web UI)

**Khi dùng**: User có ChatGPT Plus subscription (DALL-E 3 unlimited theo subscription). Best cho descriptive English natural language.

**Format**: Natural language paragraph format. DALL-E 3 best với câu mô tả đầy đủ, không cần keyword stuff.

```
<assembled prompt từ skill compose>. Avoid: <negatives list>.
Style: <style anchor 2-3 từ>.
Palette: <hex codes or mood description>.
```

**Instruction cho user**:
1. Mở chat.openai.com
2. Paste prompt vào chat box
3. Gõ "create this image" hoặc kèm prompt luôn — DALL-E 3 auto-trigger
4. Nếu output chưa đúng vibe — refine bằng follow-up message ("make it warmer", "more minimalist")

---

## 2. MidJourney v6 (Discord)

**Khi dùng**: User có MidJourney subscription (paid). Best cho cinematic / illustrative / branding visual.

**Format**: MJ slash command với parameters cuối.

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

MJ dùng `--no` flag separate keyword bằng dấu phẩy hoặc space:

```
--no text, warped letters, extra fingers, logo, watermark, stock photo
```

### Style flags

- `--style raw` cho photographic realism (giảm "MJ aesthetic" default)
- `--stylize 250` (default) hoặc `--stylize 750` cho artistic boost (illustrative)
- `--v 6` (v6 default ổn nhất 2026; v7 nếu user có access)

**Instruction cho user**:
1. Join Discord MJ server (đã subscribe)
2. Vào kênh `#newbies-*` hoặc DM bot
3. Paste full `/imagine ...` command
4. Đợi 30-60s, MJ gen 4 variants
5. Pick U1-U4 để upscale, hoặc V1-V4 để variation

---

## 3. Leonardo.ai

**Khi dùng**: User có Leonardo account (free tier 150 tokens/day, paid unlimited). Best cho game art / vector / specific style preset.

**Format**: Dashboard form-based, không command line.

```
Prompt:         <concise prompt 1 line, max 80 từ>
Negative:       <negatives 1 line>
Style preset:   <Cinematic / 3D Animation / Anime / Photography / Illustration>
Model:          SDXL hoặc Phoenix (Leonardo's proprietary)
Aspect:         <1:1 / 16:9 / 9:16 / custom>
Guidance:       7 (default) hoặc 9 cho bám prompt sát hơn
Tokens:         standard 10 tokens / Alchemy mode 20 tokens
```

### Model selection

- **SDXL**: open-source Stable Diffusion XL, fast, photorealistic OK
- **Phoenix**: Leonardo proprietary, best quality nhưng tốn tokens hơn
- **Flux Dev/Pro**: nếu user có access, best 2026

**Instruction cho user**:
1. Vào leonardo.ai/dashboard
2. Click "Image Generation"
3. Paste prompt + negative + chọn style preset + model
4. Click Generate (4 images mặc định)
5. Download PNG / SVG (nếu vector style)

---

## 4. Google Gemini / Imagen 3

**Khi dùng**: User có Gemini Advanced (paid) hoặc Gemini free trial. Best cho photorealistic + accurate text rendering (Imagen 3 mạnh text hơn DALL-E 3).

**Format**: Natural language tương tự DALL-E 3.

```
<prompt paragraph descriptive, full sentences, no slash commands>.
Style: <2-3 từ>.
Palette: <hex codes or mood>.
Avoid: <negatives>.
```

**Instruction cho user**:
1. Mở gemini.google.com
2. Paste prompt vào chat
3. Gõ "generate this image" hoặc Gemini auto-detect image intent
4. Imagen 3 gen 1-4 images depending on tier
5. Click download trên image

**Note**: Imagen 3 mạnh rendering text trong image (so với DALL-E 3 / MJ thường méo) — nếu user cần short text in-image (headline 1 line), Imagen 3 là lựa chọn tốt nhất trong 5 platforms.

---

## 5. Bing Image Creator / DALL-E 3 free

**Khi dùng**: User không có subscription nào. Bing Image Creator dùng DALL-E 3 free (15 fast generations/day, sau đó slow).

**Format**: Simplified single-line, max 480 chars (Bing limit).

```
<short prompt 1-2 sentences, brand keyword + style + palette + minimal negatives>
```

### Compress strategy

Bing limit 480 chars → cắt ngắn prompt:
- Subject + 1 composition cue + 1 style anchor + palette hex
- Bỏ negatives chi tiết, chỉ giữ 2-3 quan trọng nhất
- Bỏ adjectives lặp

Vd full prompt 800 chars → compress xuống ~400 chars cho Bing.

**Instruction cho user**:
1. Vào bing.com/create (cần Microsoft account)
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

<1-2 paragraph context — brand, mode, mục tiêu visual>

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

## Recommended platform cho mode này

<1 line gợi ý platform tốt nhất cho mode đang gen — vd "Mode business-logo → MidJourney v6 (cinematic branding mạnh nhất), backup DALL-E 3">
```

## Section anti-patterns

- Skip platform-specific format — mỗi platform có syntax riêng (MJ dùng slash command + flags, DALL-E dùng paragraph, Leonardo dùng form fields)
- Output cùng 1 prompt cho all 5 platforms — không optimize, mất công user adapt
- Quên include negatives — output low quality, có artifact text méo/extra fingers
- Output prompt quá generic (vd "logo cafe đẹp") — không brand context, không style direction
- Compress Bing prompt mà bỏ palette hex — output rời rạc với brand
- MJ command thiếu `--ar` flag — default 1:1 không match format yêu cầu
- Leonardo skip Model selection — user không biết chọn SDXL vs Phoenix
- Quên print "Recommended platform" — user phải tự đoán platform nào tốt cho mode

## Recommended platform per mode (cheat sheet)

| Mode | Best platform | Lý do |
|------|---------------|-------|
| personal-brand | DALL-E 3 / Imagen 3 | Photorealistic portrait + face accuracy |
| business-logo | MidJourney v6 | Cinematic branding + scalable mark |
| business-campaign | MidJourney v6 | Cinematic key visual mạnh nhất |
| marketing-day-to-day | DALL-E 3 / Bing free | Fast iteration cho daily ops |
| editorial | DALL-E 3 / MJ v6 | Magazine-quality editorial photography |
| infographic | Imagen 3 / DALL-E 3 | Text rendering tốt hơn cho 2-3 numbers |
| web-mockup hero | MJ v6 / Leonardo Phoenix | Cinematic 16:9 hero visual |
| quote-graphic background | DALL-E 3 / Leonardo | Abstract texture không cần text |
