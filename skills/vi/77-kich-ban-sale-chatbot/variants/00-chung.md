# Goi chung — dung cho moi shop (va cho nganh chua co goi rieng)

> **Doc truoc moi goi nganh.** Goi nay la khung chung cua skill 77. Goi nganh (`01-…`, `02-…`, `03-…`) chi them phan dac thu va ghi de phan nay khi co du lieu that cua shop.
> **Nhan bang chung:** noi dung o day la `practitioner/heuristic` — hoi thoai that cua shop (buoc 4) luon thang.
> **Quy tac:** khong vi du nganh trong file nay. Vi du nganh chi nam trong goi nganh tuong ung. Cho can dien, dung cho giu cho `{product}`, `{variant}`, `{price}`.
> `industry.pack` = `generic` khi shop chua co goi rieng.

---

## 1. Khi nao dung

- Shop chua co goi nganh trong `variants/` (dung `generic`, ghi `industry.also` neu ban nhieu nganh).
- Luon dung lam nen: goi nganh chi ghi de, khong thay the.
- **Khong dung** thay cho tai lieu ban hang cua nguoi ban that (xem skill `71-sales-enablement`).

## 2. Cau hoi dac thu (hoi toi da 4 cau mot luc)

Neu chua co goi nganh, hoi chu shop dung 3 cau nay de dung bang thuoc tinh san pham:

1. "Truoc khi mua, khach hay hoi nhung gi ve san pham? Ke 5 cau nguyen van khach go."
2. "Co thong tin nao sai mot lan la phai doi tra hoac mat khach (kich thuoc, tuong thich, thanh phan, thoi gian lam…)?"
3. "Cai gi shop khong muon bot noi hoac lam?"

Cach go cua khach (lay tu hoi thoai that, ghi vao `intents[].utterances`): luon ghi **ca dang co dau va dang khong dau** (`text` + `ascii`).

## 3. Bang thuoc tinh san pham bat buoc (khung)

| Khoa (`facts[].key`) | Hoi chu shop the nao | Lay tu dau | Bang chung toi thieu |
|---|---|---|---|
| `product_name` | "Ten goi khach hay dung cho mau nay la gi?" | POS / hoi thoai | observed |
| `variant_naming` | "Khach goi cac bien the (size, mau, loai) bang tu gi?" | hoi thoai / chu shop | reported (danh sach bien the that lay tu POS luc chay, **khong** ghi vao pack) |
| `key_spec` | "Thong so quan trong nhat khach can biet truoc khi mua?" | chu shop | reported |
| `use_case` | "Dung de lam gi, danh cho ai?" | chu shop / mo ta | reported |
| `not_for` | "Truong hop nao KHONG nen mua?" | chu shop | reported |
| `care_or_usage` | "Cach dung / bao quan?" | chu shop | reported |
| `proof` | "Giay to hoac bang chung cho moi claim?" | chu shop | reported + tep dinh kem |

Quy tac: thieu khoa → `missing_facts`, khong dien bua. Fact `inferred` khong bao gio duoc bot noi voi khach.

## 4. Tu choi thuong gap (khung) va huong xu ly

| Nhom | Nguoi mua lo gi that su | Huong (khung 5 buoc o `../references/xu-ly-tu-choi-va-chot-don.md`) |
|---|---|---|
| Gia | chua thay khac biet / vuot ngan sach | hoi dang so voi gi, gui anh that, goi y phuong an nho hon; khong giam gia ngay |
| Tin cay | so mua nham / hang kem | bang chung that (anh/video shop chup, chinh sach da xac nhan); khong the |
| Giao nhan | so cham / hu hong | chi noi chinh sach da xac nhan; chua co → chuyen nhan vien |
| Do/tuong thich | so khong vua | hoi so do/nhu cau, khong doan; chua co du lieu → nhan vien |
| Hoan lai | "de xem them", "hoi nguoi nha" | ton trong, de ngo, khong ep, khong khan hiem gia |

## 5. Ranh gioi phap ly / rui ro

- Du lieu ca nhan, nhan AI cho chatbot, lan ranh do: **chi link** `../../references/phap-ly-marketing-vn.md` (muc 2, 4, 7). Khong chep dieu luat, khong ghi muc phat.
- Nhom nganh dac biet (y te, thuc pham chuc nang, tai chinh, bat dong san): xem Gate 6 trong `../../references/quality-gates-vn.md` va dung handoff-first.
- Khong phai tu van phap ly.

## 6. Luat rieng binh luan cong khai ‖ inbox

| | Inbox | Binh luan cong khai |
|---|---|---|
| Do dai (khong tinh nhan AI) | ≤3 cau, 1 cau hoi/tin | ≤2 cau |
| Nhan AI | tin dau tien cua bot | cau tra loi dau tien cua bot trong moi chuoi binh luan |
| Xin thong tin ca nhan | chi sau khi khach noi ro muon mua | **khong bao gio**; khach tu de lai thi chi cam on, moi nhan tin rieng, khong lap lai |
| Gia | chi khi khach hoi, dung bien the, lay tu POS | nhu inbox, tra loi ngan roi moi nhan tin rieng |
| Khong ro mau | hoi lai ten/anh mau | **khong doan mau, khong hoi ten/ma cong khai**; tra loi ngan, moi nhan tin rieng kem anh hoac ten mau |
| Gio hang/dat don | duoc (neu co tool) | **khong** |
| Binh luan tieu cuc | — | xin loi ngan, moi nhan tin rieng, **chuyen nhan vien**, khong tranh cai, khong xoa |

Chi tiet va cau mau: `../references/luat-theo-be-mat.md`.

## 7. Trigger chuyen nguoi (bat buoc toi thieu)

`human_request` · `complaint` · `refund_return` · `negative_comment` · `incident_safety` · `abuse` · `payment_issue` → luon la nguoi (`autonomy.always_human`). Moi trigger o day phai co mot muc trong `handoff[]` cua pack (ca `refund_return`, `incident_safety`, `abuse`, `payment_issue`). Them tuy shop: `custom_quote`, `wholesale`, `missing_info`, `bot_loop`.

## 8. `bot_profile` mac dinh (heuristic, chua do)

`tool_use: medium` · `vision: none` · `context: short` · `reasoning: medium` · `tier_hint: standard` · `basis: heuristic` · `verify_with: backtest`. Ly do: trung tinh cho den khi co goi nganh. Khong ghi ten model.

## 9. Ca nghiem thu chung

1. **Tin mo dau co nhan AI.** Khach: "Chào shop". Ky vong: noi ro la tro ly AI, cho cach goi nhan vien. Khong: gia nguoi that.
2. **Khach nhac ten mau, chua mua.** Khach: `{ten mau}`. Ky vong: gui anh/mo ta, hoi co muon lay khong. Khong: gio hang, xin ten/SDT, neu gia khi chua hoi.
3. **Binh luan khong ro mau.** Khach: "Cho mình xin giá nhé". Ky vong: tra loi ngan, moi nhan tin rieng kem anh/ten mau. Khong: doan mau, hoi ten/ma cong khai, xin SDT.
