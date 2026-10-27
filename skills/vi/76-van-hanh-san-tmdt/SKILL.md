---
name: 76-van-hanh-san-tmdt
description: "Van hanh gian hang DANG CHAY tren san TMDT (Shopee, TikTok Shop, Lazada) theo P&L tung don — moi loai phi la mot bien, tinh bien dong gop truoc ads, ROAS hoa von, target ROAS va target CPA; danh gia ads tren san (Shopee Ads, GMV Max, Lazada sponsored) theo ROAS hoa von; chuan bi mega sale va voucher; livestream ban hang co cong truoc live; van hanh review va toc do tra loi chat. Kich hoat khi user nhac 'van hanh gian hang Shopee', 'TikTok Shop', 'ROAS hoa von tren san', 'phi san tang', 'chuan bi mega sale 11.11', 'GMV Max', 'livestream ban hang', 'ban tren san lo', 'voucher chong nhau'. Khong dung cho — mo kenh / gian hang lan dau thi dung skill 11-thiet-lap-kenh; chon va tra phi KOC / affiliate thi dung skill 75-hop-tac-koc-affiliate; chien luoc dinh gia thi dung skill 17-pricing-strategy; audit tai khoan Meta / Google Ads thi dung skill 21-audit-ads-performance."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "van hanh gian hang Shopee"
  - "van hanh TikTok Shop"
  - "ROAS hoa von tren san"
  - "phi san tang"
  - "chuan bi mega sale 11.11"
  - "GMV Max"
  - "livestream ban hang"
  - "ban tren san lo"
  - "voucher chong nhau"
  - "P&L don hang Shopee"
output: "File .md — Ke hoach van hanh san thang + Bang P&L don hang (bien dong gop truoc ads, ROAS hoa von, target ROAS, target CPA), lich mega sale, run sheet livestream"
related:
  - 10-tinh-kpi-nguoc
  - 11-thiet-lap-kenh
  - 17-pricing-strategy
  - 21-audit-ads-performance
  - 75-hop-tac-koc-affiliate
  - 53-tracking-setup
  - 54-media-plan
  - 31-offer-design
---

# Van Hanh San TMDT — P&L Tung Don Truoc, Ads Sau

> Quy tac van hanh chung: `skills/vi/references/quy-tac-van-hanh.md` (dac biet quy tac 2, 3, 7).
> Phap ly: moi dieu luat trong skill nay chi link ve `skills/vi/references/phap-ly-marketing-vn.md`. Khong phai tu van phap ly / thue.

> Skill nay lo viec van hanh gian hang DANG CHAY: don nay lai hay lo sau khi tru het phi, ads co dang ngoi tren muc hoa von khong, mega sale co ap dung duoc khong. Khong mo gian hang (skill 11), khong dat gia tu dau (skill 17).

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` truoc (AOV, gia von, bien loi nhuan, nganh hang). Chi hoi cai con thieu, toi da 4 cau:

1. **San nao, nganh hang gi, mo hinh gi?** (Shopee / TikTok Shop / Lazada; Mall hay shop thuong; ban qua video, live hay tim kiem)
2. **Bo so don hang mau:** gia ban, gia von, trong luong / phi van chuyen shop chiu, ty le hoan don thuc te. Neu chua co → dung placeholder `[CAN SO LIEU THAT]`.
3. **Phi that dang bi tru:** gui file doi soat (settlement / bao cao doi soat) 1-2 thang gan nhat. Khong co → chi nhap phi tu Seller Center, ghi ngay kiem.
4. **Viec can lam la gi?** Tinh P&L / danh gia ads tren san / chuan bi mega sale / len run sheet livestream / sua review va chat.

Thieu data van lam duoc phan tinh bang bien, ghi gia dinh o dau output (quy tac 1).

## Nguyen tac

1. **P&L don hang truoc, ads sau.** Khong ai duoc dua target ROAS khi chua co bien dong gop truoc ads cua don that.
2. **Moi loai phi la mot bien co ten, co ngay kiem.** Khong gop thanh "phi san ~ X%". Phi san doi lien tuc (quy tac 4).
3. **Khong bao gio ghi cung muc phi.** Skill nay khong chua ty le phi cua san nao. Phi lay tu Seller Center / file doi soat cua chinh shop; con so trong vi du la **gia dinh**.
4. **ROAS cua san phai quy ve doanh thu thuan.** Ghi ro chi so ROAS cua san tinh tren GMV (truoc voucher / hoan don) hay doanh thu thuan; chi so hoa von chi dung doanh thu thuan sau voucher cua shop.
5. **Gan nhan bang chung** (quy tac 3): phi tu file doi soat = `observed`; phi tu bao chi / ban tin = `reported`; ROAS_be tinh tu ca hai = `inferred`.
6. **Chi doc va soan nhap** (quy tac 7). Doi ngan sach Shopee Ads / GMV Max, bat-tat chuong trinh, dang ky mega sale, dang voucher deu qua cong duyet 6 buoc.
7. **Hanh vi la do** (hub muc 7): khong danh gia gia, khong ep so luong review, khong cho nguoi khac "mua giu cho" de len rank. Danh gia gia mao (review gia) la ranh do do, khong lam.

## Quy trinh

### Buoc 1 — Bang P&L don hang (cot loi)

Moi don la mot hang trong bang. Moi cot la bien, khong cot nao duoc bo.

| Bien | Y nghia | Lay o dau | Nhan |
|------|---------|-----------|------|
| Gia ban thuc nhan | Gia sau giam gia shop da chiu | Don hang | observed |
| Gia von | Gia nhap + dong goi | Kho / ke toan | observed |
| Phi co dinh / hoa hong san | Theo nganh hang, theo loai shop | Seller Center + doi soat | observed / reported |
| Phi thanh toan | Phi giao dich | Doi soat | observed |
| Phi chuong trinh | Vi du ten: Freeship, Voucher Xtra — ten co the khac, doi chieu Seller Center | Doi soat | observed |
| Hoa hong affiliate | Hoa hong tra creator / chuong trinh lien ket | Doi soat / skill 75 | observed |
| Tro gia van chuyen | Phan ship shop chiu | Doi soat | observed |
| Ty le hoan | Hoan / huy / that lac | Bao cao shop | observed |
| Thue khau tru ho | Ngoai bien dong gop; hoi ke toan | Hub muc 6 | reported |

**Cong thuc:**

```
Bien dong gop truoc ads (VND) = Gia ban thuc nhan - Gia von - Tong cac phi bien doi - Gia tri hoan binh quan
Bien dong gop truoc ads (%)   = Bien dong gop truoc ads (VND) / Gia ban thuc nhan
ROAS_be                       = 1 / (bien dong gop truoc ads %)
ROAS muc tieu                 = 1 / (bien dong gop truoc ads % - loi nhuan rong mong muon sau ads %)
CPA_be (VND/don)              = Bien dong gop truoc ads (VND)
CPA muc tieu                  = CPA_be - loi nhuan rong mong muon moi don (VND)
```

`ROAS muc tieu` = ROAS_be cong them dem an toan theo loi nhuan ban muon giu. CPA muc tieu o day khop voi logic tinh nguoc cua `10-tinh-kpi-nguoc`.

**Vi du gia dinh — tat ca ty le duoi day la gia dinh de minh hoa, KHONG phai phi that cua san nao:**

| Bien | Gia tri (vi du gia dinh) | VND |
|------|--------------------------|-----|
| Gia ban thuc nhan | — | 250,000 |
| Gia von | — | 110,000 |
| Phi hoa hong san | 8% (vi du gia dinh) | 20,000 |
| Phi thanh toan | 3% (vi du gia dinh) | 7,500 |
| Phi chuong trinh | 5% (vi du gia dinh) | 12,500 |
| Hoa hong affiliate | 5% (vi du gia dinh) | 12,500 |
| Tro gia van chuyen | co dinh (vi du gia dinh) | 5,000 |
| Gia tri hoan binh quan | 4% (vi du gia dinh) | 10,000 |
| **Bien dong gop truoc ads** | 29% (tinh tu vi du gia dinh) | **72,500** |

- ROAS_be = 250,000 / 72,500 = khoang 3.4 — duoi muc nay chay ads la lo tren moi don.
- Neu muon giu 5% (vi du gia dinh) loi nhuan rong sau ads: ROAS muc tieu = 1 / (29% - 5%) = khoang 4.2.
- CPA_be = 72,500 VND/don; CPA muc tieu = CPA_be tru loi nhuan moi don mong muon.
- Doi bat ky bien nao (vi du phi tang) → tinh lai ca bang. Day chinh la ly do khong duoc ghi cung ROAS muc tieu.

> Sau khi co ROAS_be / CPA_be: dua vao `10-tinh-kpi-nguoc` de nguoc ra so don, ngan sach va CPA muc tieu theo muc tieu doanh thu.

### Buoc 2 — Phi san: kiem ngay lap ke hoach

Chi mot su that duoc ma hoa: bao chi dua tin (khong phai thong bao chinh thuc) ve cac moc doi phi gan day [BAO CAO]:

| San | Ngay doi phi duoc bao chi dua tin |
|-----|-----------------------------------|
| TikTok Shop | 2026-05-09 [BAO CAO] |
| Shopee | 2026-05-23 [BAO CAO] |
| Lazada | 2026-05-26 [BAO CAO] |

- Co thong tin Cuc Canh tranh yeu cau Shopee tam dung ap dung phi moi [BAO CAO]; ket qua chua ro — kiem tra.
- **Phi thay doi — kiem tra Seller Center ngay lap ke hoach.** Skill khong ghi muc phi nao.
- Chi tiet: checklist thanh phan phi tung san, truong "Ngay kiem", cach tinh nguoc phi thuc tu file doi soat → `references/phi-san-tmdt.md`.

### Buoc 3 — Ads tren san

Ten san pham quang cao tren cac san: Shopee Ads, TikTok GMV Max, Lazada sponsored (ten co the doi — kiem tra giao dien Seller Center hien tai).

| Viec | Cach lam |
|------|----------|
| Cau hoi dau tien | ROAS hien tai cua tung nhom / san pham so voi **ROAS_be rieng cua SKU do** |
| Phan loai | Tren ROAS muc tieu / giua ROAS_be va ROAS muc tieu / duoi ROAS_be |
| Duoi ROAS_be | Khong tang them tien. Kiem tra gia, voucher, trang listing truoc (skill 68-cro-audit-trang) |
| Giua hai muc | Giu, test listing / offer; khong scale |
| Tren ROAS muc tieu | Ung vien scale tung buoc, theo quy tac chung cua skill 55-scaling-ads |
| Tracking | ROAS cua san la chi so cua san; doi chieu voi don thuc te va doi soat, khong tin mot nguon |

Khong tuyen bo hieu qua cua bat ky loai ads nao tren san. Skill khong co benchmark ROAS cho nganh nao; neu can so tham chieu dung `[CAN SO LIEU THAT]` va lay tu chinh du lieu shop.

### Buoc 4 — Mega sale va voucher (tom tat)

Chi tiet day du → `references/mega-sale-va-voucher.md`.

- **Lich chuong trinh cua san thay doi** — doc lich chien dich trong Seller Center; skill khong co danh sach chuong trinh co dinh.
- Moc thoi gian T-30 → D+3: chon SKU, tinh lai P&L co voucher, kho, dong goi, nhan su chat, creative, run sheet, danh gia sau.
- **Voucher chong nhau**: cong ca voucher shop + voucher san + xu / hoan tien, roi tinh lai bien dong gop. Neu am → khong dang ky SKU do.
- Kho va van chuyen: du hang + du nguoi dong goi la dieu kien, khong phai phan phu.

### Buoc 5 — Livestream ban hang (tom tat)

Chi tiet: run sheet, vai tro, KPI theo gio, danh gia sau live → `references/livestream-ban-hang.md`.

**Cong truoc live** (tach ro nghia vu phap ly va thuc hanh tot):

*Nghia vu phap ly — link hub, khong chep lai dieu luat:*
- [ ] Tai khoan livestream da xac thuc theo ND 147/2024 (hieu luc 2024-12-25) → hub muc 5. Day la can cu xac thuc tai khoan.
- [ ] Nguoi live / KOL / KOC / nguoi duoc thue da dinh danh dien tu theo quy che livestream cua san — ND 248/2026 [BAO CAO] → hub muc 5, kiem tra van ban goc tai vbpl.vn / thuvienphapluat.vn.
- [ ] Claim va gia noi tren live dung su that; **khong gia gach ao, khong dem nguoc gia** → hub muc 7.
- [ ] Noi dung quang cao da duoc xac nhan truoc o nhung truong hop luat yeu cau — Luat Thuong mai dien tu 122/2025 Dieu 24, hieu luc 2026-07-01 → hub muc 5.

*Thuc hanh tot — khong phai nghia vu trich luat:*
- [ ] Gia noi tren live trung gia trong gio hang; voucher da bat that truoc khi noi.
- [ ] Da test mic, anh sang, mang, kich ban chot don.
- [ ] Co nguoi truc chat va nguoi theo doi kho trong luc live.

### Buoc 6 — Review, danh gia, chat

- **Danh gia that.** Khong mua danh gia, khong tra tien de lay danh gia 5 sao, khong dung tai khoan gia → hub muc 7 (lan ranh do — khong lam).
- Cach tang danh gia hop le: the cam on kem huong dan cach danh gia, hoi y kien sau giao hang, xu ly khieu nai nhanh; khong gan dieu kien "danh gia 5 sao de nhan qua".
- Tra loi **moi** danh gia — ca tot va xau. Danh gia xau co the tra loi kem cach khac phuc, khong tranh cai.
- **Toc do tra loi chat**: doc muc tieu thoi gian phan hoi trong Seller Center cua san, dat muc noi bo cho nhom chat, do hang tuan. Khong ghi so cung o day.

### Buoc 7 — Thue nguoi ban

San co ca chuc nang dat hang va thanh toan co the khau tru va nop thay thue cho ho / ca nhan kinh doanh theo ND 117/2025 (hieu luc 2025-07-01) → hub muc 6; kiem tra van ban goc tai vbpl.vn / thuvienphapluat.vn. Skill khong ghi nguong doanh thu hay thue suat. Khi tinh margin: de phan thue khau tru ngoai bien dong gop, ghi [BAO CAO] va **hoi ke toan** (kiem tra ND 68/2026 va thong tu huong dan tai gdt.gov.vn).

## Cau truc ket qua

### File 1: Ke hoach van hanh san thang

```markdown
# Ke hoach van hanh san — [Ten shop] — [Thang]
Ngay kiem phi: [YYYY-MM-DD] · Nguon: Seller Center + doi soat [thang]

## 1. Tom tat (3 dong)
- P&L don trung binh: bien dong gop truoc ads [x%] — [observed / inferred]
- ROAS_be: [x] · ROAS muc tieu: [x]
- Viec uu tien thang nay: [..]

## 2. Phi — ngay kiem
| San | Thanh phan phi | Ngay kiem | Doi so voi thang truoc |

## 3. Ads tren san
| Nhom / SKU | ROAS hien tai | ROAS_be rieng | Phan loai | De xuat (chua thuc hien) |

## 4. Mega sale / voucher (neu co)
Lich T-30 → D+3 · SKU tham gia · P&L sau voucher chong nhau

## 5. Livestream (neu co)
Cong truoc live · run sheet · KPI theo gio

## 6. Review, chat, hoan don
Muc tieu noi bo · hanh dong tuan

## 7. Hang cho duyet (quy tac 7)
Thay doi #: ... Hien tai / De xuat / Ky vong / Rollback / Gioi han / Nguoi duyet
```

### File 2: Bang P&L don hang

```markdown
| SKU | Gia ban thuc nhan | Gia von | Phi san (tung thanh phan) | Hoa hong affiliate | Tro gia ship | Hoan | Bien dong gop truoc ads (VND) | % | ROAS_be | ROAS muc tieu | CPA_be |
```

Dung bo cot chuan trong `references/marketing-templates-library.md` neu can bang dashboard dai.

## Checklist chat luong

- [ ] Moi loai phi la mot bien co ngay kiem; khong co ty le phi nao duoc ghi cung.
- [ ] Moi so trong vi du co nhan "vi du gia dinh"; con so cua shop that co nhan observed / reported / inferred.
- [ ] ROAS_be tinh tren doanh thu thuan, noi ro dinh nghia ROAS cua san dang dung.
- [ ] Thue khau tru de ngoai bien dong gop va ghi [BAO CAO] / hoi ke toan.
- [ ] Moi dieu luat chi link hub (muc 5, 6, 7), co ngay hieu luc va tag kiem tra van ban goc.
- [ ] Nghia vu phap ly tach rieng khoi thuc hanh tot trong cong truoc live.
- [ ] Khong co hanh vi lan ranh do (gia gach ao, mua danh gia, tai khoan gia).
- [ ] Moi thay doi ngan sach / voucher / chuong trinh la khoi cho duyet, chua thuc hien.
- [ ] Thieu so → `[CAN SO LIEU THAT]`, khong bia benchmark.
