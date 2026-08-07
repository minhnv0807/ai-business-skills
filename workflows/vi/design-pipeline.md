# Workflow: Design Pipeline (San Xuat Visual Theo Campaign)

> Quy trinh designer theo timeline nguoc tu ngay launch: asset list truoc, concept duyet som, asset kho lam truoc, asset nhanh lam sau. Khong bat dau thiet ke khi chua co brief duyet.

---

## Tong quan

```
Thoi gian: T-14 ngay den D+1 theo campaign
Skills su dung: 8 skill design + 2 skill lien quan
Output: Asset list + brief tung asset + review + bo asset da resize
Tan suat: Moi campaign; quick asset khi campaign dang chay
```

---

## Timeline chuan

```
T-14          T-7            T-5           T-3            T-1        LAUNCH      D+1
┌────────┐   ┌──────────┐   ┌─────────┐   ┌──────────┐   ┌───────┐   ┌───────┐   ┌────────┐
│ 41     │   │ Concept  │   │ Asset   │   │ Asset    │   │ Asset │   │Standby│   │ Winner/│
│ Asset  │──▶│ MVP 30p  │──▶│ phuc tap│──▶│ trung    │──▶│ nhanh │──▶│ 48    │──▶│ loser  │
│ list   │   │ 45/12    │   │ 12 LP   │   │ binh     │   │ 42    │   │ quick │   │ 50     │
│        │   │ → duyet  │   │ HTML    │   │ 43 42    │   │ story │   │ visual│   │ resize │
└────────┘   └──────────┘   └─────────┘   └──────────┘   └───────┘   └───────┘   └────────┘
```

---

## Chi tiet tung buoc

### T-14 — Asset list
**Skill:** `41-campaign-asset-list`
**Input:** Campaign brief (`02-brief-chien-dich`) + kenh chay
**Output:** Danh sach asset: loai, kich thuoc, kenh, deadline, owner, uu tien
**Gate:** Leader xac nhan scope truoc khi vao san xuat.

### T-7 — Concept MVP (30 phut)
**Skill:** `45-brief-canva` hoac `12-brief-landing-page` (concept section)
**Input:** Asset list + brand guideline (`46-brand-guideline`)
**Output:** 1 concept tho de duyet huong — tranh lam full roi bi doi huong
**Gate:** `47-design-review` duyet concept.

### T-5 — Asset phuc tap
**Skill:** `12-brief-landing-page` (HTML build) + `49-html-email-template`
**Output:** Landing page + email template hoan chinh, test tren mobile.

### T-3 — Asset trung binh
**Skill:** `43-brief-carousel`, `42-brief-hinh-anh` (banner set)
**Output:** Carousel + banner theo brief, qua review truoc khi ban giao.

### T-1 — Asset nhanh
**Skill:** `42-brief-hinh-anh` (static post, story)
**Output:** Asset con lai trong asset list, cap nhat trang thai done.

### Launch day — Standby
**Skill:** `48-quick-visual-brief`
**Muc dich:** Phan ung nhanh khi can asset gap (creative fatigue, bai bi tu choi, trend).

### D+1 — Danh dau winner/loser + resize
**Skill:** `50-asset-resize`
**Input:** Data creative tu ads manager
**Output:** Winner duoc adapt sang cac kich thuoc/kenh con lai; loser ghi ly do vao asset list.

---

## Quy tac chat luong

- Moi asset truy ve 1 dong trong asset list — khong thiet ke ngoai scope.
- Moi asset qua `47-design-review` cham diem truoc khi ban giao (dung brand, hierarchy, CTA ro, hop kenh).
- Mau, font, spacing doc tu brand guideline — khong tu che.
- Asset winner moi duoc resize hang loat; khong ton cong adapt loser.

---

## Lien ket voi cac workflow khac

| Tinh huong | Chuyen sang |
|------------|-------------|
| Can copy/caption truoc khi thiet ke | content-engine (36 → 37/05) |
| Asset chay ads bi CPL xau | performance-loop (21 audit → 48 quick visual) |
| Campaign moi bat dau | campaign-launch (02 brief → 41 asset list) |
