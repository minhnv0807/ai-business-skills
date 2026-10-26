# Do Luong Hien Dien AI

> Reference cua skill `32-seo-growth`, muc 4. Doc khi client hoi "ChatGPT / Perplexity / Gemini / AI Overview co nhac toi minh khong, va noi dung co dung khong?"
> Quy tac van hanh: `skills/vi/references/quy-tac-van-hanh.md` (dac biet quy tac 3, 5). Gan nhan `observed` / `reported` / `inferred` cho moi nhan dinh.

Phien ban EN day du hon: `skills/en/32-seo-growth-global/references/ai-visibility-measurement.md`.

## Nguyen tac

Cau tra loi cua AI doi theo lan chay, tai khoan, vi tri va phien ban model. Mot lan thu gan nhu khong chung minh gi. Thu duoc la **mot mau lap lai**: cung prompt, cung cach viet, cung nhip, cung cach ghi. Bao cao la xu huong tren mau, khong bao gio la "thu hang".

## 1. Danh muc prompt (20-50 cau)

- Viet nhu nguoi mua go, khong theo ngon ngu quang cao. Rai deu tren funnel: van de (TOFU), chon giai phap va so sanh (MOFU), quyet dinh "co dang mua khong / gia / review" (BOFU), local ("[dich vu] o [khu vuc]").
- Them vai chuoi hoi nhieu luot: bat dau rong, roi them ngan sach, tinh nang, "vay chon cai nao".
- Them nhom prompt ve chinh thuong hieu ("[thuong hieu] gia bao nhieu", "[thuong hieu] co gioi han gi") de audit do chinh xac.
- Giu danh sach co phien ban. Doi cach viet la doi bai thu: bo prompt cu, ghi ngay.
- Chay tren 3-4 tro ly (vi du ChatGPT, Perplexity, Gemini, Google AI Overview), chon cai khach hang cua ban that su dung. Hoi khach.
- Nhip co dinh (vi du 2 tuan hoac moi thang), chay mot lan, tai khoan sach, cung vi tri. Lap moi prompt nhieu lan vi cau tra loi khong co dinh.

### Ghi chu cho thi truong VN

- **Viet prompt bang tieng Viet** (co dau va khong dau, noi dung hoi nhu khach that: "spa nao tot o quan ... gia bao nhieu"). Them ca vai prompt tieng Anh neu khach nuoc ngoai la nhom muc tieu.
- Cung mot cau hoi viet co dau va khong dau co the ra ket qua khac nhau: thu ca hai.
- **Coc Coc va cac tro ly AI trong he sinh thai Zalo chua nam trong pham vi huong dan nay.** Khong co du lieu da kiem de bao dam chung co hoac khong co tinh nang tra loi AI trich nguon, nen kiem tra truc tiep truoc khi hua voi client (`unknown`).
- Nganh local: doi chieu ten, dia chi, SDT voi Google Business Profile, vi nhieu cau tra loi local lay tu Maps va trang niem yet.

## 2. Cot audit moi cau tra loi

Moi dong = 1 prompt x 1 tro ly x 1 lan chay.

| Cot | Gia tri | Nhan |
|-----|---------|------|
| Ma prompt + ngay chay | text | `observed` |
| Tro ly + che do (co search hay khong) | text | `observed` |
| Co nhac ten? | co / khong | `observed` |
| Co trich dan / link? | co (domain minh) / co (trang ben thu ba ve minh) / khong | `observed` |
| Su that dung khong? | dung / sai / mot phan / khong neu | `observed`, doi chieu voi bang su that |
| Doi thu nao duoc nhac | danh sach | `observed` |
| Sac thai quanh cho nhac | tich cuc / trung tinh / de dat / tieu cuc | `inferred` (ghi cum tu quyet dinh) |
| URL nguon hien ra | danh sach | `observed` |

**Bang su that:** truoc lan chay dau, viet cac su that dung (ten san pham, bao gom gi, gioi han, gia hien tai kem ngay va link trang gia). Muc nao thieu thi ghi `unknown`, khong doan. Prompt khong chay duoc tren mot tro ly = `unknown`, khong phai `fail`.

## 3. Chi so

| Chi so | Dinh nghia |
|--------|-----------|
| Ti le nhac ten | So cau tra loi trong mau nhac ten thuong hieu / tong mau (kem co mau) |
| Ti le trich dan | So cau tra loi link toi domain cua ban / tong mau |
| Trich dan ben thu ba | Cau tra loi dan trang ve ban tren domain khac |
| So loi sai thong tin | Cau tra loi co phat bieu sai ve ban, kem loai loi |
| Pha tron sac thai | Dem theo tich cuc / trung tinh / de dat / tieu cuc |

Benchmark: `[CAN SO LIEU THAT]`. Lap baseline tu lan chay dau roi so voi chinh minh. Truoc khi doi dau tu noi dung vi mot con so nhuc nhich, kiem tra: lap lai co giu khong, co o hon mot tro ly khong, co con o lan chay ke tiep khong.

## 4. Traffic gioi thieu tu AI

1. GA4 Admin: tao **custom channel group**, them kenh (vi du "AI assistants") co dieu kien source khop regex cac domain referrer.
2. Danh sach bat dau: `chatgpt.com`, `perplexity.ai`, `gemini.google.com`, `copilot.microsoft.com` va cac domain khac thay trong bao cao cua chinh ban. **Kiem tra lai danh sach referrer vao ngay lap ke hoach.**
3. Dat kenh nay tren quy tac "Referral" mac dinh de khong bi nuot.
4. Ghi chu ngay tao channel group trong bao cao; so cung khoang thoi gian.
5. Xem landing page cua kenh nay: nguoi tu AI vao trang nao, co dung trang ban muon duoc trich?

**Traffic toi (dark):** nhieu luot vao tu AI khong co referrer va roi vao "Direct", nen channel group luon thap hon thuc te (`unknown`). Ket hop truong **"Ban biet toi chung toi qua dau?"** tren form / checkout, co lua chon "tro ly AI" va o tu do (du lieu `reported`). Theo doi xu huong tim kiem thuong hieu va Direct sau moi thay doi la suy luan (`inferred`), khong phai bang chung.

## 5. Kiem tra log crawler

- Lay log server / CDN, loc theo user-agent token tren trang bot chinh thuc cua tung hang. **Lay token hien hanh tu trang cua hang vao ngay lap ke hoach, khong chep tu tri nho.**
- Voi bot muon cho phep: co lay trang tien va trang muon duoc trich khong? Ma tra ve la gi (200 hay 403 / 404 / 429 / 5xx)?
- Cho phep trong robots.txt ma bi 403 hay trang thach thuc thuong la quy tac CDN/WAF (xem muc 4.3 cua skill).
- Kiem tra chinh robots.txt tra ve 200 va doc duoc. Mot so luot lay do nguoi dung kich hoat (ChatGPT-User) co the khong theo robots.txt; khong coi do la tin hieu vao ket qua tim kiem.
- Quyet dinh quan trong: doi chieu IP voi dai IP hang cong bo, vi user-agent co the bi gia.

## 6. Vong sua loi

Chay -> thay cau tra loi sai / thieu -> tim nguon cau tra loi dung -> sua nguon (trang cua ban, su that entity, hoac trang ben thu ba) -> ghi thay doi + ngay -> chay lai sau N tuan -> so sanh.

- N tuy toc do nguon cap nhat; chon cung client va ghi ra. Trang ben thu ba thuong lau hon trang cua ban.
- Giu ten, mo ta, su that nhat quan tren website, schema, danh ba va mang xa hoi. Viet su that ro trong mot doan tu du nghia, co ngay cap nhat.
- Loi con sau 2 lan chay lai thanh ticket co nguoi phu trach.
- Khong hua ngay AI se doi cau tra loi: ban kiem soat nguon, khong kiem soat model.

## 7. Khong do duoc (ghi vao moi bao cao)

- Luong truy van that va so lan ban duoc hien.
- Thu hang on dinh. Noi "xuat hien X tren N cau tra loi trong mau".
- Ca nhan hoa: cau tra loi khac nhau theo nguoi dung, lich su, vi tri, phien ban model.
- Traffic toi. Channel group la san, khong phai tong.
- Quan he nhan qua giua thay doi trich dan va tim kiem thuong hieu: chi la `inferred`.
- Tro ly khong hien nguon: cot "trich dan" la `unknown`, khong phai "khong".
- Tool theo doi prompt cung chi lay mau: hoi prompt nao, lap may lan, vi tri nao truoc khi tin diem.
