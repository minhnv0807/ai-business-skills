---
name: 50-asset-resize
description: "SOP resize va adapt asset tu 1 master design ra du kich thuoc cho tat ca kenh (feed, story, reel, cover, ads placement): bang kich thuoc chuan 2025-2026, 3 chien luoc scale-crop / re-compose / rebuild, quy tac safe zone, naming file. Kich hoat khi nhac: resize asset, du kich thuoc, adapt kich thuoc, bang kich thuoc chuan, safe zone."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "resize asset"
  - "resize design"
  - "du kich thuoc"
  - "adapt kich thuoc"
  - "bang kich thuoc chuan"
  - "safe zone"
  - "repurpose design"
output: "File .md — resize map theo kenh voi strategy va priority tung kich thuoc, quy tac re-compose, safe zone, naming + folder, checklist final. Designer resize xong khong can hoi lai."
related:
  - 41-campaign-asset-list
  - 42-brief-hinh-anh
  - 48-quick-visual-brief
  - 46-brand-guideline
  - 21-audit-ads-performance
---

# Asset Resize

> Resize khong phai keo to keo nho — moi ti le can re-compose de hierarchy van dung. 1 master design tot → 10+ variants: day la khau tiet kiem thoi gian nhieu nhat cua design production, va la viec dau tien sau campaign (repurpose winner o D+2).

## Thu thap thong tin

Doc asset list (`41-campaign-asset-list`) neu co. Neu thieu, hoi toi da 4 cau:

1. **Master design la gi?** Link file goc (Canva/Figma) + kich thuoc va kenh ban dau?
2. **Can resize ra kenh / kich thuoc nao?** Liet ke het — hay lay theo asset list?
3. **Element nao khong duoc mat?** Text, CTA, logo, khuon mat, san pham — co element nao gan canh khong?
4. **Duoc phep crop noi dung khong,** hay phai giu nguyen toan bo?

## Nguyen tac

1. **Luon resize tu file goc (master)** — khong resize tu file da resize (chat luong giam dan).
2. **Element quan trong khong duoc crop o bat ky kich thuoc nao** — focal point, CTA, logo phai con nguyen.
3. **Moi ratio can chien luoc rieng** — khong ap 1 cach cho tat ca.
4. **Khong giu du noi dung sau resize → bao Leader quyet dinh bo element nao,** khong tu quyet.
5. **Repurpose winner ngay sau campaign (D+2)** — de lau mat context.
6. **Cap nhat trang thai vao asset list** sau moi kich thuoc xong.

## Quy trinh

### Buoc 1 — Phan tich master

Xac dinh: focal point la gi; safe zone cua tung element (text, CTA, logo cach canh bao nhieu); dieu gi CO THE crop (background, texture) va KHONG DUOC crop (message, khuon mat, san pham, CTA).

### Buoc 2 — Chon strategy cho tung kich thuoc dich

| Strategy | Khi nao dung | Cach lam |
|----------|--------------|----------|
| Scale & Crop | Ratio gan nhau (1:1 → 4:5, 16:9 → 1.91:1) | Giu nguyen layout, crop bot background |
| Re-compose | Ratio khac vua (1:1 → 16:9, landscape → cover) | Dich chuyen element de fit ratio moi, giu hierarchy |
| Rebuild | Ratio khac han (1:1 → 9:16, feed → email) | Lam lai tu dau tren canvas moi, giu concept + mau + copy |

### Buoc 3 — Resize theo thu tu uu tien

Lam kich thuoc kenh chinh truoc (thuong Feed 1:1), sau do den cac kich thuoc con lai theo priority trong resize map.

### Buoc 4 — Kiem tra, dat ten, upload, update

Check tung file theo final checklist → dat ten dung convention → upload dung subfolder → update trang thai asset list.

## Bang kich thuoc chuan 2025-2026

### Social media

| Loai | Kich thuoc | Ti le | Kenh | Ghi chu |
|------|-----------|-------|------|---------|
| Feed post vuong | 1080x1080px | 1:1 | Facebook, Instagram | Kich thuoc lam truoc tien |
| Feed post doc | 1080x1350px | 4:5 | Instagram, Facebook | Chiem nhieu man hinh hon tren mobile |
| Story / Reels | 1080x1920px | 9:16 | FB/IG Story, Reels | Safe zone 250px top/bottom |
| TikTok video/thumbnail | 1080x1920px | 9:16 | TikTok | Safe zone 150px top / 300px bottom |
| Facebook cover | 820x312px | ~2.6:1 | FB Page | Mobile crop 2 ben — de noi dung o giua |
| LinkedIn post | 1200x627px | ~1.91:1 | LinkedIn | |
| YouTube thumbnail | 1280x720px | 16:9 | YouTube | |

### Ads (Meta)

| Loai | Kich thuoc | Ghi chu |
|------|-----------|---------|
| Feed ads | 1080x1080px | Dung cho ca FB + IG |
| Story ads | 1080x1920px | Noi dung cach mep ~14% |
| Carousel | 1080x1080px | Toi thieu 2, toi da 10 card |
| Link post banner | 1200x628px | |

### Email / Zalo / Website

| Loai | Kich thuoc | Ti le | Strategy thuong dung |
|------|-----------|-------|----------------------|
| Email header | 600x200px | 3:1 | Rebuild |
| Email hero | 600x400px | 3:2 | Scale & Crop |
| Zalo OA cover | 1200x500px | 12:5 | Scale & Crop |
| Website hero desktop | 1440x600px | 2.4:1 | Re-compose |
| Website hero mobile | 375x300px | 5:4 | Rebuild |

### Tai lieu

| Loai | Kich thuoc | Dung khi |
|------|-----------|----------|
| Slide deck 16:9 | 1920x1080px | Presentation, pitch |
| A4 doc / ngang | 210x297mm / 297x210mm | Report, proposal in |

## Quy tac re-compose

**Landscape / vuong → doc (→ 9:16):**
- Logo: giu vi tri theo brand guideline (thuong bottom-right)
- Headline: chuyen len top 1/3
- CTA: luon o bottom 1/3 nhung tren safe zone
- Safe zone story/reels: 250px top/bottom; TikTok: 150px top / 300px bottom

**Vuong → email (600px):**
- Tang font size neu text qua nho o width moi
- Don gian hoa visual — bot element phu
- CTA button toi thieu 44x44px

**→ cover (FB/Zalo):**
- Noi dung chinh don vao vung giua — 2 ben se bi crop tren mobile
- Khong dat text sat mep

## Naming va folder

- Ten file: `[Campaign]_[Kenh]_[KichThuoc]_[Version]_[Status].jpg`
- Vi du: `KhoaHocQ3_FB_1080x1080_v1_APPROVED.jpg`
- Folder:

```
/[Brand]/Campaigns/[TenCampaign]/Assets/Final/
  Facebook/  TikTok/  Email/  Zalo/  Website/  Archive/
```

## Cau truc ket qua

Ten file: `asset-resize-[campaign]-[YYYYMMDD].md`

```markdown
# Resize Map — [Ten campaign]

## Master design
| Hang muc | Chi tiet |
|----------|----------|
| Master file | [link goc] |
| Kich thuoc goc | |
| Focal point | |
| Element khong duoc mat | |

## Resize map
| Kich thuoc | Ti le | Kenh / dung cho | Strategy | Priority | Trang thai |
|-----------|-------|-----------------|----------|----------|------------|
| 1080x1080px | 1:1 | FB/IG Feed + Ads | Scale & Crop | Cao | |
| 1080x1350px | 4:5 | IG Feed doc | Re-compose | Cao | |
| 1080x1920px | 9:16 | Story / Reels / TikTok | Rebuild | Cao | |
| 1200x628px | 1.91:1 | Link banner | Scale & Crop | TB | |
| 600x200px | 3:1 | Email header | Rebuild | TB | |
| [them theo asset list] | | | | | |

## Ghi chu re-compose tung kich thuoc
- [kich thuoc]: [element nao doi cho, crop gi, luu y safe zone]
```

## Final checklist

- [ ] Tat ca kich thuoc trong resize map da xong
- [ ] Khong co anh bi meo (khong stretch — chi scale giu ti le)
- [ ] Text khong bi crop — safe zone tung kenh dam bao
- [ ] Logo hien dien va dung version o moi kich thuoc
- [ ] CTA van doc duoc o kich thuoc nho nhat
- [ ] Font size van doc duoc tren mobile sau resize (>= 14px hien thi)
- [ ] File dat ten dung convention, dung status tag
- [ ] Upload dung subfolder theo kenh
- [ ] Trang thai da update trong asset list

## Lien ket skill

- `41-campaign-asset-list`: danh sach kich thuoc can lam lay tu asset list; resize xong update nguoc lai.
- `42-brief-hinh-anh`: master design sinh ra tu brief anh; adapt rules ghi trong brief khi co nhieu size.
- `48-quick-visual-brief`: variant thang tu quick brief → resize ra cac kich thuoc con lai.
- `21-audit-ads-performance`: xac dinh winner de repurpose sau campaign (D+1 danh dau, D+2 resize).
- `46-brand-guideline`: vi tri logo, font toi thieu, spacing khi re-compose.

## Checklist chat luong

- [ ] Master da phan tich: focal point + element khong duoc mat + vung crop duoc
- [ ] Moi kich thuoc dich co strategy ro (Scale & Crop / Re-compose / Rebuild)
- [ ] Thu tu uu tien ro — kenh chinh lam truoc
- [ ] Safe zone tung kenh ap dung dung bang chuan
- [ ] Truong hop khong giu du noi dung da bao Leader quyet
- [ ] Resize tu file goc, khong tu file export
- [ ] Final checklist chay xong truoc khi bao done
