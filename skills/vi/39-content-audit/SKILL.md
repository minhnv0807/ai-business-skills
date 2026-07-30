---
name: 39-content-audit
description: "Audit dinh ky toan bo content da dang — keo data, phan loai winner/loser theo pillar/format/hook, phan tich pattern tai sao work, action giu/bo/scale. Chay it nhat 1 lan/thang, truoc khi lap plan ky moi. Kich hoat khi nhac 'audit content', 'content nao dang work', 'danh gia content', 'phan tich hieu qua content'."
metadata:
  version: 1.0.0
  category: content
license: MIT
triggers:
  - "audit content"
  - "content audit"
  - "danh gia content"
  - "content nao dang work"
  - "phan tich hieu qua content"
  - "bai nao performance cao"
  - "tim pattern content"
  - "review content tong the"
output: "File .md — tong quan ky audit, winner/loser phan loai theo pillar/format/hook, pattern analysis, recommendation giu/bo/scale, KPI so sanh benchmark"
related:
  - 13-phan-tich-du-lieu
  - 03-danh-gia-hieu-suat
  - 07-bao-cao-marketing
  - 40-next-content-plan
  - 01-lich-noi-dung
  - 09-insight-khach-hang
---

# Content Audit

> Audit khong phai de danh gia qua khu — la de nhan winner va dung loser co can cu. Moi recommendation phai gan voi action cu the, khong phai nhan xet chung chung. Audit it nhat 1 lan/thang — khong doi het quy.

## Thu thap thong tin

Hoi toi da 4 cau truoc khi audit:

1. **Ky audit la gi?** Thang / quy / campaign — tu ngay nao den ngay nao.
2. **Kenh nao can audit?** Facebook / TikTok / Instagram / Email / tat ca.
3. **Co data cu the chua?** Reach, ER, views, CTR, leads tung bai — paste vao hoac export tu platform. Neu co MCP ads/analytics da ket noi, pull truc tiep.
4. **Muc tieu audit?** Tim winner de scale / tim loser de dung / ca hai.

Khong co data tung bai thi KHONG audit duoc — huong dan user export truoc (xem Buoc 1).

## Nguyen tac

1. **Audit hang thang, khong doi het quy.** Lich chuan: keo data ngay 28-30, audit xong truoc ngay 2 thang sau.
2. **Phan loai theo phan vi, khong theo cam tinh.** Top 20% = winner, bottom 20% = loser, 60% giua = average.
3. **So sanh cung dieu kien.** Organic so voi organic, bai boost so voi bai boost — khong tron lan.
4. **Metric chinh theo muc tieu bai.** Bai TOFU cham bang reach/views, MOFU bang ER/save, BOFU bang click/lead — khong cham 1 metric cho tat ca.
5. **Winner = base template ky sau.** Document lai cau truc winner (hook, format, angle) de nhan ban.
6. **Moi nhan dinh phai co hypothesis "tai sao".** Khong dung o "bai nay tot" — phai tra loi tot vi dau.

## Quy trinh

### Buoc 1 — Keo data (ngay 28-30 hang thang)

| Kenh | Nguon data | Metric can lay |
|------|-----------|----------------|
| Facebook / Instagram | Meta Insights (export post-level) | Reach, impressions, ER, click, save, share |
| TikTok | TikTok Analytics | Views, watch time, completion rate, share, follow tu video |
| Email | Platform email (Brevo...) | Open rate, CTR, unsubscribe |
| Leads | CRM / form / inbox | Lead ghi nguon content |

Moi bai 1 dong: ngay dang, kenh, format, pillar, tang pheu, hook type, metric. Thieu cot phan loai (pillar/format/hook) thi bo sung tay tu lich noi dung (01).

### Buoc 2 — Tinh nguong va phan loai

1. Chon metric chinh theo muc tieu tung nhom bai (TOFU: reach/views; MOFU: ER/save; BOFU: click/lead).
2. Xep hang bai trong tung nhom theo metric chinh.
3. Top 20% = WINNER, bottom 20% = LOSER, con lai = AVERAGE.

### Buoc 3 — Phan tich pattern theo 5 truc

Voi nhom winner va nhom loser, tim diem chung theo:

| Truc | Cau hoi |
|------|---------|
| Pillar | Winner don vao pillar nao? Pillar nao khong co winner nao? |
| Format | Video / carousel / static / text — format nao thang? |
| Hook type | Pain / curiosity / con so / contrarian / ket qua truoc — hook nao giu chan? |
| Gio dang | Khung gio nao ra winner? |
| Do dai | Ngan hay dai thang — theo tung kenh? |

### Buoc 4 — Viet nhan dinh cot loi

2-3 cau tra loi: tai sao pattern nay work — doi chieu voi insight khach hang (09). Vi du dang nhan dinh: "Video co hook con so + face nguoi that giu completion cao hon han carousel — audience tep nay tin nguoi hon tin thiet ke."

Nhan dinh la hypothesis co can cu tu data — khong phai cam nhan.

### Buoc 5 — Recommendation: giu / bo / scale

- **Lam ngay (tuan toi):** nhan ban winner — moi action kem du kien impact.
- **Dung lai:** content type / angle / format can dung — kem ly do tu data.
- **Test tiep:** hypothesis moi + cach do (chuyen sang `40-next-content-plan` va `19-ab-test-setup`).

### Buoc 6 — So sanh KPI vs ky truoc + benchmark

Moi metric: ky nay / ky truoc / benchmark / danh gia. Benchmark tham khao VN: ER Facebook tot >3%, email open rate tot 25-35%, Zalo OA read rate tot 60-80% (xem `references/benchmarks-vietnam.md`).

## Cau truc ket qua

Ten file: `content-audit-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# Content Audit — [Ky audit] — [Kenh]

## I. Tong quan ky audit
| Hang muc | So lieu |
|----------|---------|
| Tong so bai da dang | |
| Tong reach / impressions | |
| ER trung binh | |
| Leads tu content | |

## II. Phan loai content
### WINNER — Top 20%
| Bai / Video | Kenh | Format | Pillar | Hook type | Metric noi bat | Ly do work (hypothesis) |
|-------------|------|--------|--------|-----------|----------------|------------------------|
| | | | | | | |

### LOSER — Bottom 20%
| Bai / Video | Kenh | Format | Pillar | Hook type | Metric thap | Hypothesis fail |
|-------------|------|--------|--------|-----------|-------------|----------------|
| | | | | | | |

### AVERAGE — 60% con lai
[Nhan xet chung 2-3 cau]

## III. Pattern analysis
**Pattern WINNER:** [pillar / format / hook / gio dang / do dai hay gap]
**Pattern LOSER:** [diem chung cua bai fail]
**Nhan dinh cot loi:** [2-3 cau — tai sao work, doi chieu insight]

## IV. Recommendation
**Lam ngay (tuan toi):**
1. [Action + du kien impact]
**Dung lai:**
1. [Content type can dung — ly do tu data]
**Test tiep:**
1. [Hypothesis moi + cach do]

## V. KPI so sanh
| Metric | Ky nay | Ky truoc | Benchmark | Danh gia |
|--------|--------|----------|-----------|----------|
| ER Facebook | | | >3% | |
| Views TikTok trung binh | | | | |
| Open rate email | | | 25-35% | |
| Leads tu content | | | | |
```

## Lien ket skill

- `13-phan-tich-du-lieu`: ky thuat pull va lam sach data truoc khi audit (ho tro MCP).
- `03-danh-gia-hieu-suat`: audit phan ads tra phi — content audit nay tap trung organic.
- `07-bao-cao-marketing`: ket qua audit la input cho bao cao thang.
- `40-next-content-plan`: chay NGAY sau audit — audit khong dan den plan moi la audit phi cong.
- `01-lich-noi-dung`: winner duoc dua lai vao lich ky sau lam base template.
- `09-insight-khach-hang`: doi chieu pattern voi insight de giai thich "tai sao work".

## Checklist chat luong

- [ ] Co data tung bai (khong audit tren cam tinh / tong so chung chung)
- [ ] Metric chinh chon theo muc tieu tung nhom bai (TOFU/MOFU/BOFU khac nhau)
- [ ] Phan loai theo phan vi: top 20% / bottom 20% / 60% giua
- [ ] Pattern phan tich du 5 truc: pillar, format, hook, gio dang, do dai
- [ ] Moi winner co hypothesis "tai sao work" — doi chieu insight
- [ ] Recommendation chia ro 3 nhom: lam ngay / dung lai / test tiep
- [ ] Moi action co du kien impact hoac cach do
- [ ] KPI so sanh ky truoc + benchmark VN
- [ ] Winner da document cau truc de lam base template ky sau
- [ ] Da len lich chay `40-next-content-plan` ngay sau audit
