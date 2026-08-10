---
name: 54-media-plan
description: "Dung khi can lap ke hoach chi tieu quang cao cho mot ky — tinh nguoc tu doanh thu, phan bo theo kenh va tang pheu, ty le testing 30 scale 50 retarget 15 lookalike 5, va timeline ramp-up. Kich hoat khi user nhac 'media plan', 'plan ads thang toi', 'phan bo ngan sach quang cao', 'chay bao nhieu tien', 'chia budget cho kenh nao', 'ke hoach chay ads'. Khong dung cho — phan bo ngan sach marketing tong the ngoai ads thi dung skill 61-budget-planning; tinh CPL toi da thi dung skill 10-tinh-kpi-nguoc."
metadata:
  version: 1.0.1
  category: performance
license: MIT
triggers:
  - "media plan"
  - "plan ads"
  - "ke hoach chay ads"
  - "phan bo ngan sach ads"
  - "budget allocation"
  - "plan Meta Ads"
  - "plan TikTok Ads"
  - "len ke hoach quang cao"
output: "File .md — media plan day du: KPI tinh nguoc, phan bo kenh + funnel + loai campaign, timeline ramp-up, KPI target theo kenh, contingency plan"
related:
  - 10-tinh-kpi-nguoc
  - 51-audience-research
  - 53-tracking-setup
  - 52-account-structure
  - 00-ke-hoach-mkt
  - 57-next-ads-plan
---

# Media Plan — Ke Hoach Chay Ads

> Plan khong co KPI cu the = khong biet thang hay thua. Moi so trong plan phai truy duoc ve doanh thu muc tieu. Goi `10-tinh-kpi-nguoc` de tinh CPL max / budget truoc khi phan bo.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, output `51-audience-research` va `10-tinh-kpi-nguoc` neu co. Neu thieu, hoi toi da 4 cau:

1. **San pham / offer can chay va revenue target?** (doanh thu muc tieu thang hoac campaign + AOV + gross margin %)
2. **Budget tong bao nhieu / thang?** Co gioi han cung khong hay tinh nguoc tu revenue?
3. **Kenh muon chay va objective chinh?** Meta / TikTok / Google / Zalo / YouTube — Lead gen / Conversion / Traffic?
4. **Timeline campaign bao nhieu tuan?** Co moc mua vu / launch nao phai bam khong?

## Nguyen tac

1. **Tinh nguoc tu doanh thu, khong tu "so tien co san".** Doanh thu → so don → so lead → CPL max → budget. Neu budget co san < budget can → ha target hoac ha CPL, khong tu lua.
2. **Phan bo theo funnel, khong don het vao 1 kenh / 1 tang.** Chi chay BOFU tu dau = CPA cao vi chua co trust.
3. **Plan phai co so cu the.** Khong de blank KPI. Moi kenh co CPL/CPMess target rieng.
4. **Review moi tuan, dieu chinh theo data.** Plan la gia thuyet — data thuc te quyet dinh.
5. **Testing truoc, scale sau.** Tuan 1-2 la chi phi hoc — khong danh gia ROAS tuan dau.

## Quy trinh

### Buoc 1 — Tinh KPI nguoc (goi `10-tinh-kpi-nguoc`)

```
Doanh thu muc tieu / AOV = So don can
So don / Close rate      = So lead can
Max CPL                  = (Doanh thu x Gross margin %) / So lead
Break-even ROAS          = 1 / Gross margin %
Target ROAS              = Break-even ROAS x 1.5
Budget ads can           = So lead x CPL target
```

Ket qua bat buoc co truoc khi sang buoc 2: So lead can · CPL max · CPL target · Budget ads · Target ROAS. Tinh du 3 kich ban (Pessimistic / Base / Optimistic) — lap plan bang kich ban Base.

### Buoc 2 — Phan bo ngan sach theo kenh

| Kenh | % Budget | So tien/thang | Objective | KPI chinh |
|------|---------|--------------|-----------|-----------|
| Meta Ads | [%] | [so] | [Lead/Conv] | CPL, CPMess |
| TikTok Ads | [%] | [so] | [Video-first] | CPL, VCR |
| Google Ads | [%] | [so] | [Search intent] | CPL, Conv rate |
| Zalo / khac | [%] | [so] | | |
| **Tong** | **100%** | | | |

Logic phan bo mau (dieu chinh theo data rieng):
- Lead gen B2C: Meta 50% + TikTok 30% + Zalo 20%
- E-commerce: Meta 40% + Google 35% + TikTok 25%
- B2B: Google Search 50% + Meta 30% + YouTube 20%
- SME VN pho bien: Meta 60-70% + TikTok 20-30% + Google 0-10%

Quy tac: kenh da chung minh hieu qua nhan 60-70%; kenh moi test 15-20%; khong dan deu.

### Buoc 3 — Phan bo theo funnel TOFU/MOFU/BOFU

| Tang | % Budget | Audience | Creative | KPI chinh |
|------|---------|----------|----------|-----------|
| TOFU — Awareness/Traffic | 30-40% | Cold (interest/broad/LAL) | Hook manh, educate, entertain | CPM, CTR 0.8-2% |
| MOFU — Lead gen | 35-45% | Warm (engaged 7-30 ngay) + cold da loc | Educate + offer, giai phap | CPL, lead quality |
| BOFU — Conversion/Retarget | 15-25% | Hot (visit LP, cart, inbox 1-7 ngay) | Urgency, proof, testimonial | CPA, ROAS |

### Buoc 4 — Budget split theo loai campaign (chuan van hanh)

| Loai campaign | % Budget | Muc tieu |
|---------------|---------|---------|
| Testing (cold, tim winner) | 30% | Test creative + audience moi |
| Scale (winner da chung minh) | 50% | Volume chinh |
| Retargeting | 15% | Convert warm/hot |
| Lookalike | 5% | Mo tep tu seed chat luong |

Hai goc nhin (funnel va loai campaign) phai khop nhau khi cong tong — dung bang nay lam chuan chia campaign trong `52-account-structure`.

### Buoc 5 — Timeline ramp-up

| Tuan | Giai doan | % Budget thang | Focus | Checkpoint |
|------|-----------|---------------|-------|------------|
| 1-2 | Testing | ~30% | Test 3-5 ad set, 2-3 creative/ad set | Dung ad set CPL > 2x target sau 3 ngay |
| 3-4 | Scaling | ~50% | Scale winner +20-30%/lan, khong x2 ngay | CPL on dinh, volume tang |
| 5+ | Maintaining | ~70% chay on dinh | Refresh creative, test nho lien tuc | Frequency < 2.5, ROAS >= target |

Ramp-up budget/ngay vi du (thang dau): tuan 1: 300-500K/ngay → tuan 2: 500-800K → tuan 3: 800K-1.5M → tuan 4: 1.5M-3M (theo `55-scaling-ads`, chi tang khi CPL dat).

### Buoc 6 — KPI target theo kenh va decision rules

| Kenh | CPM target | CTR target | CPL target | ROAS target |
|------|-----------|-----------|-----------|-------------|
| Meta | [theo references/benchmarks-vietnam.md] | >1.5% | [tu buoc 1] | [tu buoc 1] |
| TikTok | | >1% | | |
| Google | | >3% | | |

CPL decision rules hang tuan (vi du nganh dich vu local, CPL target 12K — chinh nguong theo AOV va CPL target cua ban):

| CPL thuc te | Frequency | Action |
|-------------|-----------|--------|
| ≤ 1.0x CPA target | < 2.0 | WIN — ung vien scale, kiem tra dieu kien trong `55-scaling-ads` |
| 1.0 - 1.5x | < 2.0 | Theo doi — toi uu, chua scale |
| > 1.5x keo dai 7 ngay | 2.0-2.5 | Thay creative hoac audience |
| > 3.0x | > 2.5 | TAT — ghi ly do vao log |

> Thang nay lay tu `skills/vi/references/quality-gates-vn.md` Gate 1 (nguon duy nhat). Truoc khi phan xu, kiem tra da spend >= 3x CPA muc tieu chua — chua du thi cho, dung tat som.

### Buoc 7 — Contingency plan

| Tinh huong | Dau hieu | Action |
|-----------|---------|--------|
| CPA > 3x target | Da spend >= 3x CPA target | Tat ad set (Gate 1), test creative moi |
| CTR < 0.5% | Ngay 1-2 | Doi creative / hook ngay |
| Frequency > 3 | Tuan 2+ | Refresh creative, mo rong tep |
| Spend khong het (delivery thap) | Pace < 80% plan | Mo audience, tang bid, check reject |
| CPM tang dot bien | Mua cao diem / canh tranh | Giam budget tam thoi, don sang kenh re hon |

## Cau truc ket qua

Ten file: `media-plan-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Media Plan — [San pham/Campaign]
Timeline: [tu ngay - den ngay] · Budget tong: [so] · Objective: [Lead/Conv]

## 1. Campaign overview      [ten, offer, timeline, budget, KPI chinh: CPL/ROAS/Leads]
## 2. KPI tinh nguoc         [bang 3 kich ban tu 10-tinh-kpi-nguoc]
## 3. Phan bo theo kenh      [bang % + tien + objective + KPI]
## 4. Phan bo theo funnel    [TOFU/MOFU/BOFU]
## 5. Budget split van hanh  [Testing 30 / Scale 50 / Retarget 15 / LAL 5]
## 6. Timeline ramp-up       [tuan, budget/ngay, focus, checkpoint]
## 7. KPI target theo kenh + decision rules
## 8. Contingency plan
```

## Lien ket skill

- `10-tinh-kpi-nguoc`: BAT BUOC chay truoc — cho CPL max, budget, target ROAS.
- `51-audience-research`: audience cho tung tang funnel.
- `53-tracking-setup`: verify tracking truoc khi tieu dong nao.
- `52-account-structure`: chuyen plan thanh cau truc campaign.
- `00-ke-hoach-mkt`: media plan la 1 phan cua ke hoach marketing tong.
- `57-next-ads-plan`: ky sau lap plan tu data ky nay.

## Checklist chat luong

- [ ] KPI tinh nguoc tu doanh thu, co CPL max + break-even ROAS + 3 kich ban
- [ ] Budget cong dung 100% o ca 3 goc nhin: kenh, funnel, loai campaign
- [ ] Khong de blank KPI — moi kenh co target rieng
- [ ] Budget split van hanh theo 30/50/15/5 (hoac ghi ly do lech)
- [ ] Timeline ramp-up co checkpoint va dieu kien tang budget
- [ ] Decision rules CPL co nguong so cu the theo CPL target cua project
- [ ] Contingency plan co it nhat 4 tinh huong
- [ ] Benchmark doi chieu `references/benchmarks-vietnam.md` — so lieu lech thi uu tien file repo
