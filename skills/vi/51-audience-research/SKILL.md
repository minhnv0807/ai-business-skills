---
name: 51-audience-research
description: "Dung khi can nghien cuu tep truoc khi chay ads — interest va behavior mapping, do rong tep, phan tang cold/warm/hot, va gia thuyet targeting de test. Kich hoat khi user nhac 'nghien cuu audience', 'tep target', 'nham ai', 'interest targeting', 'chon tep chay ads', 'lookalike tu dau'. Khong dung cho — hieu tam ly va ngon ngu khach hang thi dung skill 09-insight-khach-hang; phan bo ngan sach cho tung tep thi dung skill 54-media-plan."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "nghien cuu audience"
  - "tep target"
  - "tim tep khach hang"
  - "audience research"
  - "interest targeting"
  - "audience Meta Ads"
  - "audience TikTok Ads"
  - "nham dung tep"
output: "File .md — audience profile day du, targeting settings san setup theo tung kenh, phan tang cold/warm/hot, danh sach gia thuyet targeting de test"
related:
  - 09-insight-khach-hang
  - 08-nghien-cuu-doi-thu
  - 10-tinh-kpi-nguoc
  - 52-account-structure
  - 54-media-plan
  - 56-retargeting-plan
---

# Audience Research — Nghien Cuu Tep Cho Ads

> Targeting sai = dot tien du copy hay, creative dep. Skill nay la buoc dau tien cua chuoi performance: 51 → 10-tinh-kpi-nguoc → 54-media-plan → 53-tracking-setup → 52-account-structure. Neu chua co insight khach hang, goi `09-insight-khach-hang` truoc.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` va output cua `09-insight-khach-hang` neu co. Neu thieu, hoi toi da 4 cau:

1. **San pham / dich vu can chay ads?** Gia ban va phan khuc thi truong (mass / mid / premium)?
2. **Da co data khach hang hien tai chua?** (tuoi, gioi, dia ly, hanh vi mua, danh sach khach cu / lead cu / pixel data)
3. **Kenh can setup targeting?** Meta / TikTok / Google / Zalo / YouTube — va objective chinh: Lead gen / Conversion / Traffic / Awareness?
4. **Ngan sach du kien va KPI target?** (CPL / CPMess muc tieu neu da tinh — neu chua, goi `10-tinh-kpi-nguoc`)

## Nguyen tac

1. **Targeting sai = dot tien.** Lam audience research truoc khi viet copy hay len camp — khong lam nguoc.
2. **Khong lam 1 lan roi bo.** Update audience profile khi co data campaign thuc te (sau 3-5 ngay chay, so sanh CPL/CPA theo segment).
3. **Cold: test broad truoc, narrow sau.** Chi thu hep khi da co data chung minh. Thuat toan hien tai toi uu tot voi tep rong + creative dung.
4. **Khong nhoi qua nhieu interest cung luc.** Moi ad set 1 nhom interest ro rang — nhieu interest tron lan thi khong biet cai nao work.
5. **Tep viet dung ngon ngu khach hang.** Pain point ghi theo loi khach noi, khong viet nhu marketer.
6. **Audience size toi thieu cho cold: 100K-500K.** Tep qua nho → CPM cao, nhanh bao hoa; qua rong khong co creative dan loi → loang.

## Quy trinh

### Buoc 1 — Core audience profile

Tong hop tu data khach hien tai (CRM, page insight, don hang) + insight tu `09-insight-khach-hang`:

| Hang muc | Chi tiet |
|----------|----------|
| Tuoi | [khoang tuoi chinh + khoang phu] |
| Gioi tinh | [ti le nam/nu theo data thuc] |
| Dia ly | [tinh/thanh uu tien — theo kha nang giao hang/phuc vu] |
| Thu nhap uoc tinh | [khop voi muc gia san pham] |
| Nghe nghiep / vai tro | [nhom chinh] |
| Thiet bi chinh | Mobile / Desktop / Ca hai |

### Buoc 2 — Psychographic & behavior

- **Pain points chinh:** 3-5 diem, viet dung ngon ngu khach hang.
- **Motivation mua:** ho mua vi muon dat gi / tranh gi.
- **Online behavior:** nen tang hay dung, gio online peak theo tung kenh (sang/trua/toi), loai content hay tuong tac (video / carousel / static / text).

### Buoc 3 — Targeting settings theo kenh

Chi lam cho kenh se chay. Moi kenh output 1 block san setup:

- **Meta Ads:** Age range, Gender, Locations; Detailed targeting 10-15 interests lien quan (chia nhom de test rieng); Behaviors; Exclusions (khach da mua, lead da submit); danh gia Broad vs Narrow.
- **TikTok Ads:** Age, Gender, Interests, Behaviors (video lien quan da xem), Device iOS/Android.
- **Google Ads:** In-market audiences; Custom intent 10-15 keywords; Affinity; Customer match neu co danh sach.
- **Zalo Ads:** Do tuoi, gioi, dia ly, nghe nghiep, thiet bi.
- **YouTube Ads:** Custom intent (keywords video khach hay xem), Placement (kenh/video cu the), Topics.

### Buoc 4 — Phan tang cold / warm / hot

| Tier | Dinh nghia | Signal | Nguon |
|------|-----------|--------|-------|
| Hot | Vao LP, add to cart, mo form, inbox chua chot | Pixel events, inbox | Meta, Google, CRM |
| Warm | Xem video >50%, engage page/post, click link, follow | Engagement custom audience | Meta, TikTok |
| Cold | Chua biet brand | Interest / behavior / broad / LAL | Tat ca kenh |

Quy tac: cold va warm/hot phai nam o campaign khac nhau, message khac nhau (xem `56-retargeting-plan`). Luon exclude warm/hot khoi campaign cold de data sach.

### Buoc 5 — Lookalike seed

| Seed | Size toi thieu | LAL % | Platform | Muc tieu |
|------|---------------|-------|----------|---------|
| Khach da mua | >=100 | 1-3% | Meta | Tim nguoi giong khach tot nhat |
| Lead chat luong | >=500 | 1-5% | Meta | Scale lead gen |
| Video viewer 75% | >=1000 | Broad LAL | TikTok | Scale awareness |
| Email list | >=300 | 1-5% | Meta | Mo rong tu CRM |

Seed cang chat (khach mua > lead > viewer) thi LAL cang chat luong. Khong tao LAL tu seed duoi nguong size.

### Buoc 6 — Gia thuyet targeting de test

Moi gia thuyet 1 dong, dang "Neu target [X] thi [metric] se [Y] vi [Z]" — chuyen cho `19-ab-test-setup` va `52-account-structure` de len ad set:

| # | Gia thuyet | Bien test | Metric do | Uu tien |
|---|-----------|-----------|-----------|---------|
| 1 | Broad + creative manh re hon interest | Broad vs Interest | CPL | Cao |
| 2 | [Interest nhom A] sat pain hon [nhom B] | Interest A vs B | CPL, CTR | Cao |
| 3 | LAL 1% khach mua chat hon LAL 3% | LAL % | CPL, close rate | Trung binh |
| 4 | [Age segment X] chuyen doi tot hon | Age split | CPL | Thap |

Toi da 3-5 ad set test cung luc — nhieu hon thi budget loang, khong du data ket luan.

## Cau truc ket qua

Ten file: `audience-research-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Audience Research — [San pham]
Ngay: [YYYY-MM-DD] · Kenh: [Meta/TikTok/...] · Objective: [Lead/Conversion/...]

## 1. Core audience profile
| Tuoi | Gioi | Dia ly | Thu nhap | Nghe nghiep | Thiet bi |

## 2. Psychographic & behavior
- Pain points: [3-5, ngon ngu khach hang]
- Motivation: [muon gi / tranh gi]
- Online behavior: [nen tang, gio peak, format ua thich]

## 3. Targeting settings theo kenh
### Meta: [age/gender/location/interests theo nhom/behaviors/exclusions]
### TikTok: [...] · Google: [...] · Zalo: [...]

## 4. Audience tiers
| Tier | Audience | Signal | Campaign su dung |

## 5. Lookalike seeds
| Seed | Size | LAL % | Platform | Muc tieu |

## 6. Gia thuyet targeting (chuyen cho A/B test)
| # | Gia thuyet | Bien test | Metric | Uu tien |

## 7. Ghi chu do rong tep
- Audience size uoc tinh tung ad set: [so] — cold nen o 100K-500K
- Overlap can tranh: [cac tep de trung nhau]
```

## Sau khi co data thuc te

- Sau 3-5 ngay chay: so sanh CPL/CPA theo tung audience segment, ghi lai winner/loser vao profile.
- Tep thang → nhan sang LAL/broad tuong tu (xem `55-scaling-ads`). Tep thua → ghi ly do, khong test lai y het.
- Moi ky (thang) doi chieu lai profile voi data CRM: lead tu tep nao chot tot nhat — CPL re chua chac lead chat.

## Lien ket skill

- `09-insight-khach-hang`: chay truoc — cung insight, pain, ngon ngu khach hang.
- `08-nghien-cuu-doi-thu`: xem doi thu dang target ai, angle nao (Ads Library).
- `10-tinh-kpi-nguoc`: tinh CPL max / budget truoc khi len plan.
- `54-media-plan`: dung audience nay de phan bo kenh va budget.
- `52-account-structure`: chuyen targeting settings thanh cau truc ad set.
- `56-retargeting-plan`: chi tiet phan tang warm/hot va message theo tang.

## Checklist chat luong

- [ ] Profile dua tren data thuc (CRM, page insight, khao sat) — khong doan
- [ ] Pain points viet dung ngon ngu khach hang, khong phai ngon ngu marketer
- [ ] Targeting settings du cho tung kenh se chay, san paste vao Ads Manager
- [ ] Co du 3 tang cold/warm/hot + quy tac exclude giua cac tang
- [ ] LAL seed du size toi thieu, ghi ro % test
- [ ] Co 3-5 gia thuyet targeting kem bien test va metric do
- [ ] Audience size cold trong khoang 100K-500K (hoac ghi ro ly do lech)
- [ ] Co ke hoach update profile sau 3-5 ngay chay thuc te
