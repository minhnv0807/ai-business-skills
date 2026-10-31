# Skill 77 — Kich ban sale chatbot: chon goi nganh

> **Router.** Skill dung chung: `SKILL.md`. Moi lan chay, doc `variants/00-chung.md` truoc, roi chon (toi da hai) goi nganh duoi day. Noi dung goi nganh la **practitioner/heuristic**, hoi thoai that cua shop luon thang.

---

## Cay quyet dinh

```
Shop ban gi la chinh?
├── Do go, khay, thot, trang tri nha ............ → 01-do-go-decor.md
├── Quan ao, giay, tui, phu kien thoi trang ...... → 02-thoi-trang.md
├── Skincare, makeup, cham soc co the ............ → 03-my-pham-skincare.md
├── Me va be, thuc pham, spa, dien tu, khoa hoc,
│   thuc pham chuc nang ......................... → chua co goi (v1.1)
│                                                   dung 00-chung.md + industry.pack = "generic"
└── Nhieu nganh? → chon nganh chiem doanh thu lon nhat lam chinh,
                   ghi nganh con vao industry.also
```

Khong chac nganh: hoi 1 cau ("Mat hang nao khach hoi nhieu nhat?"), mo ho thi dung `generic`.

---

## Bang goi nganh

| Goi | File | Khi nao dung | Crosswalk skill 20 | Rui ro |
|---|---|---|---|---|
| Chung | `variants/00-chung.md` | Luon doc truoc; khung chung moi nganh | — | — |
| Do go / decor | `variants/01-do-go-decor.md` | Khach hoi kich thuoc, loai go, dat lam, dung voi thuc pham | `12-home-living` | low |
| Thoi trang | `variants/02-thoi-trang.md` | Khach hoi size theo chieu cao/can nang, mau, doi size | `08-fashion` | medium |
| My pham / skincare | `variants/03-my-pham-skincare.md` | Khach hoi thanh phan, hop loai da, kich ung, hang that | `09-cosmetics-skincare` | medium |
| Me va be | se co o v1.1 | — | `11-mom-baby` | medium |
| Thuc pham / do uong | se co o v1.1 | — | `10-fnb-product` | medium |
| Spa / lam dep | se co o v1.1 | — | `01-spa-beauty` | medium |
| Dien tu / phu kien | se co o v1.1 | — (skill 20 chua co nganh nay) | — | medium |
| Khoa hoc online | se co o v1.1 | — | `16-online-course` | medium |
| Thuc pham chuc nang | se co o v1.1 | — | `13-health-supplement` | high |

Nganh rui ro cao hoac chua co goi: handoff-first cho moi cau lien quan suc khoe, thuoc, tre nho; xem `../references/phap-ly-marketing-vn.md` muc 4 va muc 7. Khong phai tu van phap ly.

---

## Cach dung nhanh

1. Doc `SKILL.md`, tra loi toi da 4 cau hoi dau vao (nguon du lieu, kenh, ba cau khach hay hoi, chinh sach da chot).
2. Chon goi nganh theo cay tren; doc `variants/00-chung.md` roi goi nganh.
3. Che du lieu ca nhan trong hoi thoai cu truoc khi dua cho AI (`references/khai-thac-hoi-thoai.md`).
4. Chay quy trinh trong `SKILL.md`, xuat hai file: ban `.md` cho nguoi va `.pack.json` hop le voi schema.
5. Nguoi duyet co ten doc ban `.md`, chay ca nghiem thu cua goi nganh, roi moi nap vao bot (`references/nap-vao-opa-agent.md`).

---

## Reference

| File | Dung de |
|---|---|
| `references/khai-thac-hoi-thoai.md` | Che PII, ghep cap hoi - dap, gan y dinh, nguong tan suat |
| `references/thu-vien-y-dinh.md` | Phan loai y dinh khach, cach go co dau va khong dau |
| `references/xu-ly-tu-choi-va-chot-don.md` | Khung xu ly tu choi hai dang, kich ban chot don |
| `references/luat-theo-be-mat.md` | Luat rieng binh luan cong khai va inbox |
| `references/nap-vao-opa-agent.md` | Nap vao OPA Agent, phep chieu sang `opa.sales_playbook/v1` |
| `references/schema/sales-playbook.schema.json` | JSON Schema cua `.pack.json` (`sales-playbook@1.0.0`) |
