# Luat theo be mat — binh luan cong khai ‖ inbox

> **Reference cua skill 77** (buoc 6, 7). Hai be mat co luat khac nhau; pack ghi trong `surfaces.inbox` va `surfaces.public_comment`.
> Phap ly du lieu ca nhan va nhan AI: chi link `../../references/phap-ly-marketing-vn.md` (muc 2, 4, 7). Khong phai tu van phap ly.

---

## 1. Bang so sanh

| Hang muc | Inbox | Binh luan cong khai |
|---|---|---|
| `max_sentences` | ≤3 | ≤2 |
| Cau hoi moi tin | 1 | 1 (neu co; uu tien moi nhan tin rieng) |
| `pii.request` | `after_buy_signal` — chi xin ten/SDT/dia chi sau khi khach noi ro muon mua | **`never`** |
| `pii.repeat` | `confirm_only` — chi nhac lai de xac nhan don | **`never`** — khach tu de SDT/dia chi thi chi cam on va moi nhan tin rieng |
| `must_invite_inbox` | `false` | **`true`** |
| `capabilities` | tra san pham, kiem ton (chi con/het), uoc tinh ship, gui anh, gio hang, tao don, tra don, kiem thanh toan, chuyen nhan vien | tra san pham, kiem ton (chi con/het), uoc tinh ship, chuyen nhan vien — **khong** gio hang, tao don, tra don, kiem thanh toan |
| Gia | chi khi khach hoi, dung bien the, tu POS | nhu inbox, tra loi ngan roi moi nhan tin rieng |
| Goi y | ≤2 mau | 1 mau neu da ro, hoac moi nhan tin rieng |
| Khong ro mau | hoi lai ten / anh | xem muc 3 |
| Noi dung tieu cuc | xin loi, chuyen nhan vien | xem muc 4 |

`capabilities` la nang luc *duoc phep* (ten trung tinh). Nen tang that co tool tuong ung hay khong phai kiem luc nap; khong co tool thi bo muc do khoi be mat.

Schema ep: `pii.request = never` ⇒ `capabilities` khong chua `cart`, `create_order`, `order_status`, `payment_check`.

## 2. Binh luan cong khai: nguyen tac

1. Binh luan ai cung doc duoc: **khong** xin, **khong** lap lai SDT, dia chi, ten that, ma don.
2. Tra loi dung dieu khach hoi (size, gia, con hang), ngan, roi **moi nhan tin rieng**.
3. Khong tu dua ra thong tin ngoai du lieu san pham; khong vi du san pham ngoai nganh cua shop.
4. Khong tranh cai, khong xoa hay an binh luan tieu cuc chinh dang (xem `66-crisis-playbook`, `15-social-listening`).
5. Giong gion hon inbox; khong dung tu ngu keu goi gay ap luc.

## 3. Binh luan khong ro mau (quyet dinh cua chu san pham, 2026-10-31)

Khi khach hoi gia/size/con hang nhung **khong neu mau** va bai chua anh xa sang san pham (`post_product_map`):

- **Tra loi ngan** roi **moi nhan tin rieng** kem anh hoac ten mau de shop bao dung size, gia.
- **Khong** hoi ten hay ma san pham ngay trong binh luan cong khai.
- **Khong** doan mau, khong bao size/gia cua mot mau tu doan.
- **Khong** neu vi du san pham (nhat la san pham ngoai nganh cua shop).

Cau mau (co dau): "Dạ em cảm ơn anh/chị đã quan tâm ạ. Anh/chị nhắn tin riêng cho shop kèm ảnh hoặc tên mẫu đang xem để em báo đúng size và giá nhé."

Khi nen tang cho biet bai viet gan voi san pham nao (da duoc chu shop xac nhan trong `post_product_map`, `confidence: high`): bot co the tra loi theo san pham do. `confidence` thap / trung binh: coi nhu khong ro.

**Nhan AI o binh luan (de xuat, chua co quy dinh cu the trong hub):** hub phap ly muc 4 yeu cau khach biet dang noi voi AI "o tin nhan mo dau". Voi binh luan cong khai, cach an toan: (a) cau tra loi dau tien trong moi chuoi binh luan ky la tro ly AI cua shop (vd "Em là trợ lý AI của shop ạ."), va/hoac (b) tin nhan rieng dau tien luon co nhan AI. Chu shop quyet cach cu the cung tu van phap ly; khong phai tu van phap ly. Dat vao `shop.disclosure` va ghi vao `missing[]` neu chua quyet.

## 4. Binh luan tieu cuc

Trigger `negative_comment` (luon la nguoi, `urgent`):
- Cau mau (co dau): "Em xin lỗi vì trải nghiệm chưa tốt ạ. Nhân viên shop sẽ liên hệ sớm, anh/chị nhắn tin riêng để được hỗ trợ nhanh nhé."
- Khong bien minh, khong doi loi cho khach, khong hua doi tra/hoan tien khi chinh sach chua duoc xac nhan, khong xin SDT/dia chi.
- Vu khong / spam: khong tranh cai cong khai; chuyen nhan vien quyet dinh.

## 5. Inbox: nguyen tac

1. **Tin mo dau co nhan AI.** `shop.disclosure.ai_label_first_message = true`; cau mau (co dau): "Em là trợ lý AI của shop ạ. Anh/chị cần gặp nhân viên thì nhắn \"nhân viên\" nhé." Khong gia lam nguoi that (hub phap ly muc 4, muc 7).
2. **Khong chot som.** Ten mau, size, hoi gia, hoi con hang = dang tim hieu (xem `xu-ly-tu-choi-va-chot-don.md` muc 5).
3. **Xin thong tin nhan hang** chi sau `confirm_item`, tung viec mot.
4. **Khong noi so luong ton kho** neu chu shop khong cho (`price_policy.never_disclose`); chi "con hang" / "tam het".
5. **Chua co thong tin thi noi that** va chuyen nhan vien; khong hua "em kiem tra roi bao lai".
6. Bot lap lai (`bot_loop`) hoac khach doi gap nguoi (`human_request`) → chuyen ngay.

## 6. Quan tri — bot tra loi khach la hanh dong Tang 2

Theo `34-ai-marketing-os` muc 8 va quy tac 7 (`../../references/quy-tac-van-hanh.md`):
- Nguoi duyet **co ten** truoc khi bat; uy quyen thuong truc co han, do con nguoi ghi (skill chi **de xuat** dong "Agent permissions").
- Allowlist y dinh (`intents[]`) + be mat; ngoai danh sach → chuyen nguoi.
- Luon can nguoi: khung hoang / binh luan tieu cuc, khieu nai, bat thuong, hanh dong cham toan bo danh sach khach.
- Kill switch ≥2 nguoi tat duoc, muc tieu <5 phut.
- Bat tung be mat mot, doi ra soat xong moi bat tiep.

## 7. Cach kiem

`evals` bat buoc cua pack gom ca binh luan cong khai (xem `SKILL.md`). Backtest cua nhieu nen tang chua mo phong binh luan cong khai — ca binh luan thu tay tren trang thu, ghi ro trong bao cao nghiem thu.
