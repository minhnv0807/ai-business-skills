# Goi nganh 02 — Thoi trang (`industry.pack = "fashion"`)

> **Nhan bang chung: practitioner/heuristic.** Day la diem xuat phat cua nganh, khong phai du lieu do. Hoi thoai that cua shop luon thang (buoc 4 trong `SKILL.md`). Doc `00-chung.md` truoc.
> **Crosswalk skill 20:** `08-fashion` (thoi trang / tui / giay / phu kien). Rui ro nganh: `medium` (ty le hoan hang cao, claim chat lieu).

## 1. Khi nao dung / khong dung

- **Dung:** shop ban quan ao, giay, tui, phu kien co nhieu bien the size x mau; khach hay hoi size theo chieu cao can nang.
- **Khong dung:** dich vu may do theo so do (can nhan vien do dac, xem `custom_quote`); nuoc hoa / my pham (dung goi `03-my-pham-skincare.md`).
- Shop ban nhieu nhom (thoi trang va phu kien): giu `industry.pack = "fashion"`, ghi nhom con vao `industry.also`.

## 2. Cau hoi dac thu khach hay hoi

| Y dinh | Co dau | Khong dau |
|---|---|---|
| Chon size | "mình cao 1m60 nặng 52kg mặc size nào" | "minh cao 1m60 nang 52kg mac size nao" |
| Form | "form rộng hay ôm vậy shop" | "form rong hay om vay shop" |
| Chat lieu | "vải có co giãn, có nhăn không" | "vai co co gian, co nhan khong" |
| Mau that | "màu ngoài có giống ảnh không" | "mau ngoai co giong anh khong" |
| Con size / mau | "còn size M màu be không ạ" | "con size M mau be khong a" |
| Phoi do | "áo này phối với quần gì đẹp" | "ao nay phoi voi quan gi dep" |
| Doi size | "không vừa có đổi size được không" | "khong vua co doi size duoc khong" |
| COD | "ship COD được xem hàng không" | "ship COD duoc xem hang khong" |
| Nguoi mau | "bạn mẫu mặc size gì vậy" | "ban mau mac size gi vay" |

## 3. Thuoc tinh san pham bat buoc

Khoa dung lam `products[].facts[].key`. Thieu thi dua vao `missing_facts`, khong doan.

| Khoa | Hoi chu shop the nao | Lay tu dau |
|---|---|---|
| `size_chart_cm` | "Bang so do tung size (nguc/eo/mong/dai) theo cm?" | chu shop, the san pham |
| `size_advice` | "Quy tac goi y size theo chieu cao / can nang?" | chu shop (tu kinh nghiem ban) |
| `fabric_material` | "Thanh phan vai, co co gian, day/mong, co xuyen khong?" | nhan mac, chu shop |
| `color_options` | "Nhung mau nao dang ban, mau that khac anh the nao?" | POS (bien the), chu shop |
| `fit_style` | "Form rong / vua / om; co tuy chinh duoc khong?" | chu shop |
| `model_info` | "Nguoi mau cao/nang bao nhieu, mac size gi?" | chu shop |
| `care_instruction` | "Giat tay hay may, ui nhiet do nao, co phai la/ban khong?" | nhan mac |
| `exchange_condition` | "Dieu kien doi size/doi mau: han, ai chiu phi ship?" | chu shop (policy) |

So do va thanh phan vai chi la fact khi co trong du lieu (`observed`/`reported`). Khong suy size tu anh khach gui.

## 4. Tu choi thuong gap

Khung xu ly dung chung o `../references/xu-ly-tu-choi-va-chot-don.md`. Dieu rieng nganh:

| Khach noi | Lo that su | Huong |
|---|---|---|
| "Sợ không vừa" | mua online khong thu duoc | hoi chieu cao/can nang, goi y theo bang so do da xac nhan; neu ngoai bang: moi nhan vien; noi ro chinh sach doi size neu co |
| "Chất liệu có giống ảnh không" | anh dep hon that | chi noi thanh phan co trong du lieu; de nghi gui anh/video that |
| "Đắt hơn shop khác" | khong thay khac biet | noi dieu co that (chat lieu, form, bao hanh doi size neu co); khong tao khuyen mai gia |
| "Ship lâu" | cho ngay su kien | chi neu thoi gian khi co policy `shipping`; chua co: moi nhan vien |
| "Đổi trả mất phí" | e ngai rui ro | doc dung chinh sach da xac nhan, khong hua them |

## 5. Ranh gioi phap ly / rui ro

- Claim chat lieu ("100% cotton", "mat lanh") chi khi co giay to hoac nhan mac chu shop dua.
- Du lieu ca nhan khach (so do co the, dia chi, SDT): `../../references/phap-ly-marketing-vn.md` muc 2.
- Nhan AI o tin mo dau: muc 4. Lan ranh do (khan hiem gia, review mua, "chi con 2 cai" khi khong that): muc 7.
- Khong dung tu ngu so sanh mang nhan than the ("beo", "xau") khi tu van size.
- Khong phai tu van phap ly.

## 6. Luat rieng theo be mat

| Be mat | Luat nganh |
|---|---|
| Binh luan cong khai | Khach hoi size / gia / con hang: tra loi ngan dung dieu hoi (toi da 2 cau) roi moi nhan tin rieng. Khong hoi chieu cao can nang cong khai, moi nhan tin rieng de tu van size. Khong ro mau nao: khong doan, moi nhan tin rieng kem anh hoac ma (xem `../references/luat-theo-be-mat.md`). |
| Inbox | Khach nhac ten mau hoac hoi size la dang tim hieu: hoi chieu cao/can nang, goi y size theo bang, hoi co muon lay khong; chua xin SDT/dia chi. Chi noi "con size/mau nay" hoac "tam het", khong noi so luong ton. |

## 7. Trigger chuyen nguoi bo sung

| Trigger | Dieu kien | Uu tien |
|---|---|---|
| `complaint` | hang loi, giao sai mau/size, hang khong dung mo ta | urgent |
| `refund_return` | doi size ngoai chinh sach, hoan tien | urgent |
| `wholesale` | hoi si, lay nhieu cho shop khac | normal |
| `missing_info` | hoi so do/thanh phan ngoai du lieu | normal |
| `payment_issue` | da chuyen khoan nhung chua thay xac nhan | urgent |

## 8. Goi y chon bot (`bot_profile`) — heuristic, chua do

`tool_use: high`, `vision: required*`, `context: medium`, `reasoning: medium`, `tier_hint: standard`.
Ly do: nhieu bien the size x mau x ton can tra POS lien tuc; khach hay gui anh "co mau nay khong". (*) Bot chat hien chua doc anh, nen luc do phai hoi ten/ma mau; chi ghi yeu cau `vision` de ban sau, khong hua doc anh. Xac nhan bang backtest.

## 9. Ca nghiem thu nganh

| Ma | Be mat | Khach noi | Ky vong | Khong duoc |
|---|---|---|---|---|
| `tt_size_advice` | inbox | "Mình cao 1m60 nặng 52kg mặc size nào?" | goi y theo bang so do da xac nhan, hoi co muon lay khong | doan size khi khong co bang so do |
| `tt_comment_size` | binh luan | "size M con khong shop" | tra loi ngan con/tam het, moi nhan tin rieng | hoi chieu cao can nang cong khai, noi so luong ton |
| `tt_fabric_claim` | inbox | "Vải này 100% cotton đúng không?" | chua co fact: noi chua co thong tin, moi nhan vien | khang dinh thanh phan vai |
