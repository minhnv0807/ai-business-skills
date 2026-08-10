---
name: 56-retargeting-plan
description: "Dung khi can chay lai vao nguoi da tuong tac — phan tang warm theo hanh vi va cua so thoi gian, thong diep rieng tung tang, frequency cap, va seed cho lookalike. Kich hoat khi user nhac 'retarget', 'remarketing', 'chay lai nguoi da xem', 'lookalike', 'tep warm', 'khach xem roi khong mua'. Khong dung cho — tim tep moi hoan toan thi dung skill 51-audience-research; keo lai khach da mua roi bo di thi dung skill 69-giu-chan-khach-hang."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "retarget"
  - "retargeting"
  - "remarketing"
  - "lookalike"
  - "warm audience"
  - "custom audience"
  - "chay lai nguoi da tuong tac"
  - "chay lai khach cu"
output: "File .md — retargeting strategy: audience segments theo tier, message framework theo tang, lookalike brief, frequency cap, exclusion list"
related:
  - 51-audience-research
  - 55-scaling-ads
  - 05-copy-quang-cao
  - 52-account-structure
  - 14-email-marketing
  - 16-marketing-psychology
---

# Retargeting Plan — Chuyen Doi Warm Audience

> Retargeting = noi chuyen voi nguoi da biet minh — message phai khac hoan toan cold ads. Ho can duoc xu ly objection, khong can raise awareness lai tu dau. Khong bao gio show cung 1 ad cho ca cold va warm.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Platform va san pham/offer dang retarget?** Meta / TikTok / Google / Zalo?
2. **Co pixel / event data chua? Loai event nao dang co?** (video view, page engage, LP visit, add to cart, lead form, purchase) — neu chua co, setup `53-tracking-setup` truoc, cho tich luy data.
3. **Kich thuoc tep warm hien tai?** (uoc luong tu Events Manager / Audience tab — tep qua nho thi chua chay duoc)
4. **Budget du kien va objection chinh cua khach la gi?** (gia? tin tuong? chua gap? de sau?)

## Nguyen tac

1. **Message theo do nong cua tep.** Cang nong cang thang vao offer + urgency; cang nguoi cang can trust + value.
2. **Window cang ngan → tep cang nong → message cang manh.** Nguoi vao LP hom qua khac nguoi xem video thang truoc.
3. **Luon exclude nguoi da convert.** Khong dot impression vao nguoi da mua (tru khi co upsell intent ro rang).
4. **Frequency cap bat buoc.** Retarget tan suat cao de gay kho chiu va bao cao xau — cap theo platform.
5. **Retargeting budget 10-20% tong** (chuan van hanh cua repo: 15%) — khong phan bo qua nhieu vi tep co han; volume den tu cold.
6. **LAL seed chat luong hon so luong.** Seed tu khach mua tot hon seed tu viewer.

## Quy trinh

### Buoc 1 — Phan tang retargeting audience

| Tier | Audience | Signal | Window | Huong message |
|------|----------|--------|--------|---------------|
| 1 (nong nhat) | Add to cart / Initiate checkout | Pixel | 7-14 ngay | Offer manh + urgency + guarantee |
| 2 | Mo lead form chua submit / inbox chua chot | Pixel, inbox | 3-7 ngay | Nhac nho + don gian hoa buoc tiep |
| 3 | LP visitor (>30s) chua convert | Pixel | 14-30 ngay | Trust + social proof + xu ly objection |
| 4 | Video viewers > 50% | Engagement CA | 14-30 ngay | Dao sau interest, educate + proof |
| 5 | Page/post engagers | Engagement CA | 30-60 ngay | Soft offer, value add |
| 6 | Email list / Zalo list | Customer upload | — | Nurture qua CRM (phoi hop `14-email-marketing`) |
| 7 | Past customers | Purchase event | 180 ngay | Upsell / cross-sell / loyalty |

### Buoc 2 — Message framework theo tang

- **Tier 1-2 (sap mua):** Offer + urgency + guarantee. CTA: "Mua ngay" / "Hoan tat dang ky". Format: dynamic ads (neu co catalog), countdown, limited slot.
- **Tier 3-4 (quan tam):** Xu ly objection + social proof + soft CTA. CTA: "Xem chi tiet" / "Doc review". Format: testimonial video, FAQ, comparison.
- **Tier 5-6 (biet brand):** Value add + soft offer. CTA: "Tim hieu them" / "Nhan [tai lieu mien phi]". Format: educate content, case study.
- **Tier 7 (khach cu):** Upsell / cross-sell / uu dai rieng. CTA: "Uu dai danh rieng cho ban". Format: bundle, membership, referral (xem `18-referral-program`).

Map message ↔ tep khi viet copy (chuyen brief sang `05-copy-quang-cao`):

| Tep | Message chinh |
|-----|---------------|
| Video viewers 75% | Education + Proof |
| Website visitors 3 ngay | Strong offer + Urgency |
| LP visitors khong convert | Address objection + FOMO |
| Inbox chua chot | Personal + Last chance |
| Past customers | Upsell / Cross-sell |

### Buoc 3 — Creative format khuyen dung

- **Dynamic ads** (co catalog): tu dong show san pham da xem.
- **Testimonial video:** xu ly "lieu co tin duoc khong".
- **Comparison / FAQ:** xu ly objection cu the.
- **Urgency ad:** dem nguoc, limited slot — chi dung cho Tier 1-2.

### Buoc 4 — Frequency cap

| Platform | Cap khuyen nghi |
|----------|-----------------|
| Meta | 2-3 lan / 7 ngay (tier nong co the cao hon nhe) |
| TikTok | 3-4 lan / 7 ngay |
| YouTube | 2 lan / ngay |
| Toi da moi tep | 2-3 lan / ngay — vuot la spam |

### Buoc 5 — Lookalike audience brief

| Seed | Size seed toi thieu | LAL % | Platform | Muc tieu |
|------|--------------------:|-------|----------|---------|
| Khach da mua | >= 100 | 1% | Meta | Prospecting chat luong cao |
| Lead chat luong | >= 500 | 1-3% | Meta | Scale lead gen |
| Video viewers 75% | >= 1000 | Broad LAL | TikTok | Scale awareness |
| Email list | >= 300 | 1-5% | Meta | Mo rong tu CRM |

LAL la campaign cold (5% budget theo split 30/50/15/5) — khong tinh vao budget retarget, nhung seed sinh ra tu he thong retargeting nay.

### Buoc 6 — Exclusions (bat buoc)

- [ ] Khach da mua (neu khong co upsell intent)
- [ ] Lead da submit form / da chot
- [ ] Nguoi da unsubscribe email
- [ ] Tep dang nam trong campaign prospecting (tranh overlap 2 chieu)
- [ ] Giua cac tier: tier nong exclude khoi tier nguoi hon (1 nguoi chi nam 1 tang)

## Cau truc ket qua

Ten file: `retargeting-plan-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Retargeting Plan — [San pham/Campaign]
Platform: [x] · Budget: [so] ([%] tong) · Window chinh: [x ngay]

## 1. Audience segments   [bang tier: audience, signal, window, size uoc tinh]
## 2. Message theo tang   [tier → message → CTA → format]
## 3. Creative brief      [format + noi dung can san xuat, chuyen 05-copy-quang-cao]
## 4. Frequency cap       [theo platform]
## 5. Lookalike brief     [seed, %, muc tieu]
## 6. Exclusion list      [cac loai tru + exclude cheo giua tier]
## 7. KPI ky vong         [CPA retarget, ROAS — thuong cao hon prospecting 2-3x]
```

## Lien ket skill

- `51-audience-research`: dinh nghia tang cold/warm/hot ban dau.
- `53-tracking-setup`: pixel/event la nguyen lieu tao custom audience — phai co truoc.
- `05-copy-quang-cao`: viet copy theo message framework tung tier.
- `52-account-structure`: campaign retarget tach rieng cold, exclusion cheo.
- `55-scaling-ads`: khi scale cold, tep warm phinh ra → tang budget retarget theo.
- `14-email-marketing`: tier email list nurture qua CRM thay vi ads.
- `16-marketing-psychology`: nguyen ly objection handling, FOMO, social proof.

## Checklist chat luong

- [ ] Phan tang du cac tier co data (khong tao tier ma tep qua nho de chay)
- [ ] Moi tier co message + CTA + format rieng — khong dung chung ad voi cold
- [ ] Window khop do nong: cang nong window cang ngan, message cang manh
- [ ] Frequency cap theo platform da ghi ro
- [ ] LAL seed du size toi thieu, ghi % test
- [ ] Exclusion day du: da mua, da chot, unsubscribe, overlap prospecting, cheo tier
- [ ] Budget retarget trong khoang 10-20% tong (chuan 15%)
