---
name: 52-account-structure
description: "Dung khi can dung cau truc tai khoan quang cao truoc khi bat campaign — phan tang campaign/adset/ad, naming convention de doc data ve sau, CBO hay ABO, va so luong adset hop ly. Kich hoat khi user nhac 'cau truc campaign', 'naming convention ads', 'chia adset the nao', 'CBO hay ABO', 'setup tai khoan ads', 'to chuc campaign'. Khong dung cho — ra soat tai khoan dang chay thi dung skill 21-audit-ads-performance; phan bo ngan sach theo kenh thi dung skill 54-media-plan."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "cau truc campaign"
  - "account structure"
  - "naming convention"
  - "setup campaign"
  - "len camp"
  - "cau truc tai khoan ads"
  - "to chuc campaign"
  - "setup ad account"
output: "File .md — cau truc campaign day du theo giai doan, naming convention, budget allocation, checklist truoc launch"
related:
  - 51-audience-research
  - 53-tracking-setup
  - 54-media-plan
  - 05-copy-quang-cao
  - 19-ab-test-setup
  - 55-scaling-ads
---

# Account Structure — Cau Truc Tai Khoan Ads

> Cau truc tot = doc data nhanh, toi uu dung cho, scale khong roi. Chay sau `53-tracking-setup` (tracking xanh truoc) va sau khi co `51-audience-research` + `54-media-plan`.

## Thu thap thong tin

Doc media plan va audience profile neu da co. Neu thieu, hoi toi da 4 cau:

1. **Platform va objective?** Meta / TikTok / Google / Zalo — Lead gen / Conversion / Traffic / Awareness?
2. **So san pham / offer dang chay?** Moi offer chinh nen co campaign rieng.
3. **Budget tong thang?** (de tinh so ad set toi da nuoi duoc)
4. **Dang o giai doan nao?** Testing / Scaling / Maintaining?

## Nguyen tac

1. **Cau truc don gian truoc.** Khong setup qua nhieu ad set — budget loang, khong ad set nao du data de thoat learning phase.
2. **Naming convention nhat quan tu ngay dau.** Ve sau doi rat kho; data cu se khong loc duoc.
3. **1 campaign = 1 objective.** Khong tron lead gen va conversion trong cung campaign.
4. **Cold tach khoi retarget.** Campaign retarget rieng, message rieng, khong bao gio tron tep.
5. **Khong dung vao ad set dang learning phase.** Meta can ~50 conversions/ad set/tuan de thoat learning — moi lan sua lon la reset.

## Quy trinh

### Buoc 1 — Hierarchy tong quan

```
Account
├── Campaign 1 — [Objective] — [San pham/Offer] (Cold Testing)
│   ├── Ad Set 1.1 — [Broad]           ├── Ad A (hook 1) / Ad B (hook 2)
│   ├── Ad Set 1.2 — [Interest nhom A] ├── Ad A / Ad B
│   ├── Ad Set 1.3 — [Interest nhom B] ├── Ad A / Ad B
│   └── Ad Set 1.4 — [LAL 1-3%]        └── Ad A / Ad B
├── Campaign 2 — [Objective] — Scale winner (tach rieng khi co winner)
└── Campaign 3 — Retargeting
    └── Ad Set 3.1 — [Warm 7-30 ngay] — creative xu ly objection
```

### Buoc 2 — Naming convention

| Cap | Format | Vi du |
|-----|--------|-------|
| Campaign | `[Platform]_[Objective]_[Product]_[AudienceType]_[MMYY]` | `META_LEAD_COURSE-A_COLD_0726` |
| Ad Set | `[Audience]_[Age]_[Gender]_[Placement]_[Budget]` | `INT-BUSINESS_25-45_ALL_FEED_200K` |
| Ad | `[CreativeType]_[HookType]_[Version]` | `VID_PAIN_v1`, `IMG_SOCIAL-PROOF_v2` |

Quy tac: viet HOA, phan cach `_`, khong dau, khong khoang trang. Ten ad khop voi `utm_content` (xem `53-tracking-setup`) de doi chieu data Ads Manager ↔ GA4.

### Buoc 3 — Chon CBO hay ABO

| | ABO (budget o ad set) | CBO (budget o campaign) |
|---|----------------------|-------------------------|
| Dung khi | **Testing** — can kiem soat spend deu cho tung tep | **Scaling** — da co winner, de thuat toan tu phan bo |
| Uu diem | Moi ad set chac chan co du data | Toi uu tu dong ve ad set hieu qua nhat |
| Rui ro | Phai tu tay tat loser | CBO don tien vao 1 ad set, tep test khac khong duoc chi |
| Quy tac | Testing phase mac dinh ABO | Chi chuyen CBO khi ad set da chung minh on dinh |

### Buoc 4 — Cau truc theo giai doan

**TESTING (tuan 1-2):**
- 1 campaign / objective; 3-5 ad set (broad, interest A, interest B, LAL, retarget nho); 2-3 ad / ad set (test creative + hook).
- ABO, budget deu nhau giua cac ad set. Muc tieu: tim winning audience + creative.
- Dung ad set CPL > 2x target sau 3 ngay.

**SCALING:**
- Tach winner ra campaign rieng (CBO). Scale +20-30%/lan, khong x2 ngay (chi tiet: `55-scaling-ads`).
- Giu nguyen winning ad set — khong chinh khi dang scale. Tiep tuc test creative moi song song o campaign testing.

**MAINTAINING:**
- Monitoring daily 15 phut. Refresh creative moi 2-3 tuan. Retargeting chay lien tuc.

### Buoc 5 — Budget allocation theo loai campaign

| Loai campaign | % Budget | Muc tieu |
|---------------|---------|---------|
| Cold — Testing | 30% | Tim winner moi |
| Cold — Scaling | 50% | Scale winner |
| Retargeting | 15% | Convert warm |
| Lookalike | 5% | Mo tep moi tu seed |

### Buoc 6 — Budget toi thieu / ad set / ngay

| Platform | Toi thieu | Ly do |
|----------|-----------|-------|
| Meta Ads | 100-200K VND | Thoat learning phase (~50 conv/tuan) |
| TikTok Ads | 150-300K VND | Minimum delivery |
| Google Ads | 200-500K VND | Du clicks de toi uu |
| Zalo Ads | 50-100K VND | CPM thap hon |

Quy tac kiem tra: budget/ngay cua ad set >= 5x CPL (hoac CPMess) muc tieu. Neu khong du → gop ad set lai, dung chia nho.

## Cau truc ket qua

Ten file: `account-structure-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Account Structure — [San pham] — [Platform]
Giai doan: [Testing/Scaling/Maintaining] · Budget thang: [so]

## 1. So do campaign
[Cay hierarchy day du voi ten theo naming convention]

## 2. Bang ad set
| Campaign | Ad Set (ten chuan) | Audience | Budget/ngay | ABO/CBO | Ads ben trong |

## 3. Naming convention ap dung
| Cap | Format | Vi du thuc te cua project |

## 4. Budget allocation
| Loai campaign | % | So tien/ngay | So tien/thang |

## 5. Checklist truoc launch
- [ ] Pixel fire dung tren landing + thank you page (xem 53-tracking-setup)
- [ ] Conversion event dung (Lead / Purchase), khong duplicate
- [ ] UTM day du tren tat ca link, utm_content khop ten ad
- [ ] Test Event Tool xanh het — CHUA XANH = CHUA CHAY
- [ ] Naming dung format toan bo campaign/ad set/ad
- [ ] Budget/ad set >= 5x CPL target/ngay
- [ ] Exclusion: cold da loai khach mua + warm audience
```

## Loi thuong gap

| Loi | Hau qua | Fix |
|-----|---------|-----|
| Qua nhieu ad set (>5/campaign khi test) | Budget loang, khong du data | Gop ve 3-5 ad set |
| Sua ad set dang learning | Reset learning, CPL nhay loan | Cho thoat learning roi moi sua |
| Naming tuy hung | Khong doc duoc data, khong biet camp nao test gi | Ap format chuan, doi ten ngay tu dau |
| Tron retarget vao cold | Message sai tep, CPL ao thap | Tach campaign, exclude cheo |
| CBO khi dang test | Tien don vao 1 tep, tep khac khong co data | ABO khi test, CBO khi scale |

## Lien ket skill

- `51-audience-research`: nguon targeting cho tung ad set.
- `54-media-plan`: tong budget va phan bo kenh truoc khi chia campaign.
- `53-tracking-setup`: bat buoc xanh truoc khi launch.
- `05-copy-quang-cao`: viet copy/creative cho tung ad.
- `19-ab-test-setup`: quy trinh test 1 bien trong cau truc nay.
- `55-scaling-ads`: quy tac tach winner va tang budget.

## Checklist chat luong

- [ ] Hierarchy ro rang: 1 campaign = 1 objective, cold tach retarget
- [ ] Naming convention day du 3 cap, co vi du thuc te cua project
- [ ] Chon ABO/CBO dung giai doan (test = ABO, scale = CBO)
- [ ] So ad set 3-5 khi test, moi ad set 2-3 ad
- [ ] Budget/ad set >= muc toi thieu cua platform va >= 5x CPL target
- [ ] Budget allocation theo 30/50/15/5 (hoac ghi ro ly do lech)
- [ ] Checklist truoc launch co muc tracking verify xanh
