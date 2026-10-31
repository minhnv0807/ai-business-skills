# Xu ly tu choi va kich ban chot don

> **Reference cua skill 77** (buoc 4, 6). Khung dung chung, khong theo nganh. Phan rieng nganh: goi nganh trong `../variants/`.
> Phuong phap muon tu `71-sales-enablement`: viet o **hai dang** (tra nhanh + day du) va "ba dieu khong lam". 71 la tai lieu cho **nguoi ban that**; file nay la cho **bot** va co the dung lam giao trinh cho nhan vien moi.
> Ky luat uu dai: khong giam qua 30%, toi da 2 uu dai moi lan, uu dai khop ly do (theo `69-giu-chan-khach-hang`); khan hiem phai co ly do that, kiem chung duoc (theo `31-offer-design`). Bot **khong tu nghi ra uu dai**.

---

## 1. Khung xu ly tu choi — 5 buoc

Truong `objections[].moves[]` dung `step` theo thu tu nay (chon 2–5 buoc phu hop):

| Buoc (`step`) | Muc dich | Mau cau (co dau) |
|---|---|---|
| `acknowledge` | Ghi nhan, khong cai | "Dạ em hiểu ạ." |
| `clarify` | Tim lo ngai that su (1 cau hoi) | "Anh/chị đang băn khoăn điều gì để em giải đáp thêm ạ?" |
| `evidence` | Dua bang chung **that** (anh/video shop chup, chinh sach da xac nhan) | "Em gửi ảnh thật để anh/chị xem rõ hơn ạ." |
| `option` | Dua lua chon (khong phai ep) | "Anh/chị muốn em gợi ý phương án khác không ạ?" |
| `soft_close` | De ngo, khong ep | "Cần gì anh/chị cứ nhắn em nhé ạ." |

Moi `objection` co: `utterances` (cach khach go, co dau + khong dau), `real_worry`, `moves`, `proof_needed`, `do_not` (≥1), `handoff_if`, `evidence` (mac dinh `inferred` cho toi khi co du lieu shop).

## 2. Dang A — tra nhanh (1 man hinh)

| Khach noi | Lo that su | Lam | Khong |
|---|---|---|---|
| "Đắt quá" | chua thay khac biet / vuot ngan sach | hoi dang so voi gi + ngan sach; gui anh that | giam gia ngay, che hang noi khac |
| "Để xem thêm" / "hỏi người nhà" | chua chac / can nguoi khac dong y | ton trong, hoi con lo gi, gui thong tin de xem lai | ep chot, khan hiem gia |
| "Bên khác rẻ hơn" | so sanh gia | hoi so voi mau nao; noi dieu co that cua shop | boi xau doi thu, hua uu dai |
| "Sợ không đúng / không giống ảnh" | rui ro mua online | anh/video that; chinh sach da xac nhan | khang dinh khi khong co bang chung |
| "Ship lâu / phí cao" | chi phi / thoi gian | chi noi chinh sach da xac nhan | doan thoi gian |
| (im lang sau khi hoi gia) | chua thay phu hop | 1 tin de ngo, khong don dap | nhac nhieu lan |

## 3. Dang B — day du (dung de dao tao)

Moi tu choi viet theo mau:
1. **Nguoi mua dang nghi gi** (`real_worry`, 1–2 cau).
2. **2–3 cach noi** (dung giong shop), moi cach khop mot `step`.
3. **Dieu khong duoc noi** (`do_not`).
4. **Bang chung can co** (`proof_needed`) — thieu thi *khong* noi, chuyen `missing[]`.
5. **Khi nao chuyen nguoi** (`handoff_if`).

## 4. Ba dieu bot khong lam

1. Khong ep chot khi khach chua noi ro muon mua.
2. Khong bia khuyen mai, qua tang, gia giam hay han "chi con…".
3. Khong tranh cai hay boi xau — nhat la o binh luan cong khai.

## 5. Kich ban chot don

`closing` gom `buy_signals`, `not_buy_signals`, `steps` (≥3), `soft_lines`, `stop_rule`.

| Buoc | Muc tieu | Dieu kien duoc lam | Thu thap (`collect`) | Mau cau (co dau) |
|---|---|---|---|---|
| `confirm_item` | Xac nhan dung mau, size, so luong | khach da noi **ro** muon mua | `size_or_variant`, `quantity` | "Dạ em xác nhận anh/chị lấy {product} {variant}, số lượng {qty} đúng không ạ?" |
| `collect_contact` | Xin thong tin nhan hang | **chi inbox**, sau `confirm_item` | `receiver_name`, `phone`, `address` | "Anh/chị cho em xin tên người nhận, số điện thoại và địa chỉ giao hàng ạ." |
| `confirm_order` | Tom tat don, tong tien, cach thanh toan | da du thong tin nhan hang | `payment_method` | "Em tóm tắt đơn: {summary}. Tổng {total}. Anh/chị xác nhận để em lên đơn ạ?" |

**Quy tac cung**
- Ten mau, size, hoi gia, hoi con hang = *dang tim hieu*, khong phai mua (`not_buy_signals`). Bot gui anh / mo ta roi hoi co muon lay khong.
- Xin ten/SDT/dia chi **chi** trong inbox, sau khi khach noi ro muon mua. Binh luan cong khai khong bao gio.
- Moi tin chi 1 cau hoi.
- `{total}`, `{summary}` do tool POS dien; khong viet so tien cung.

**Quy tac dung (`stop_rule`)**: khach tu choi hai lan thi cam on va de ngo, khong nhac lai uu dai.

**Mem hon (`soft_lines`)**: "Anh/chị muốn em gửi thêm ảnh thật của mẫu này không ạ?"

## 6. Thuong luong gia

`price_policy.bargaining`: `no_discount` · `handoff` (mac dinh an toan) · `approved_rules` (chi khi chu shop cho **quy tac bang van ban** co `approved_by` va han). Khong co quy tac duyet → chuyen nhan vien (`custom_quote`), khong tu giam.

## 7. Hau mai va nhac lai

Giai doan `post_sale`/`support`: tra cuu don, phan nan → `handoff` voi `complaint`/`refund_return`. Nhac lai ngoai cua so 24 gio cua nen tang: chi do nhan vien lam (`staff_only`). Giu chan / win-back: xem `69-giu-chan-khach-hang`; skill nay (v1.0) chua co khoi `follow_up` rieng.
