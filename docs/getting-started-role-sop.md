# Bat dau voi Role SOP Packs (v3.5.0)

> 33 skill moi (35-67) chia theo 4 vai tro trong team marketing. Moi skill la mot quy trinh van hanh day du — co cac khau, input bat buoc, decision rules, va tieu chuan chat luong — khong phai prompt le.

---

## Ban dang o dau?

| Tinh huong | Bat dau tu day |
|------------|----------------|
| Lam mot minh (solo founder / freelancer) | `35-brand-voice` → `10-tinh-kpi-nguoc` → `01-lich-noi-dung` → chay vong `content-engine` |
| Co team nho 2-5 nguoi | `46-brand-guideline` + `35-brand-voice` (Brand Hub) → `64-team-brief` → chay 2 vong: `content-engine` va `performance-loop` |
| Chay ads la chinh | `51-audience-research` → `10-tinh-kpi-nguoc` → `54-media-plan` → `53-tracking-setup` → vong `performance-loop` |
| Quan ly team / agency | `00-ke-hoach-mkt` → `61-budget-planning` → `02-brief-chien-dich` → vong `leader-cadence` |
| Muon he thong hoa toan bo | `34-ai-marketing-os` (thiet ke Brand Hub + 5 role project truoc) |

---

## Buoc 1 — Xay Brand Hub truoc (bat buoc)

Khong co Brand Hub thi moi skill deu phai hoi lai tu dau, va output moi lan mot kieu. Sau file nay la nguon su that dung chung:

| File Brand Hub | Skill tao ra | Tan suat cap nhat |
|----------------|--------------|-------------------|
| Brand Voice | `35-brand-voice` | Moi quy hoac khi pivot |
| Brand Guideline (visual) | `46-brand-guideline` | Khi rebrand |
| Customer Insight | `09-insight-khach-hang` | Moi quy hoac khi doi segment |
| Positioning & Offer | `58-positioning` + `31-offer-design` | Khi doi offer |
| KPI Framework | `10-tinh-kpi-nguoc` | Khi doi target |
| Campaign Template | `02-brief-chien-dich` + `41-campaign-asset-list` | Moi campaign |

**Quy tac vang:** Brand Hub thay doi → cap nhat vao tat ca noi dang dung (AI project, thu muc team, `.agents/`). Bo qua buoc nay, cac output se lech nhau.

---

## Buoc 2 — Chon vong lap phu hop

### Content system (skills 35-40)

```
35 brand-voice  →  09 insight  →  01 calendar  →  36 content-brief
   →  [37 caption | 04 script | 05 ads copy | 38 seeding | 06 UGC | 14 email]
   →  [42 brief anh | 43 carousel | 44 video editor]
   →  39 content-audit  →  07 bao cao  →  40 next-content-plan  →  (quay lai 01)
```

Quy tac: khong san xuat khi chua co brief; khong brief khi chua co calendar; khong calendar khi chua chot pillar. Cuoi thang bat buoc audit — plan thang moi phai dua tren data.

Workflow day du: [`workflows/vi/content-engine.md`](../workflows/vi/content-engine.md)

### Performance ops (skills 51-57)

```
51 audience  →  10 KPI nguoc  →  54 media-plan  →  53 tracking (verify xanh)
   →  52 account-structure  →  05 ads copy  →  19 A/B test
   →  21 audit  →  55 scaling / 56 retargeting  →  07 bao cao  →  57 next-ads-plan
```

Hai quy tac cung: **khong chay ads khi tracking chua verify**; **khong tang budget khi CPL dang xau**.

Nhip: daily 15 phut (CPL, frequency, pace spend) · weekly thu 2 (pull data 7 ngay, scale winner, pause loser) · monthly (report → next plan).

Workflow day du: [`workflows/vi/performance-loop.md`](../workflows/vi/performance-loop.md)

### Design production (skills 41-50)

```
T-14: 41 asset-list  →  T-7: concept MVP 30 phut (45/12) → duyet
T-5: asset phuc tap (12 landing, 49 email)  →  T-3: asset trung binh (43, 42)
T-1: asset nhanh (42)  →  Launch: 48 quick-visual standby  →  D+1: 50 resize winner
```

Moi asset qua `47-design-review` truoc khi ban giao. Chi resize winner — khong ton cong adapt loser.

Workflow day du: [`workflows/vi/design-pipeline.md`](../workflows/vi/design-pipeline.md)

### Leader ops (skills 58-67)

```
Theo quy:      00 ke-hoach  →  61 budget  →  (58 positioning / 59 GTM / 60 launch neu ra san pham moi)
Theo campaign: 02 brief  →  64 team-brief  →  62 review copy / 47 review design
Theo tuan:     07 bao cao weekly  →  13 decision log
Ket thuc:      63 retrospective  →  cap nhat Brand Hub
```

Tinh huong dac biet: `66-crisis-playbook` (khung hoang), `67-agency-vendor-brief` (thue ngoai), `65-team-performance-review` (danh gia nhan su).

Workflow day du: [`workflows/vi/leader-cadence.md`](../workflows/vi/leader-cadence.md)

---

## Buoc 3 — Dung kho kien thuc nen tang

Thu muc [`knowledge/`](../knowledge/) chua tu duy nen tang (khac voi skill la SOP thuc thi):

- 10 file nen tang: brandformance, blueprint 8 thanh phan, phieu 6 buoc, chien luoc kenh, Meta Ads framework, he thong KPI, customer insight, brand/offer architecture, AI Marketing OS, business model.
- `knowledge/trien-khai/`: kien thuc trien khai chi tiet theo tung mang.

Dung khi: onboard nguoi moi vao team, upload lam context cho AI project theo vai tro, hoac khi can hieu "tai sao" dang sau mot quy trinh.

Chi tiet cach chia project theo vai tro: [`knowledge/README.md`](../knowledge/README.md) va skill [`34-ai-marketing-os`](../skills/vi/34-ai-marketing-os/SKILL.md).

---

## Cau hoi thuong gap

**Skill 35-67 khac gi skill 00-34 cu?**
Skill 00-34 la cac cong viec marketing pho quat (ke hoach, copy, KPI, audit). Skill 35-67 la SOP theo vai tro — chi tiet hon ve quy trinh van hanh hang ngay cua tung vi tri trong team. Chung bo tro nhau: vi du `05-copy-quang-cao` viet copy, con `62-marketing-review` la gate duyet copy do truoc khi len camp.

**Toi lam mot minh, co can het 33 skill khong?**
Khong. Bat dau voi `35-brand-voice`, `36-content-brief`, `54-media-plan`, `39-content-audit`. Them dan khi quy mo lon hon.

**Skill nao trung nhau?**
`37-caption-social` la caption organic; `05-copy-quang-cao` la ads copy tra tien — khac muc tieu va cau truc. `04-script-video` la loi thoai/kich ban; `44-brief-video-editor` la huong dan dung phim. `47-design-review` cham diem visual; `62-marketing-review` duyet chu va copy.

**Co ban tieng Anh khong?**
Co day du tu v3.6.0. Ca 33 skill 35-67 deu co ban Global trong `skills/en/` voi hau to `-global` (vi du `35-brand-voice-global`, `54-media-plan-global`). Framework va quy trinh giu nguyen; benchmark chuyen sang USD, kenh doi sang Klaviyo/Shopify/Meta US, compliance theo FTC/GDPR/CCPA. Agent tu dong chon cluster dua tren file context trong `.agents/` — khong can config tay.

---

## Doc them

- [Skill map toan he thong](skill-map.md)
- [Huong dan workflow](workflow-guide.md)
- [Best practices](best-practices.md)
- [Thu vien template van hanh](../references/marketing-templates-library.md)
- [Phoi hop AI tool cho marketer](../references/ai-tool-orchestration.md)
