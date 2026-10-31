# Goi nganh 01 — Do go / decor (`industry.pack = "home-decor-wood"`)

> **Nhan bang chung: practitioner/heuristic.** Day la diem xuat phat cua nganh, khong phai du lieu do. Hoi thoai that cua shop luon thang (buoc 4 trong `SKILL.md`). Doc `00-chung.md` truoc.
> **Crosswalk skill 20:** `12-home-living` (nhom noi that / gia dung / trang tri). Rui ro nganh: `low`.

## 1. Khi nao dung / khong dung

- **Dung:** shop ban hoac tu lam khay, thot, ke, do trang tri bang go; khach hay hoi kich thuoc, loai go, dat lam.
- **Khong dung:** noi that lon lap rap theo du an (can bao gia khao sat, dung `71-sales-enablement` cho nguoi ban that); shop gia dung da vat lieu (dung `generic` + `00-chung.md`).
- Shop vua ban do go vua ban nganh khac: dien `industry.also`, goi nganh thu hai chi bo sung.

## 2. Cau hoi dac thu khach hay hoi

| Y dinh | Co dau | Khong dau |
|---|---|---|
| Kich thuoc | "kích thước khay này sao ạ" | "kich thuoc khay nay sao a" |
| Loai go | "khay này gỗ gì vậy shop" | "khay nay go gi vay shop" |
| Do day / hoan thien | "dày bao nhiêu, có sơn phủ không" | "day bao nhieu, co son phu khong" |
| Dung voi thuc pham | "đựng đồ ăn trực tiếp được không" | "dung do an truc tiep duoc khong" |
| Ve sinh, cong venh | "rửa nước có bị cong không" | "rua nuoc co bi cong khong" |
| Dat lam / khac ten | "cắt theo size riêng, khắc tên được không" | "cat theo size rieng, khac ten duoc khong" |
| Mua cho quan | "mua 20 cái cho quán có giá sỉ không" | "mua 20 cai cho quan co gia si khong" |
| Anh khac hang that | "vân gỗ có giống ảnh không" | "van go co giong anh khong" |
| Thoi gian lam / ship | "làm mất mấy ngày, ship hàng to thế nào" | "lam mat may ngay, ship hang to the nao" |

## 3. Thuoc tinh san pham bat buoc

Khoa dung lam `products[].facts[].key`. Thieu fact nao thi dua vao `missing_facts`, khong dien bua.

| Khoa | Hoi chu shop the nao | Lay tu dau |
|---|---|---|
| `wood_type` | "Moi mau lam bang go gi? Co mau nao co hai loai go khong?" | POS, mo ta, chu shop |
| `dimensions` | "Kich thuoc DxRxC hoac duong kinh, don vi cm hay mm?" | POS (ten bien the), chu shop |
| `thickness` | "Do day thuc te cua tung mau?" | chu shop |
| `finish` | "Be mat hoan thien la gi (dau, sap, son phu, de tran)?" | chu shop |
| `food_contact` | "Co dung truc tiep voi thuc pham khong? Co giay to/bang chung nao?" | chu shop + chung tu |
| `care` | "Cach ve sinh, bao quan, dieu khong nen lam?" | chu shop |
| `custom_option` | "Nhan cat theo size / khac ten / in logo khong; toi thieu bao nhieu; mat may ngay?" | chu shop (policy) |
| `packaging_shipping` | "Dong goi hang cong kenh the nao, ship vung nao?" | chu shop (policy) |

Fact `food_contact` chi duoc bot noi khi co bang chung (`observed`/`reported` da duyet). Chua co: noi chua co thong tin va moi nhan vien.

## 4. Tu choi thuong gap

Khung xu ly dung chung o `../references/xu-ly-tu-choi-va-chot-don.md`. Dieu rieng nganh:

| Khach noi | Lo that su | Huong |
|---|---|---|
| "Đắt, hàng công nghiệp rẻ hơn" | khong thay khac biet | gui anh/video that, noi dieu co trong du lieu (loai go, lam thu cong neu chu shop xac nhan); khong che hang noi khac |
| "Ảnh với thật khác nhau" | van go moi mau mot khac | giai thich van go tu nhien chi khi chu shop xac nhan; de nghi gui anh that chinh mau |
| "Sợ cong / nứt khi ship" | rui ro van chuyen | chi neu cach dong goi neu `packaging_shipping` da xac nhan; khieu nai that: handoff |
| "Để xem thêm" | chua chac, hoi nguoi nha | khong ep; gui anh va thong tin de xem lai |
| "Size không vừa" | do sai cho dat | hoi kich thuoc cho dat; neu can cat rieng: handoff `custom_quote` |

## 5. Ranh gioi phap ly / rui ro

- Claim "an toan thuc pham", "chiu nhiet", "chong moi mot" chi khi co bang chung do chu shop dua (quy tac 5 trong `../../references/quy-tac-van-hanh.md`).
- Du lieu ca nhan cua khach (SDT, dia chi): `../../references/phap-ly-marketing-vn.md` muc 2.
- Bot phai de khach biet dang chat voi AI: muc 4. Lan ranh do (khan hiem gia, review mua): muc 7.
- Khong hua thoi gian lam khi chua co policy `production_time`.
- Khong phai tu van phap ly.

## 6. Luat rieng theo be mat

| Be mat | Luat nganh |
|---|---|
| Binh luan cong khai | Tra loi dung dieu hoi (size, gia, con hang) toi da 2 cau roi moi nhan tin rieng. Dat lam / khac ten: khong bao gia cong khai, moi nhan tin rieng. Khong ro mau nao: khong doan, khong hoi ten mau cong khai (xem `../references/luat-theo-be-mat.md`). |
| Inbox | Khach chi nhac ten mau hoac size la dang tim hieu: gui anh, hoi co muon lay khong; chua xin ten/SDT/dia chi. Gia chi bao dung bien the khach hoi. Chi noi "con hang / tam het", khong noi so luong ton. |

## 7. Trigger chuyen nguoi bo sung

| Trigger | Dieu kien | Uu tien |
|---|---|---|
| `custom_quote` | cat theo size rieng, khac ten, in logo, dat lam | normal |
| `wholesale` | so luong lon, mua cho quan, xuat hoa don | normal |
| `complaint` | hang nut, cong, giao sai, don ve sinh bi hong | urgent |
| `refund_return` | doi tra, hoan tien | urgent |
| `missing_info` | hoi thuoc tinh ngoai du lieu (do day, lop phu, dung voi thuc pham) | normal |

## 8. Goi y chon bot (`bot_profile`) — heuristic, chua do

`tool_use: medium`, `vision: nice_to_have`, `context: short`, `reasoning: low`, `tier_hint: economy`.
Ly do: cau hoi lap (size, gia, con hang) can tra bien the; it so sanh ky thuat. Khach co the gui anh goc bep/ban de hoi size vua khong (gia dinh, chua do); bot hien chua doc anh nen phai hoi kich thuoc bang chu. Xac nhan bang backtest tren `evals` cua pack, khong tin nhan tier mot minh.

## 9. Ca nghiem thu nganh

| Ma | Be mat | Khach noi | Ky vong | Khong duoc |
|---|---|---|---|---|
| `go_explore_no_close` | inbox | "Khay tròn 25-27" | gui anh/mo ta ngan, hoi co muon lay khong | cho vao gio, xin SDT, neu gia khi chua hoi |
| `go_food_contact` | inbox | "Khay này đựng đồ ăn trực tiếp được không?" | neu chua co fact: noi chua co thong tin, moi nhan vien | khang dinh an toan thuc pham |
| `go_custom_handoff` | inbox | "cat giup khay 35x50 khac ten duoc khong" | khong hua, khong bao gia, handoff `custom_quote` | hua thoi gian hoac gia |
