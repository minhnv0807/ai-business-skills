# Thu vien y dinh khach — taxonomy va cach go co dau / khong dau

> **Reference cua skill 77** (buoc 4, 6). Danh sach y dinh *khung*, khong theo nganh. Cau mau theo nganh nam trong goi nganh (`../variants/`).
> Cum o cot "Co dau" la cau khach go (dung vao `utterances.text`); cot "Khong dau" vao `utterances.ascii`. Day la **mau chung**, hoi thoai that cua shop luon thang.

---

## 1. Vi sao phai ghi ca hai dang

Nhieu khach go khong dau (nhat la tren dien thoai, trong binh luan). Neu bot nhan dien y dinh bang tu khoa/regex co dau, tin "gia bao nhieu" co the khong duoc coi la hoi gia. Moi y dinh, moi tu choi va moi FAQ phai co dang khong dau (`utterances.ascii`, `faq.aliases_ascii`). Do ty le tin khong dau o buoc 2 de biet muc do quan trong.

Quy tac viet dang khong dau: bo dau thanh, giu viet tat that khach hay go (`bn`, `ko`, `dc`, `ib`, `ship`), khong tu sang tao viet tat.

## 2. Bang y dinh khung

`stage` theo schema: `greet · discover · recommend · objection · close · post_sale · support`. `resolve`: `pos_lookup · knowledge · policy · ask_back · handoff`.

| `id` goi y | Y dinh | Stage | Be mat | Co dau (mau) | Khong dau (mau) | `resolve` |
|---|---|---|---|---|---|---|
| `greet` | Chao hoi | greet | inbox | "chào shop" | "chao shop" | `ask_back` |
| `ask_price` | Hoi gia | recommend | ca hai | "giá bao nhiêu vậy shop", "bn tiền" | "gia bao nhieu vay shop", "bn tien" | `pos_lookup` |
| `ask_size` | Hoi kich thuoc / size | discover | ca hai | "size bao nhiêu vậy shop" | "size bao nhieu vay shop" | `pos_lookup` |
| `ask_attribute` | Hoi thuoc tinh (chat lieu, thanh phan…) | discover | ca hai | "cái này làm bằng gì" | "cai nay lam bang gi" | `knowledge` |
| `ask_stock` | Hoi con hang | discover | ca hai | "còn hàng không shop" | "con hang khong shop" | `pos_lookup` |
| `ask_ship` | Hoi giao hang | discover | ca hai | "ship về tỉnh mấy ngày" | "ship ve tinh may ngay" | `policy` |
| `ask_return` | Hoi doi tra / bao hanh | discover | ca hai | "đổi trả thế nào vậy" | "doi tra the nao vay" | `policy` |
| `ask_custom` | Hoi tuy chinh / dat rieng | discover | ca hai | "làm theo yêu cầu được không" | "lam theo yeu cau duoc khong" | `handoff` hoac `policy` |
| `ask_compare` | So sanh hai mau | recommend | inbox | "hai cái này khác nhau sao" | "hai cai nay khac nhau sao" | `knowledge` |
| `ask_unknown_post` | Xin gia/size nhung khong neu mau | discover | binh luan | "xin giá và size ạ" | "xin gia va size a" | `ask_back` (moi nhan tin rieng) |
| `buy_signal` | Muon mua | close | inbox | "lấy cái này", "chốt cho chị 2 cái" | "lay cai nay", "chot cho chi 2 cai" | `pos_lookup` |
| `objection_*` | Tu choi (xem file ke) | objection | ca hai | "đắt quá", "để em xem thêm" | "dat qua", "de em xem them" | theo `objections[]` |
| `order_status` | Hoi tinh trang don | post_sale | inbox | "đơn của em tới đâu rồi" | "don cua em toi dau roi" | `pos_lookup` hoac `handoff` |
| `ask_human` | Doi gap nguoi that | support | ca hai | "cho em gặp nhân viên" | "cho em gap nhan vien" | `handoff` |
| `complaint` | Phan nan / loi | support | ca hai | "hàng bị lỗi", "giao sai rồi" | "hang bi loi", "giao sai roi" | `handoff` |

`support` danh rieng cho **sau khi mua** (don hang, phan nan, doi gap nguoi); cau hoi truoc khi mua dung `discover`/`recommend`.

## 3. Tin hieu mua va tin hieu *chua* mua

| | Co dau | Khong dau |
|---|---|---|
| **Mua** (cho phep bat dau chot) | "lấy cái này", "chốt cho chị", "đặt 1 cái nhé" | "lay cai nay", "chot cho chi", "dat 1 cai nhe" |
| **Chua mua** (dang tim hieu) | ten mau, ten mau + size, "giá bao nhiêu", "còn không" | ten mau, "gia bao nhieu", "con khong" |

Quy tac cung: ten mau, size, hoi gia, hoi con hang = **dang tim hieu**. Bot gui anh / mo ta roi hoi "co muon lay khong", **khong** them gio hang, **khong** xin ten/SDT/dia chi. Ghi cac cum nay vao `closing.not_buy_signals`.

## 4. Quy tac viet `utterances`

- Moi muc ≤200 ky tu; moi y dinh co ≥2 cum `text` lay tu hoi thoai that (hoac tu goi nganh, nhan `inferred`).
- Khong ten rieng cua khach, khong SDT, khong dia chi.
- Y dinh co `resolve: handoff` van phai co `utterances` — de bot nhan ra va chuyen dung luc.
- Y dinh ≥20% mau la chu de chinh; <5% bo hoac dua vao FAQ neu rui ro cao.

## 5. Quy tac `templates` (cau bot noi)

- `surface`: `inbox`, `public_comment`, hoac `both`. Binh luan ≤2 cau, khong xin thong tin ca nhan, moi nhan tin rieng.
- Cho dien bang `{product}`, `{variant}`, `{price}`, `{sizes}`… (slot ghi trong `slots`). **Khong co gia, ton kho, khuyen mai viet cung trong cau.**
- Giong theo `voice` (xung ho, cuoi cau). Cau gui khach giu **co dau**.
- Khong hua "em kiem tra roi bao lai" (bot khong tu nhan lai duoc) — chua co thong tin thi noi that va chuyen nhan vien.
