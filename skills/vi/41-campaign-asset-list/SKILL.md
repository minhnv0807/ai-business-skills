---
name: 41-campaign-asset-list
description: "Dung khi campaign da chot huong va can biet phai thiet ke NHUNG GI — danh sach asset theo kenh kem kich thuoc, so luong, uu tien, nguoi lam, deadline dat nguoc tu ngay launch theo timeline T-14 den D+1 va quy uoc dat ten file. Kich hoat khi user nhac 'asset list', 'danh sach asset campaign', 'designer can lam gi', 'liet ke file thiet ke', 'campaign nay can bao nhieu anh', 'checklist design', 'khong biet con thieu asset nao'. Khong dung cho — brief chi tiet cho tung asset thi dung skill 42-brief-hinh-anh, 43-brief-carousel hoac 44-brief-video-editor; brief tong the chien dich cho ca team thi dung skill 02-brief-chien-dich; nhan mot master ra du kich thuoc thi dung skill 50-asset-resize."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "asset list campaign"
  - "danh sach asset"
  - "checklist design campaign"
  - "liet ke file thiet ke"
  - "designer can lam gi cho campaign"
  - "len list asset"
  - "asset can thiet ke"
output: "File .md — bang asset list theo kenh kem deadline nguoc tu ngay launch, timeline designer T-14 den D+1, naming convention. Designer nhan la biet lam gi, khong can hoi lai."
related:
  - 02-brief-chien-dich
  - 42-brief-hinh-anh
  - 43-brief-carousel
  - 44-brief-video-editor
  - 45-brief-canva
  - 47-design-review
  - 48-quick-visual-brief
  - 50-asset-resize
---

# Danh Sach Asset Campaign

> Buoc dau tien cua design production: liet ke toan bo asset can lam truoc khi mo bat ky tool design nao. Doc campaign brief tu `02-brief-chien-dich` truoc — neu chua co brief, goi skill do truoc.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` va campaign brief neu co. Neu thieu, hoi toi da 4 cau:

1. **Ten campaign + muc tieu chinh + ngay launch?** Lead / sale / awareness — va ngay launch chinh thuc (de dat deadline nguoc).
2. **Kenh chay?** Meta Ads / TikTok Ads / Zalo OA / Email / Landing page — co chay organic song song khong?
3. **Format nao?** Co video ads khong hay chi static? Co UGC / KOC content khong?
4. **Ai phu trach?** Designer nao nhan viec, da co brand guideline chua? (Neu chua, goi `46-brand-guideline` truoc.)

## Nguyen tac

1. **Asset list truoc, tool sau.** Lam list truoc khi mo Canva/Figma — khong lam nguoc.
2. **Moi asset co deadline cu the.** Khong chap nhan "cang som cang tot".
3. **Moi tang funnel can creative rieng.** TOFU / MOFU / BOFU khong dung chung 1 asset.
4. **Thieu asset ngay launch = loi cua khau planning,** khong phai khau design. Moi thieu sot deu do khong len list tu dau.
5. **Update trang thai realtime** trong file nay de Leader theo doi khong can hoi.
6. **Brief thieu thong tin thi hoi ngay,** khong tu doan.

## Quy trinh

### Buoc 1 — Xac dinh kenh va format

Tu campaign brief, liet ke toan bo kenh dang chay va format tuong ung tren tung kenh (single image, carousel, story, video, email banner, landing page, organic post).

### Buoc 2 — Map asset theo funnel

Moi tang TOFU / MOFU / BOFU can creative rieng:

| Tang | Vai tro creative | Vi du asset |
|------|------------------|-------------|
| TOFU | Stop scroll, cham noi dau, awareness | Single image hook, thumbnail video, teasing post |
| MOFU | Build trust, giai thich, proof | Carousel value, story series, banner case study |
| BOFU | Chot chuyen doi, offer ro | Retarget static, end card CTA, landing page |

### Buoc 3 — Dat deadline nguoc tu ngay launch

| Do phuc tap | Vi du asset | Deadline |
|-------------|-------------|----------|
| Concept MVP (duyet truoc khi lam full) | Layout tho, draft concept | Launch - 7 ngay |
| Phuc tap | Landing page, video, thumbnail video | Launch - 5 ngay |
| Trung binh | Carousel, banner set day du kich thuoc | Launch - 3 ngay |
| Nhanh | Static post, story | Launch - 1 ngay |

### Buoc 4 — Gan owner, uu tien, trang thai

Moi dong asset co: owner (ai lam), uu tien (Cao / Trung binh / Thap), trang thai (DRAFT / REVIEW / APPROVED / ARCHIVED). Asset gan launch + chan kenh chinh = uu tien Cao.

## Cau truc ket qua

Ten file: `campaign-asset-list-[ten-campaign]-[YYYYMMDD].md`

```markdown
# Asset List — [Ten campaign]

## Tong quan
| Hang muc | Chi tiet |
|----------|----------|
| Ten campaign | |
| Ngay launch | |
| Kenh chay | |
| Tong so asset can lam | |
| Designer phu trach | |
| Brand guideline ap dung | [link file brand guideline] |

## Facebook / Instagram Ads
| # | Asset | Kich thuoc | Tang | So luong | Uu tien | Owner | Deadline | Trang thai |
|---|-------|-----------|------|----------|---------|-------|----------|------------|
| 1 | Single image — Feed | 1080x1080px | TOFU | 2 variants | Cao | | Launch-1 | DRAFT |
| 2 | Single image — Feed landscape | 1200x628px | TOFU | 2 variants | TB | | Launch-1 | |
| 3 | Story / Reels cover | 1080x1920px | MOFU | 2 variants | TB | | Launch-1 | |
| 4 | Carousel 5-7 slide | 1080x1080px | MOFU | 1 set | Cao | | Launch-3 | |
| 5 | Retarget static — BOFU | 1080x1080px | BOFU | 2 variants | Cao | | Launch-1 | |

## TikTok Ads
| # | Asset | Kich thuoc | Tang | So luong | Uu tien | Owner | Deadline | Trang thai |
|---|-------|-----------|------|----------|---------|-------|----------|------------|
| 6 | Thumbnail tinh | 1080x1920px | TOFU | 2 variants | Cao | | Launch-5 | |
| 7 | End card / CTA overlay | 1080x1920px | BOFU | 1 | TB | | Launch-3 | |

## Email / Zalo OA
| # | Asset | Kich thuoc | Muc dich | Owner | Deadline | Trang thai |
|---|-------|-----------|----------|-------|----------|------------|
| 8 | Email header banner | 600x200px | Broadcast | | Launch-3 | |
| 9 | Zalo OA cover | 1200x500px | Campaign | | Launch-3 | |

## Landing page / Website
| # | Asset | Spec | Muc dich | Owner | Deadline | Trang thai |
|---|-------|------|----------|-------|----------|------------|
| 10 | Hero banner | Full-width 1440px | Above the fold | | Launch-5 | |
| 11 | Product / service visual | 800x600px | Proof section | | Launch-5 | |
| 12 | CTA button set | SVG/PNG | Primary + Secondary | | Launch-5 | |

## Organic content
| # | Asset | Kich thuoc | Kenh | Owner | Deadline | Trang thai |
|---|-------|-----------|------|-------|----------|------------|
| 13 | Post teasing | 1080x1080px | FB Page | | Launch-1 | |
| 14 | Story teasing | 1080x1920px | FB/IG Story | | Launch-1 | |
```

Chinh sua so luong dong theo campaign thuc te — bang tren la khung goi y, khong phai bat buoc du 14 dong.

## Timeline designer T-14 den D+1

Nhung timeline nay vao cuoi file asset list de designer va Leader cung theo doi:

| Giai doan | Moc | Viec can xong | Skill dung | Ghi chu |
|-----------|-----|----------------|------------|---------|
| Truoc launch | T-14 | Doc campaign brief + tao asset list nay | 41 | Khong bat dau design khi chua doc xong brief |
| Truoc launch | T-13 | Nhan copy da duyet tu Content | 36/05 | Copy phai approve truoc khi embed vao design |
| Truoc launch | T-7 | Concept MVP (toi da 30 phut) → Leader duyet | 42/45/12 | Khong vao production khi chua co approval |
| Truoc launch | T-5 | Asset phuc tap xong: landing page, video thumbnail | 12/44 | Deadline cung |
| Truoc launch | T-3 | Asset trung binh xong: carousel, banner set du kich thuoc | 42/43 | Deadline cung |
| Truoc launch | T-1 | Asset nhanh xong: static, story + final check, export dung spec, upload Drive | 42/50 | Khong de sot kich thuoc nao |
| Launch day | Launch | Standby — san sang lam quick asset | 48 | Phan hoi trong 2 tieng |
| Dang chay | Khi co yeu cau | Quick brief → nhan ban winner, thay 1 element | 48 | Lam trong 2-4 tieng |
| Sau campaign | D+1 | Nhan creative performance report, danh dau winner/loser trong asset list | 21 | Winner = base template ky sau |
| Sau campaign | D+2 | Repurpose winner ra kich thuoc con thieu, archive loser | 50 | Tranh lap lai creative fail |
| Sau campaign | D+3 | Cap nhat asset library tren Drive | — | Upload ca source file (link Canva), khong chi file export |

## Naming convention va folder

- Ten file asset: `[Campaign]_[Kenh]_[KichThuoc]_[Tang]_[Version]_[Status]`
- Vi du: `KhoaHocQ3_FB_1080x1080_TOFU_v2_APPROVED.png`
- Status tag: `_DRAFT` (dang lam) / `_REVIEW` (cho feedback) / `_APPROVED` (da duyet) / `_ARCHIVED` (khong dung lai)
- Folder Drive:

```
/[Brand]/Campaigns/[TenCampaign]/Assets/
  Working/    — file dang lam
  Final/      — file da duyet, chia subfolder theo kenh
  Archived/   — loser va file cu
```

- Export dung format: JPG cho static, PNG cho transparent, MP4 cho motion.

## Lien ket skill

- `02-brief-chien-dich`: nguon input — asset list doc tu campaign brief.
- `42-brief-hinh-anh` / `43-brief-carousel` / `44-brief-video-editor` / `45-brief-canva`: sau khi co list, viet brief chi tiet cho tung asset.
- `12-brief-landing-page`: asset landing page trong list dung skill nay de brief + build.
- `47-design-review`: moi asset REVIEW → APPROVED phai qua review.
- `48-quick-visual-brief`: asset phat sinh khi campaign dang chay.
- `50-asset-resize`: khau resize du kich thuoc va repurpose winner sau campaign.

## Checklist chat luong

- [ ] Moi kenh dang chay deu co asset trong list — khong sot kenh nao
- [ ] Moi tang funnel (TOFU/MOFU/BOFU) co creative rieng
- [ ] Moi asset co kich thuoc cu the theo spec kenh
- [ ] Moi asset co deadline cu the dat nguoc tu ngay launch (T-5 / T-3 / T-1)
- [ ] Moi asset co owner va uu tien
- [ ] Co moc concept MVP T-7 de duyet truoc khi lam full
- [ ] Naming convention va folder Drive ghi ro trong file
- [ ] Timeline T-14 den D+1 nhung vao file de theo doi
- [ ] Copy can embed da co ke hoach duyet truoc deadline design
