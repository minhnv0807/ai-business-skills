# Chan doan lech so lieu tracking

> Dung khi so conversion lech giua platform (Meta / Google / TikTok), GA4 va backend. Muc tieu: phan loai lech la **binh thuong**, **can dieu tra** hay **can sua** — truoc khi doi budget hay sua tag.
> Quy tac van hanh chung: `skills/vi/references/quy-tac-van-hanh.md` (quy tac 3 nhan bang chung, quy tac 7 nhap truoc ghi sau). Phap ly du lieu ca nhan: `skills/vi/references/phap-ly-marketing-vn.md` muc 2.

Nguyen tac: khong co nguong % chung cho moi du an. Moi dai so ben duoi la **heuristic** — tu dieu chinh theo lich su du an va ghi ro trong bien ban.

---

## 1. Thu tu triage

1. **Chot nguon su that (source of truth).** Don hang = backend / he thong don. Lead = CRM / Lead Log. Platform va GA4 chi la so tham chieu, khong phai so de chot doanh thu.
2. **Doi chieu cung dieu kien:** cung khoang ngay, cung mui gio (timezone tai khoan ads vs GA4 vs backend), cung tien te, cung cua so attribution. Khong doi chieu 2 so khac dieu kien.
3. **Phan loai lech** theo bang muc 3. Ghi nhan bang chung cho tung ket luan (muc 7).
4. Chi sau khi phan loai moi quyet dinh: bo qua / dieu tra tiep / sua. Moi viec sua tag, pixel, CAPI dang chay di theo quy tac 7 (soan khoi de xuat, nguoi duyet co ten, doc lai, ghi log).

## 2. Nguyen nhan lech "ky vong" (thuong khong phai loi)

| Nguyen nhan | Y nghia |
|---|---|
| Cua so attribution khac nhau | Platform tinh theo cua so click/view cua minh; GA4 theo mo hinh rieng. Cung 1 don co the duoc nhieu ben nhan |
| Click vs view-through | Platform co the tinh ca luot xem; GA4 / backend thuong khong |
| Conversion duoc mo hinh hoa (modelled) | Mot phan conversion do platform uoc luong khi thieu dong y / tin hieu; khong doi chieu tung don duoc |
| Mui gio / tien te | Tai khoan ads, GA4, backend dat khac mui gio hoac tien te → don roi sang ngay khac |
| Session vs user | GA4 dem theo session hoac user; platform dem theo su kien — don vi khac nhau |
| Ad-blocker / tu choi dong y | Pixel client-side mat event; so backend luon cao hon so pixel o muc nao do |
| Cross-device | Click tren dien thoai, mua tren may tinh: platform co the noi duoc, GA4 co the khong |

Lech do cac nguyen nhan tren la **binh thuong** neu on dinh theo thoi gian va giai thich duoc. Lech dot ngot hoac doi chieu cung dieu kien van lech xa → sang muc 3-5.

## 3. Bang phan loai (verdict)

Cot: Trieu chung | Nguyen nhan co the | Cach xac nhan | Ket luan.

| Trieu chung | Nguyen nhan co the | Cach xac nhan | Ket luan |
|---|---|---|---|
| Platform bao nhieu hon GA4, chenh on dinh nhieu ngay | Cua so attribution, view-through, modelled | Dat 2 ben cung cua so; xem breakdown click vs view | binh thuong |
| GA4 / platform thap hon backend, on dinh | Ad-blocker, tu choi dong y, don offline khong qua pixel | So voi ty le khach tu choi banner; doi chieu don khong co UTM / click id | binh thuong (neu giai thich duoc) — dieu tra neu ngay cang xa |
| Platform bao CAO HON han so don that (vuot backend) | Double-sender, thank-you page fire lai | Dem event theo `order_id` / `event_id` (muc 4, 5) | sua |
| Lech tang dot ngot sau 1 lan release web / doi plugin / doi GTM | Tag bi go, trigger doi, them 1 nguon gui moi | So sanh ngay truoc / sau release; Pixel Helper, GTM preview, Events Manager | dieu tra → thuong dan den sua |
| Lech chi o 1 platform, platform khac van khop | Event / trigger rieng cua platform do hong | Test mot don that tren platform do, truy theo ID | dieu tra |
| Don trong backend khong co UTM / click id (ti le tang) | Mat UTM giua redirect, form, checkout; consent chan tag | Truy 1 so don mau: URL landing → form → don | dieu tra |
| Lead trong Lead Log nhieu hon lead platform bao | Lead qua inbox / goi / Zalo khong qua pixel | Phan loai lead theo kenh; ap dung muc 6 | binh thuong neu da la offline lead; dieu tra neu lead web khong ve |
| So lead / don bang 0 mot thoi gian | Pixel khong fire, CAPI hong, consent chan | Events Manager 24h, Test Events + truy 1 don that | sua |

Moi moc "lech bao nhieu thi dang lo" la **heuristic**: ghi vao bien ban ben canh lich su cua du an ([CAN SO LIEU THAT] neu chua co baseline).

## 4. Kiem tra double-sender

Dau hieu: platform bao so don/lead cao hon so that, hoac Events Manager co 2 event gan nhau cho 1 hanh dong.

- **Pixel + CAPI khong chung `event_id`** → platform khong dedup duoc, dem 2 lan. Kiem tra: moi hanh dong sinh 1 `event_id`, gui giong nhau o ca pixel va CAPI; Events Manager hien trang thai dedup.
- **Tag GTM + snippet hard-code** cung ton tai tren 1 trang. Kiem tra: xem source trang va GTM preview, tim 2 lan khoi tao pixel.
- **Plugin + GTM** (vd plugin tich hop pixel cua nen tang web, ben canh container GTM). Kiem tra: tat tung nguon va xem event con lai.
- Chi giu **mot** cach cai (nguyen tac 3 cua skill). Go 1 nguon la thay doi tren tag dang chay → quy tac 7.

## 5. Thank-you-page guard

- Event Purchase / Lead chi duoc fire **1 lan cho moi `order_id`** (hoac `lead_id`).
- Cac tinh huong gay duplicate: **reload** trang cam on, **nut Back**, **bookmark** hoac chia se link thank-you, trang mo lai tu email.
- Cach chan: fire theo su kien thanh cong that (backend xac nhan) thay vi chi vi nguoi dung vao URL; luu co "da fire" theo `order_id`; **dedup phia server** — CAPI / API chi nhan 1 event cho moi `order_id`.
- Xac nhan: tu bam reload / back tren 1 don test; Events Manager khong duoc ghi them event cung `order_id`.

## 6. Luong lead (inbox / Zalo / goi)

- Lead chot qua Messenger, Zalo, dien thoai la **offline conversion**: pixel khong thay. Nguon su that la Lead Log / CRM (Buoc 4 cua skill).
- Dua len platform bang offline conversion / CAPI voi match key (SDT, email). Match key la du lieu ca nhan → can co so dong y — xem `skills/vi/references/phap-ly-marketing-vn.md` muc 2; khong upload khi chua co co so dong y.
- Dong bo ID: moi lead co `lead_id` trong Lead Log de truy nguoc khi doi chieu.

## 7. Nhan bang chung

Moi phat hien trong bien ban gan 1 nhan theo quy tac 3:

| Nhan | Vi du |
|---|---|
| `observed` | Thay 2 event cung `order_id` trong Events Manager; thay 2 lan khoi tao pixel trong source |
| `reported` | "Ben dev noi da tat plugin" — chua kiem |
| `inferred` | "Lech tang sau release → co the plugin moi them" — ghi ly do |

Thieu export / thieu quyen xem = `unknown`, khong phai `fail`. "Test Events xanh" khong phai bang chung: bang chung la 1 don / lead that truy het chuoi bang ID.

## 8. Mau — Bien ban doi soat tracking

Ten file: `bien-ban-doi-soat-tracking-[ten-du-an]-[YYYYMMDD].md`

```markdown
# Bien ban doi soat tracking — [Du an] — [ngay]
Nguoi doi soat: [ten] · Khoang ngay: [tu–den] · Mui gio / tien te: [x]
Nguon su that: [backend don / CRM lead] · Cua so attribution: [moi platform]

## 1. So lieu doi chieu (cung dieu kien)
| Chi so | Backend/CRM | GA4 | Meta | Google | TikTok | Ghi chu |
(so that tu nguon; thieu → [CAN SO LIEU THAT])

## 2. Phan loai lech
| # | Trieu chung | Nguyen nhan co the | Nhan (observed/reported/inferred) | Bang chung | Ket luan (binh thuong / dieu tra / sua) |

## 3. Double-sender & thank-you guard
- event_id dung chung pixel + CAPI: [co/khong/unknown]
- Nhieu nguon cai (GTM / hard-code / plugin): [liet ke]
- Fire 1 lan / order_id: [co/khong/unknown]

## 4. Truy 1 don / lead that end-to-end
`order_id`/`lead_id`: [x] — click → pixel/CAPI → backend/CRM: [pass/fail/unknown]

## 5. De xuat thay doi (neu co) — moi thay doi 1 khoi, cho nguoi duyet
Thay doi #: · Hien tai: · De xuat: · Ky vong: · Rollback: · Nguoi duyet:

## 6. Viec tiep theo & nguoi phu trach
```

## Checklist truoc khi giao bien ban

- [ ] Doi chieu cung ngay, mui gio, tien te, cua so attribution
- [ ] Da chot nguon su that truoc khi so sanh
- [ ] Moi ket luan co nhan observed / reported / inferred
- [ ] Moi moc phan tram duoc ghi la heuristic hoac [CAN SO LIEU THAT]
- [ ] Da kiem tra double-sender va thank-you guard
- [ ] Da truy it nhat 1 don / lead that bang ID
- [ ] Thay doi tag/pixel dang chay chi o dang de xuat cho nguoi duyet (quy tac 7)
