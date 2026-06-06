# Prompt Director Reference

Dung file nay khi user dua anh reference, xin master prompt, can doi mat/mau/logo, dua nhieu anh, hoac feedback rang ket qua gen chua dung.

## Intent priority

Chon intent theo thu tu uu tien:

1. **prompt-diagnosis** — user noi output sai, nhin AI, sai mau, sai goc, font kho doc, khong giong anh mau.
2. **reference-to-master-prompt** — user dua anh va muon prompt theo style/composition/aesthetic do.
3. **realistic-human** — co mat nguoi, avatar, UGC creator, selfie, portrait, can nhin that.
4. **brand-adaptation** — doi mau theo brand, them logo, match brand guideline.
5. **video/storyboard** — can motion, camera movement, shot list.
6. **product/design-standard** — product shot, poster, social post, logo, infographic.

Neu co nhieu intent, giu intent uu tien cao lam chinh va kich hoat intent con lai nhu submodule.

## Prompt layers

Moi prompt nen du cac layer sau, nhung chi hoi them layer nao dang thieu:

- **subject:** ai/cai gi la trung tam.
- **identity_preservation:** mat, toc, da, dang nguoi, outfit, silhouette, phu kien can giu.
- **environment:** boi canh, dia diem, background.
- **composition:** crop, goc may, bo cuc, vi tri subject, aspect ratio.
- **camera_lens:** smartphone, 35mm, 85mm, macro, wide, fisheye.
- **lighting:** window light, flash, studio, neon, cinematic, flat office.
- **color_palette:** mau chinh, mau brand, mau can thay.
- **style_mood:** realistic, UGC, editorial, premium, playful, futuristic.
- **typography_graphics:** headline, badge, logo, label, UI element; tranh text dai trong AI image.
- **output_use:** Facebook post, Reels/TikTok, LinkedIn avatar, deck cover, landing hero.

## Reference image workflow

Khi user upload 1 anh:

1. Xac dinh vai tro anh: **style/composition reference**, **face reference**, **logo/brand asset**, **product reference**, hay **background/location reference**.
2. Neu user khong noi ro, mac dinh anh la style/composition reference.
3. Tao master prompt dung cum "the referenced subject" hoac "the provided face reference"; khong gan ten rieng neu user chua cho.
4. Neu can thay mat/mau/logo, viet ro "use the uploaded face/logo/brand palette" thay vi tu che.
5. Ket thuc bang danh sach asset can upload tiep.

Khi user upload nhieu anh:

```markdown
## Luong anh

| Flow | Anh | Vai tro | Viec can lam |
|------|-----|---------|--------------|
| A | ref-01 | style/composition | tao master prompt |
| B | face-01 | face identity | dung de preserve identity |
| C | logo-01 | brand asset | dat logo theo brand placement |
```

- Neu moi anh la 1 style khac nhau, tao prompt rieng cho tung Flow A/B/C.
- Neu anh duoc dung chung cho 1 output, gop theo vai tro: style ref + face ref + logo + product.
- Neu anh trung vai tro, chon anh chat luong cao nhat lam primary va ghi anh con lai la secondary cue.

## Asset request taxonomy

Hoi dung loai asset, khong hoi chung chung "gui them anh":

| Can ca nhan hoa | Yeu cau ro rang |
|-----------------|-----------------|
| Doi mat/avatar | "Upload 1-3 anh mat ro, anh sang tot, khong filter, uu tien front/3-4 angle." |
| Dung mau brand | "Gui 2-4 ma hex hoac brand guideline; neu chua co, noi 3 mau uu tien." |
| Them logo | "Upload logo PNG nen trong hoac SVG; neu chua co, dung text placeholder tam." |
| Dung san pham | "Upload anh san pham chinh dien + nghieng 45 do, nhan/bao bi ro." |
| Dung boi canh | "Upload anh dia diem/background hoac mo ta noi can dat subject." |
| Dung chu tren thiet ke | "Gui headline/subheadline/CTA exact; voi text dai, khuyen nghi tao background roi overlay bang Canva/HTML." |

## Output template

```markdown
## Da xac dinh

- Intent:
- Reference role:
- Output use:
- Style/composition:
- Brand/personalization:

## Copy-paste prompt

[English prompt]

## Negative prompt / Avoid

[English avoid list]

## Can upload them de thay dung

- Face reference:
- Brand colors:
- Logo:
- Product/background:
- Exact text:
```

## Realistic human rules

Bat khi user muon nguoi that, UGC, selfie, portrait, avatar ca nhan:

- Dung ngon ngu smartphone/photo realism neu can that tu nhien.
- Giu texture da, asymmetry nhe, crop khong qua hoan hao, background doi thuong.
- Neu co face reference, yeu cau preserve facial structure, hairstyle, skin tone, body proportion, outfit cues.
- Negative bat buoc: plastic skin, glossy AI look, fake bokeh, over-retouched face, warped anatomy, extra fingers, over-sharpened eyes.

## Brand adaptation rules

- Khong tu tao logo ngau nhien. Neu chua co logo, dung text placeholder theo brand name.
- Doi mau theo hex user cho; neu user noi OPA va khong dua mau, dung `#155EEF`.
- Neu co nhieu brand asset, uu tien: official guideline > logo file > palette hex user noi > color inferred from reference.
- Luon noi ro vi tri logo: top-left badge, bottom-right watermark nhe, packaging label, hoac hero lockup.

## Diagnosis mapping

| Feedback | Layer can sua |
|----------|---------------|
| Nhin AI qua | realism, skin texture, camera/lens, lighting, background |
| Khong giong anh mau | identity preservation, reference adherence, composition |
| Mau sai brand | color_palette, brand adaptation |
| Font/chu loi | typography, layout, contrast; recommend overlay tool |
| Bo cuc roi | composition, graphic_elements, hierarchy |
| Toi qua/chua sang | lighting, exposure, contrast, material finish |

Khi diagnosis, chi sua layer bi loi truoc; khong viet lai toan bo neu concept chua doi.

## Guardrails

- Khong noi da tao/render anh neu chi dang viet prompt.
- Khong hua copy chinh xac style co ban quyen hoac danh tinh nguoi that; dung "inspired by composition/aesthetic" va yeu cau consent voi face/voice cua nguoi that.
- Khong hoi qua 4 cau truoc khi dua gia tri; voi input du, tao prompt truoc.
- Prompt cho image/video model mac dinh tieng Anh; text can hien trong anh giu dung ngon ngu user dua.
