---
name: 48-quick-visual-brief
description: "Dung khi campaign DANG CHAY va can asset moi ngay trong hom nay — creative chay chai, CTR tut, muon test angle moi: brief 1 trang rut gon, nhan ban tu creative dang thang, chi ghi phan thay doi, kich thuoc can, deadline cung va SLA duyet 30 phut. Kich hoat khi user nhac 'brief nhanh', 'can asset gap', 'creative fatigue', 'quick brief', 'can anh trong ngay', 'thay creative ngay', 'ads tut roi can bai moi'. Khong dung cho — brief day du cho asset moi hoan toan thi dung skill 42-brief-hinh-anh; liet ke asset ca campaign tu dau thi dung skill 41-campaign-asset-list; chi doi kich thuoc tu master co san thi dung skill 50-asset-resize."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "brief nhanh"
  - "can asset gap"
  - "creative fatigue"
  - "quick brief"
  - "asset trong ngay"
  - "creative moi gap"
  - "thay creative"
output: "File .md 1 trang — quick brief: base tu creative winner, chi ghi phan thay doi, kich thuoc can, deadline cung, SLA review 30 phut. Designer lam xong trong 2-4 tieng."
related:
  - 21-audit-ads-performance
  - 41-campaign-asset-list
  - 42-brief-hinh-anh
  - 19-ab-test-setup
  - 50-asset-resize
  - 47-design-review
---

# Quick Visual Brief

> Dung khi campaign dang chay va can asset gap: toc do quan trong hon perfection. Variant moi chay duoc trong 4 tieng tot hon asset hoan hao xong sau 2 ngay. Brief du de lam, khong can du de dep.

## Khi nao dung / khong dung

| Tinh huong | Dung skill nao |
|------------|----------------|
| Creative fatigue, CTR drop, frequency cao, can variant trong ngay | Skill nay (48) |
| Test angle moi tren nen creative dang work | Skill nay (48) |
| Asset moi hoan toan, concept moi | `42-brief-hinh-anh` (brief day du) |
| Landing page, video, email | `12` / `44` / `49` (khong quick duoc) |
| Khong co creative winner nao de base vao | `42-brief-hinh-anh` |

## Thu thap thong tin (hoi 1 lan, nhanh)

Gop trong 1 tin nhan, toi da 4 cau:

1. **Can asset loai gi + kich thuoc?** Static / carousel / story — kenh nao?
2. **Base tu creative nao?** Creative nao CTR cao nhat dang chay (link file / Canva)? Neu khong biet, keo data tu `21-audit-ads-performance`.
3. **Angle / message moi la gi?** Khac gi so voi creative dang chay? Copy da co chua hay can viet luon?
4. **Deadline?** Can xong luc may gio — deadline cung, khong flexible.

## Nguyen tac

1. **Nhan ban, khong lam moi.** Tim creative dang work va thay 1 element — nhan ban winner nhanh hon sang tao moi.
2. **1 thay doi chinh** moi variant — khong phai 5 thay doi cung luc (de con biet vi sao thang/thua khi doc data).
3. **Chi brief nhung gi KHAC** so voi creative goc — giu nguyen phan con lai.
4. **Deadline la cung.** Khong lam kip thi bao ngay, khong im lang.
5. **Leader/Media Buyer cam ket feedback trong 30 phut** sau khi designer nop — khong co feedback sau 1 tieng = coi nhu approved.
6. **Approve nhanh chi check 3 diem:** dung message / dung kich thuoc / co CTA.

## Quy trinh

### Buoc 1 — Xac dinh base (5 phut)

Creative nao CTR cao nhat dang chay? Do la base de nhan ban. Lay link file goc (Canva/Figma) — luon nhan ban tu file goc, khong tu file export.

### Buoc 2 — Viet quick brief 1 trang (15-30 phut)

Dung template ben duoi. Chi dien bang "thay doi cu the" — moi thu khac giu nguyen theo base.

### Buoc 3 — Designer lam trong 2-4 tieng

Duplicate base → thay dung element da ghi → export dung kich thuoc → nop.

### Buoc 4 — Review 30 phut, 3 diem

Message dung? Kich thuoc dung? CTA co? Dat → day len ads ngay. Khong co feedback sau 1 tieng → designer coi la approved va nop file final.

## Cau truc ket qua

Ten file: `quick-brief-[campaign]-[YYYYMMDD].md`

```markdown
# QUICK BRIEF — [Ten asset] — [ngay]

Deadline: [gio:phut ngay X] (khong flexible)
Lam trong: 2-4 tieng
Base tu: [link Canva / ten file goc — creative CTR cao nhat]

## Base template
- Duplicate tu: [link]
- Giu nguyen: [layout / background / logo / font]
- Chi thay: [copy / mau / image / CTA — chon 1 thay doi chinh]

## Thay doi cu the
| Element | Noi dung cu | Noi dung moi |
|---------|-------------|--------------|
| Headline | | |
| Subtext | | |
| CTA | | |
| Visual / image | | |

## Kich thuoc can
- [ ] 1080x1080px — FB Feed
- [ ] 1080x1920px — Story (neu can)

## Export & nop
- Format: JPG
- Nop qua: [Zalo / Drive folder]
- Ten file: QUICK_[Campaign]_[Ngay]_v1.jpg

## Review
- Check 3 diem: message dung / kich thuoc dung / CTA co
- Feedback trong: 30 phut sau khi nop
- Khong feedback sau 1 tieng = approved

## Context (1-2 cau)
[CTR dang drop tu X% / frequency vuot nguong / test angle moi: ...]
```

## SLA tong the

| Buoc | Ai | Thoi gian |
|------|----|-----------|
| Viet quick brief | Leader / Media Buyer | 30 phut tu khi phat hien van de |
| Lam asset | Designer | 2-4 tieng |
| Review | Leader / Media Buyer | 30 phut sau khi nop |
| Khong feedback | — | Sau 1 tieng = approved |
| Launch day standby | Designer | Phan hoi yeu cau trong 2 tieng |

## Lien ket skill

- `21-audit-ads-performance`: nguon data xac dinh creative fatigue (frequency, CTR) va winner de base.
- `19-ab-test-setup`: variant moi tu quick brief nen vao khuon A/B test — 1 thay doi = 1 bien.
- `41-campaign-asset-list`: them dong asset moi vao list + update trang thai.
- `42-brief-hinh-anh`: fallback khi khong co winner de nhan ban — brief day du.
- `50-asset-resize`: khi variant thang, resize ra cac kich thuoc con lai.
- `47-design-review`: quick asset chi check 3 diem — khong can full review 40 diem.

## Checklist chat luong

- [ ] Co base cu the (link file goc creative winner)
- [ ] Chi 1 thay doi chinh — cac element khac giu nguyen
- [ ] Bang thay doi cu the ghi ro cu → moi
- [ ] Deadline gio cu the, designer da xac nhan lam kip
- [ ] Kich thuoc + format + noi nop ghi ro
- [ ] Context 1-2 cau de designer hieu vi sao gap
- [ ] SLA review 30 phut duoc cam ket tu nguoi duyet
- [ ] Sau khi chay: ghi ket qua variant (win/lose) vao asset list
