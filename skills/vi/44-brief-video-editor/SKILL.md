---
name: 44-brief-video-editor
description: "Dung khi da co y tuong va can huong dan NGUOI QUAY hoac NGUOI DUNG PHIM — storyboard tung beat, footage phai quay, chu chay tren man hinh, nhac, nhip cat, end-frame CTA va spec xuat theo kenh. Khac script video: script la loi thoai, day la huong dan dung. Kich hoat khi user nhac 'brief video', 'brief editor', 'storyboard', 'brief dung phim', 'huong dan cat video', 'brief videographer', 'editor cat khong dung y', 'video dai qua can cat lai'. Khong dung cho — viet loi thoai va hook noi truoc camera thi dung skill 04-script-video; nho khach hoac nhan vien tu quay thi dung skill 06-brief-ugc-egc; thue production house tron goi thi dung skill 67-agency-vendor-brief."
metadata:
  version: 1.0.1
  category: content
license: MIT
triggers:
  - "brief video"
  - "brief editor"
  - "storyboard"
  - "brief dung video"
  - "brief quay video"
  - "huong dan edit video"
  - "brief videographer"
  - "brief video ads"
output: "File .md — brief video gom thong tin chung, concept, storyboard tung beat, huong dan quay, huong dan edit, deliverables theo kenh. Nguoi quay biet setup, editor biet cat, khong can goi hoi."
related:
  - 04-script-video
  - 06-brief-ugc-egc
  - 41-campaign-asset-list
  - 42-brief-hinh-anh
  - 46-brand-guideline
  - 47-design-review
---

# Brief Video Cho Editor

> Brief video tot = nguoi quay biet setup, editor biet cat, khong can mot cuoc goi giai thich nao. Hook 3 giay dau phai dung doc lap — cat ra van hap dan.

**Phan biet voi `04-script-video`:** script la LOI THOAI (noi gi, theo cau truc hook-body-CTA); brief editor la HUONG DAN DUNG (quay canh gi, cat the nao, nhac gi, overlay gi, xuat file the nao). Neu chua co script → goi `04-script-video` truoc, roi dan loi thoai vao cot "Loi thoai / VO" cua storyboard trong brief nay.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, script tu `04-script-video` va asset list neu co. Neu thieu, hoi toi da 4 cau:

1. **Video dung cho dau + thoi luong?** TikTok organic / Reels / Facebook ads / YouTube — 15s / 30s / 60s / 3-5 phut?
2. **Tang pheu + muc tieu?** TOFU / MOFU / BOFU — video nay can lam duoc gi?
3. **Ai xuat hien + co gi de quay?** Founder / staff / khach hang that / voiceover-only — co san pham that de quay khong?
4. **Production the nao?** Tu quay hay thue, ngay quay, ngay dang, ai edit?

## Nguyen tac

1. **Brief du de editor khong hoi lai bat ky dieu gi.** Moi quyet dinh dung phim phai co trong brief.
2. **Quay nhieu takes hon can** — toi thieu 3 takes moi beat, edit chon canh tot nhat.
3. **Hook 3 giay dau dung doc lap** — cat rieng ra van hieu va van hap dan.
4. **Luon gui reference video kem brief** — mo ta style bang loi khong du.
5. **Nhieu format (TikTok + ads) → brief rieng tung format,** khong dung 1 brief cho tat ca.
6. **CTA nam trong 5 giay cuoi** va co end-frame ro rang (text + huong dan hanh dong).

## Quy trinh

### Buoc 1 — Chot concept va reference

Idea mot cau (doc xong la hinh dung duoc video), tone (serious / playful / urgent / inspiring / educational), 1-2 reference video kem ghi chu hoc gi.

### Buoc 2 — Viet storyboard tung beat

Chia video thanh beat theo timeline: Hook (0-3s) → Beat 1..N → CTA (5 giay cuoi). Moi beat ghi ro: canh quay, loi thoai/VO (lay tu script), text overlay, transition.

### Buoc 3 — Huong dan quay

Anh sang, background, goc may, thiet bi, do's va don'ts — de nguoi quay setup dung ngay tu dau.

### Buoc 4 — Huong dan edit

Nhac nen (mood + BPM + nguon), cut style, color grade, subtitle style — de editor cat dung pacing va dung brand.

### Buoc 5 — Chot deliverables va spec theo kenh

File nao, kich thuoc nao, deadline nao — kem thumbnail/cover frame.

## Cau truc ket qua

Ten file: `brief-video-editor-[ten]-[YYYYMMDD].md`

```markdown
# Video Brief — [Ten project]

## Thong tin video
| Hang muc | Chi tiet |
|----------|----------|
| Ten project | |
| Kenh | TikTok / Reels / FB ads / YouTube |
| Thoi luong target | 15s / 30s / 60s / 3-5 phut |
| Tang pheu | TOFU / MOFU / BOFU |
| Nguoi xuat hien | |
| Ngay quay / ngay dang | |
| Nguoi quay / editor | |

## Concept
- Idea mot cau: [video nay ve dieu gi]
- Tone: [Serious / Playful / Urgent / Inspiring / Educational]
- Reference video: [link + hoc gi tu ref nay]

## Storyboard — tung beat
| Beat | Giay | Canh quay | Loi thoai / VO | Text overlay | Transition |
|------|------|-----------|----------------|--------------|------------|
| Hook | 0-3s | | [tu 04-script-video] | | |
| Beat 1 | 3-Xs | | | | |
| Beat 2 | | | | | |
| Beat 3 | | | | | |
| CTA | 5s cuoi | [end-frame: CTA + logo + contact] | | [CTA text] | |

## Huong dan quay
- Anh sang: [natural / ring light / studio]
- Background: [mau / boi canh / dia diem]
- Goc may: [eye level / slightly low / overhead]
- Thiet bi: [phone / camera — quay doc hay ngang]
- Do's: quay toi thieu 3 takes moi beat; quay du B-roll cho phan minh hoa
- Don'ts: khong quay nguoc sang; khong doi boi canh giua beat khong co ly do

## Huong dan edit
- Nhac nen: [mood + BPM + nguon nhac — luu y ban quyen theo kenh]
- Cut style: [fast <2s / slow / mixed theo beat]
- Color grade: [bright & airy / warm / theo brand]
- Subtitle: [auto + chinh tay / manual / khong can]
- Font subtitle: [font heading] Bold, mau sang, outline tuong phan — doc ro tren mobile
- Text overlay: dung [font heading] / mau tu brand guideline, giu trong safe zone

## Deliverables
| File | Spec | Deadline |
|------|------|----------|
| Raw footage | [noi luu + format] | |
| Final edit | [kich thuoc theo kenh — xem bang spec] | |
| Thumbnail / cover frame | 1280x720px (YouTube) hoac frame doc 9:16 | |
| Cut phu (neu co) | [ban 15s cat tu ban 60s...] | |
```

## Spec theo kenh

| Kenh | Ti le | Kich thuoc | Thoi luong goi y | Luu y |
|------|-------|------------|-------------------|-------|
| TikTok / Reels / Shorts | 9:16 | 1080x1920px | 15-60s | Hook 0-3s; safe zone 150px top / 300px bottom |
| Facebook / IG Feed | 1:1 hoac 4:5 | 1080x1080 / 1080x1350px | 15-60s | Nhieu nguoi xem khong bat tieng — subtitle bat buoc |
| Facebook ads | 1:1 + 9:16 | xuat ca 2 ban | 15-30s | CTA som hon organic |
| YouTube | 16:9 | 1920x1080px | 3-5 phut | Thumbnail rieng 1280x720px |

Export: MP4. Dat ten file theo convention: `[Campaign]_[Kenh]_[KichThuoc]_[Tang]_[Version]_[Status].mp4`.

## Timeline trong campaign

Theo timeline designer (`41-campaign-asset-list`): video va thumbnail thuoc nhom asset phuc tap — deadline Launch - 5 ngay. Concept + storyboard duyet o moc T-7 truoc khi quay.

## Lien ket skill

- `04-script-video`: viet loi thoai truoc — brief nay dung khau (goi truoc neu chua co script).
- `06-brief-ugc-egc`: video UGC/KOC dung brief rieng cua skill do; skill nay cho video brand tu san xuat.
- `41-campaign-asset-list`: xac dinh video nam dau trong danh sach asset + deadline.
- `42-brief-hinh-anh`: brief thumbnail tinh di kem video.
- `46-brand-guideline`: font subtitle, mau overlay, logo end-frame doc tu day.
- `47-design-review`: review ban dung truoc khi dang (hook, pacing, CTA, spec kenh).

## Checklist chat luong

- [ ] Da co script/loi thoai (tu 04) truoc khi viet storyboard
- [ ] Storyboard du beat: hook 0-3s, body, CTA 5 giay cuoi
- [ ] Hook 3 giay dau dung doc lap duoc
- [ ] Moi beat co canh quay + loi thoai + text overlay + transition
- [ ] Huong dan quay du: anh sang, background, goc may, thiet bi, so takes
- [ ] Huong dan edit du: nhac, cut style, color grade, subtitle style
- [ ] Subtitle/overlay dung font + mau tu brand guideline, nam trong safe zone
- [ ] End-frame co CTA + logo + buoc tiep theo
- [ ] Deliverables ghi ro file, spec, deadline theo tung kenh
- [ ] Co reference video kem ghi chu hoc gi
