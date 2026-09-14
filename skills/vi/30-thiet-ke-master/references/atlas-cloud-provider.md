# Atlas Cloud image provider

Atlas Cloud la provider tuy chon. Chi dung khi user chon ro `IMAGE_PROVIDER=atlas-cloud`; khong thay doi thu tu mac dinh OpenAI, Open Design, va prompt-only.

## Truoc khi submit

1. Xac nhan `ATLASCLOUD_API_KEY` da co trong environment. Khong in key ra output.
2. Doc model catalog va schema hien tai truoc moi lan tich hop vi model, input, va pricing co the thay doi.
3. Bao user day la paid generation va xin confirm truoc khi goi POST.
4. Compose mot prompt hoan chinh va chon aspect ratio hop le.

Helper dung `ATLASCLOUD_MEDIA_API_BASE`, mac dinh la `https://api.atlascloud.ai/api/v1/model`.

## Model mapping

| Request | Model | Input required |
|---------|-------|----------------|
| Text-to-image | `google/nano-banana-2-lite/text-to-image` | `prompt` |
| Image editing | `google/nano-banana-2-lite/edit` | `prompt` + 1-14 public `images` URLs |

Ca hai route dung `resolution=1k`. `aspect_ratio` ho tro `auto`, `1:1`, `3:2`, `2:3`, `3:4`, `4:3`, `4:5`, `5:4`, `9:16`, `16:9`, `21:9`, `4:1`, `1:4`, `8:1`, `1:8`. `thinking_level` la `default`, `high`, hoac `minimal`.

## Submit dung mot lan

Resolve `<skill-dir>` thanh folder cua skill nay, sau do chay:

```bash
python3 <skill-dir>/scripts/atlas_image.py submit \
  --prompt "<structured prompt>" \
  --aspect-ratio "16:9" \
  --thinking-level default
```

Neu edit anh, them `--image-url "https://..."` cho tung input. Lenh `submit` gui dung mot `POST /generateImage`; helper khong retry POST.

Luu ngay `data.id` tu response. Neu response bi timeout, connection reset, hoac HTTP 5xx khong ro ket qua, **khong chay lai submit**. Kiem tra task history truoc de tranh duplicate paid generation.

## Poll bang GET

Chi poll prediction ID da luu:

```bash
python3 <skill-dir>/scripts/atlas_image.py wait --id "<prediction-id>"
```

`wait` chi goi `GET /prediction/{request_id}` voi retry/backoff co gioi han. Neu het thoi gian ma task van pending, chay lai `wait` hoac `status` voi cung ID; tuyet doi khong submit lai.

Khi status la `completed`, download URL trong `data.outputs` vao `docs/design/<slug>.png`, sau do tao metadata sidecar. Khi `failed` hoac `timeout`, bao nguyen error va prediction ID.
