# Workflow: Performance Loop (Vong Lap Ads)

> Quy trinh media buying khep kin: tinh nguoc tu doanh thu → plan → setup chuan → test → audit → scale → plan ky sau tu data. Khong chay ads khi tracking chua verify; khong tang budget khi CPL dang xau.

---

## Tong quan

```
Thoi gian: Setup 3-5 ngay; vong lap toi uu hang tuan; chu ky day du moi thang
Skills su dung: 11 skill
Output: Media plan + tracking checklist + account structure + test log + audit + next plan
Tan suat: Daily check 15 phut / Weekly review thu 2 / Monthly chu ky day du
```

---

## Luong chay

```
GIAI DOAN 1 — RESEARCH & PLAN          GIAI DOAN 2 — SETUP
┌──────────┐  ┌──────────┐  ┌────────┐  ┌──────────┐  ┌──────────┐  ┌────────┐
│ 51       │  │ 10       │  │ 54     │  │ 53       │  │ 52       │  │ 05     │
│ Audience │─▶│ KPI      │─▶│ Media  │─▶│ Tracking │─▶│ Account  │─▶│ Ads    │
│ research │  │ nguoc    │  │ plan   │  │ setup    │  │ structure│  │ copy   │
└──────────┘  └──────────┘  └────────┘  └──────────┘  └──────────┘  └────────┘
                                          (verify xanh roi moi chay)

GIAI DOAN 3 — TEST & OPTIMIZE           GIAI DOAN 4 — SCALE & DO LUONG
┌──────────┐  ┌──────────┐              ┌──────────┐  ┌──────────┐  ┌────────┐
│ 19       │  │ 21       │              │ 55 Scale │  │ 07       │  │ 57     │
│ A/B test │─▶│ Audit    │──────────────▶│ 56 Retar-│─▶│ Bao cao  │─▶│ Next   │
│          │  │ ads      │              │ geting   │  │          │  │ ads    │
└──────────┘  └──────────┘              └──────────┘  └──────────┘  │ plan   │
                                                                    └────────┘
                                                          (quay lai 54 ky sau)
```

---

## Chi tiet tung buoc

| Buoc | Skill | Input | Output | Gate |
|------|-------|-------|--------|------|
| 1.1 | `51-audience-research` | Insight KH + data camp cu | Audience profile + gia thuyet targeting | — |
| 1.2 | `10-tinh-kpi-nguoc` | Muc tieu doanh thu, AOV, close rate | CPL max, budget can | Leader duyet |
| 1.3 | `54-media-plan` | KPI + audience + budget | Media plan: kenh, funnel, budget split 30/50/15/5 | Leader duyet |
| 2.1 | `53-tracking-setup` | Landing, pixel, CRM | Checklist tracking verify | KHONG chay khi chua xanh |
| 2.2 | `52-account-structure` | Media plan | Cau truc camp + naming convention | — |
| 2.3 | `05-copy-quang-cao` | Brief + brand voice | Ads copy theo funnel | `62-marketing-review` duyet |
| 3.1 | `19-ab-test-setup` | Media plan phan testing | Test plan 1 bien/lan + log | — |
| 3.2 | `21-audit-ads-performance` | Data 7 ngay | Audit + hanh dong theo CPL rules | Weekly |
| 4.1 | `55-scaling-ads` | Winner da xac nhan | Scaling plan +20-30%/lan | CPL dat mới scale |
| 4.2 | `56-retargeting-plan` | Warm audience du lon | Retarget theo tang + frequency cap | — |
| 4.3 | `07-bao-cao-marketing` | Data thang | Report ROAS | Leader |
| 4.4 | `57-next-ads-plan` | Report + audit + test log | Plan ky sau: giu winner, thay loser, test moi | Leader duyet |

---

## Nhip van hanh

### Daily (15 phut)
- CPL vs target → quyet dinh scale / pause theo decision rules.
- Frequency > 2.5 → brief creative moi (goi `48-quick-visual-brief`).
- Pace spend: dung tien do hay overspend.

### Weekly (thu 2 sang)
- Pull data 7 ngay → dien vao performance report.
- Winner → scale +20-30% (`55-scaling-ads`). Loser → pause + ghi ly do vao test log.
- Chay `21-audit-ads-performance` neu co chi so lech benchmark.

### Monthly
- Chu ky day du: `07-bao-cao-marketing` → `57-next-ads-plan` → cap nhat `54-media-plan`.

---

## Decision rules (vi du nganh dich vu local — chinh theo AOV)

| CPL | Frequency | Hanh dong |
|-----|-----------|-----------|
| Duoi target 20%+ | < 2.0 | WIN — scale +20-30% |
| Quanh target | < 2.0 | Theo doi, chua dong gi |
| Vuot target 10-25% | 2.0-2.5 | Toi uu: thay creative, sua audience |
| Vuot target >25% | > 2.5 | PAUSE — replace hoac stop, audit lai |

Budget split chuan: Testing 30% · Scale 50% · Retargeting 15% · Lookalike 5%.
