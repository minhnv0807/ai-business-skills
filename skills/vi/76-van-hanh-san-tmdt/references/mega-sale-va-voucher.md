# Mega sale va voucher — timeline, toan voucher chong nhau, kho va van chuyen

> **Reference file** cua `76-van-hanh-san-tmdt`. Quy tac: `skills/vi/references/quy-tac-van-hanh.md` (quy tac 4, 5, 7).
> Skill khong co danh sach chuong trinh co dinh. **Doc lich chien dich trong Seller Center cua tung san o thoi diem lap ke hoach**; dieu kien tham gia, muc tro gia va ngay dang ky co the doi.
> Thue va phap ly → `skills/vi/references/phap-ly-marketing-vn.md` muc 6, 7.

## 1. Timeline T-30 → D+3

| Moc | Viec | Dau ra | Nguoi lam |
|-----|------|--------|-----------|
| T-30 | Doc lich chien dich cua san; chon chuong trinh phu hop; chot muc tieu doanh thu thuan va ROAS muc tieu | Ke hoach 1 trang | Owner shop |
| T-30 | Chon SKU ung vien theo bien dong gop (khong chi theo ban chay) | Danh sach SKU + P&L co voucher | Van hanh |
| T-21 | Tinh voucher chong nhau cho tung SKU (muc 2); loai SKU bien am | SKU duoc dang ky | Van hanh + ke toan |
| T-21 | Kiem ton kho; dat hang bo sung; kiem hang tra ve, hang loi | Bang ton kho muc tieu | Kho |
| T-14 | Dang ky chuong trinh va flash sale tren san [nguoi duyet ghi ten — quy tac 7] | Xac nhan dang ky | Nguoi duyet |
| T-14 | Chot creative: anh, video, banner shop, mo ta; chot kich ban live (neu co) | Bo creative | Content |
| T-10 | Chot nhan su: chat, dong goi, live, CSKH; lich ca | Bang ca | Truong nhom |
| T-7 | Test dong hang: don thu → dong goi → giao thu; kiem van chuyen doi tac | Bao cao test | Kho |
| T-3 | Dang voucher da duyet; kiem gia gio hang; kiem hien thi SKU | Checklist gia + voucher | Van hanh |
| T-1 | Khoa lich; chuan bi kenh khan cap (nhom noi bo); xac nhan ngan sach ads da duyet | Run sheet | Owner |
| D-day | Theo doi gio: don, ton, chat, loi gia; chi ghi, khong tu doi ngan sach (cho duyet) | Nhat ky theo gio | Truc ban |
| D+1 | Dong goi khong qua tai; xu ly don loi; tra loi chat ton | Bao cao ngay | Kho + CSKH |
| D+3 | Review: doanh thu thuan, bien dong gop that, hoan don, danh gia, bai hoc; cap nhat P&L | Retro 1 trang (xem skill 63-campaign-retrospective) | Owner |

## 2. Toan voucher chong nhau

Muc tieu: biet bien dong gop sau khi **cong ca** cac uu dai co the xep chong len nhau tren cung mot don.

**Bien can:**
- `V_shop`: giam do shop tu chiu (voucher shop, flash sale cua shop);
- `V_san`: phan san tro gia vs phan shop dong tai tro (hoi Seller Center ben nao chiu);
- `Xu / hoan tien`: xu nguoi mua dung, hoan tien cua san — ai chiu;
- Cac phi bien doi nhu Buoc 1 cua SKILL.

**Cach tinh:**

```
Gia sau cung nguoi mua tra       = Gia niem yet - V_shop - V_san - Xu / hoan tien
Doanh thu shop nhan (truoc phi)  = Gia niem yet - phan giam do SHOP chiu
Bien dong gop sau uu dai (VND)   = Doanh thu shop nhan - Gia von - Tong phi bien doi (tinh lai tren so moi) - Hoan
ROAS_be sau uu dai               = Doanh thu shop nhan / Bien dong gop sau uu dai
```

Phi nhieu loai tinh tren gia nao (gia niem yet hay gia sau voucher) la dieu **phai hoi Seller Center** — khong gia dinh.

**Vi du gia dinh (khong phai phi that, chi de minh hoa cach tinh):**
- Gia niem yet 250,000; shop chiu giam 20,000; phan giam khac do san chiu; gia von 110,000; tong phi bien doi vi du gia dinh 40,000 (tinh lai tren so moi); hoan vi du gia dinh 10,000.
- Bien dong gop sau uu dai = (250,000 - 20,000) - 110,000 - 40,000 - 10,000 = 70,000. Neu thanh am sau khi xep them mot loai uu dai → **loai SKU do khoi dot sale**.

**Quy tac:**
1. Mot SKU chi dang ky khi bien dong gop sau uu dai van **duong** va ROAS_be sau uu dai thap hon ROAS co the dat.
2. Khong de uu dai nao tu dong chong len ma khong tinh (kiem cai dat "ap dung cung voucher khac" cua tung chuong trinh).
3. Lam bang tinh theo tung SKU, khong theo trung binh toan shop.
4. Muc giam trong chuong trinh la quyet dinh cua shop — gia gach / dem nguoc gia ao khong duoc lam (hub muc 7).

## 3. Kho va van chuyen — san sang truoc khi dang ky

| Hang muc | Cau hoi kiem |
|----------|--------------|
| Ton kho | Du cho ca kich ban cao? Da tru hang giu cho kenh khac? |
| Dong goi | So don toi da 1 ngay / 1 nguoi dong goi; vat tu da du? |
| Van chuyen | Doi tac co gioi han don? Ca nhan vien lay hang co du? |
| Thoi gian xu ly | Moc xu ly don cua san trong chuong trinh (doc Seller Center) — shop dap ung duoc? |
| Hoan / huy | Hang loi, sai mau — co ke hoach doi tra? |
| Don bi huy do het hang | Dong bo ton giua cac kenh de tranh ban qua ton |

Khong dat muc xu ly don nao thanh "chuan" trong skill; doc yeu cau tu Seller Center.

## 4. Quang cao trong dot sale

- Ngan sach ads trong dot sale: de xuat bang khoi cho duyet (quy tac 7), chua thuc hien.
- Chi tang khi ROAS thuc te > ROAS_be sau uu dai (muc 2); duoi muc nay → giu, khong tang.
- Khong ghi benchmark hieu qua dot sale; thieu so → `[CAN SO LIEU THAT]`.

## 5. Dang sau sale — danh gia

| Chi so | Nguon | Ghi chu |
|--------|-------|---------|
| Doanh thu thuan | Doi soat | Sau voucher, hoan, huy |
| Bien dong gop that | P&L cap nhat | So voi muc tieu T-30 |
| Don hoan / huy | Seller Center | Ly do chinh |
| Danh gia moi / diem | Seller Center | Khong ep danh gia |
| Phan hoi chat | Seller Center | Ca cao diem |
| Ton kho con lai | Kho | De xuat lai SKU |
| Bai hoc | Retro | Ghi lai cho dot sau (skill 63) |
