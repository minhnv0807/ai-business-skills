# Sample Size Tra Bang va Ngan Hang Y Tuong Test

> Reference cua skill `19-ab-test-setup`. Doc khi can biet **can bao nhieu data moi ket luan duoc**, hoac khi bi bi khong biet **test cai gi tiep theo**.
> Chuan hoa cho thi truong Viet Nam 2025–2026.

---

## Phan 1 — Bang tra sample size

SKILL.md co cong thuc `16 × p × (1-p) / MDE²`. Cong thuc dung, nhung khong ai vua chay ads vua ngoi tinh. Hai bang duoi la ket qua da tinh san cua chinh cong thuc do (muc tin cay 95%, power 80%) — tra bang thay vi tinh.

**Cach doc:** tim dong theo ti le chuyen doi hien tai, tim cot theo muc cai thien nho nhat ma ban muon phat hien duoc.

### Bang A — So conversion can co MOI BIEN THE

| Ti le chuyen doi hien tai | Muon phat hien +10% | +20% | +30% | +50% |
|--------------------------|--------------------|------|------|------|
| 1% | ~1,580 | ~400 | ~180 | ~65 |
| 2% | ~1,570 | ~390 | ~175 | ~63 |
| 3% | ~1,550 | ~390 | ~172 | ~62 |
| 5% | ~1,520 | ~380 | ~170 | ~61 |
| 10% | ~1,440 | ~360 | ~160 | ~58 |

Nhin bang nay se thay dieu it nguoi de y: **so conversion can co gan nhu khong doi theo ti le chuyen doi.** Cai quyet dinh tat ca la **muc cai thien ban muon phat hien**. Muon bat duoc thay doi nho (+10%) thi can nhieu data gap ~25 lan so voi bat thay doi lon (+50%).

### Bang B — So luot truy cap can co MOI BIEN THE

| Ti le chuyen doi hien tai | +10% | +20% | +30% | +50% |
|--------------------------|------|------|------|------|
| 1% | ~158,000 | ~39,600 | ~17,600 | ~6,300 |
| 2% | ~78,400 | ~19,600 | ~8,700 | ~3,100 |
| 3% | ~51,700 | ~12,900 | ~5,700 | ~2,100 |
| 5% | ~30,400 | ~7,600 | ~3,400 | ~1,200 |
| 10% | ~14,400 | ~3,600 | ~1,600 | ~580 |

Landing page o Viet Nam thuong roi vao khoang **2-5%** (doi chieu benchmark Google Ads conv. rate trong `references/benchmarks-vietnam.md`: trung binh 2-5%, tot 5-10%). Neu chua do bao gio, lay dong 3% de uoc luong.

### He so khi test nhieu hon 2 bien

Cang nhieu bien the, cang de co mot bien "thang gia" do ngau nhien. Bu lai bang cach nhan len:

| So bien the | Nhan sample moi bien the |
|------------|-------------------------|
| 2 (A/B) | 1x |
| 3 | 1.5x |
| 4 | 2x |
| 5 tro len | Dung lai — chia thanh nhieu vong 2-3 bien |

**Nho nhan hai lan.** Vi du: ti le chuyen doi 3%, muon phat hien +20%, test 4 bien the.
`12,900 × 2 (he so) = 25,800 luot moi bien the` → `× 4 bien the = 103,200 luot tong`.
Neu trang chi co 500 luot/ngay thi test nay can hon 200 ngay. Do khong phai test — do la doi.

### Doi chieu voi 2 nguong trong SKILL.md

SKILL.md dat nguong thuc dung **50 conversion/bien the** cho test ads tren nen tang, va **100 conversion/bien the** cho test landing page. Hai so do la san toi thieu de bat dau doc, khong phai so de ket luan chac. Bang A o tren cho biet ket luan chac can bao nhieu. Khi hai con so lech nhau: dung so nho de **quyet dinh nhanh trong vong test creative**, dung so lon de **quyet dinh mot lan roi khong sua lai** (landing page, trang gia, cau truc goi).

---

## Phan 2 — Loi thoat khi traffic qua thap

Rat nhieu SME roi vao o "khong du traffic de test". Khong test ma cu doi la lang phi thoi gian. Bon huong xu ly, uu tien tu tren xuong:

### 1. Nang muc cai thien can phat hien

Thay vi tim `+20%`, chap nhan chi bat duoc `+50%`. Sample can giam khoang 6 lan.
Danh doi: nhung cai thien vua phai se bi bo lo — chap nhan duoc, vi voi traffic thap thi mot cai thien +15% cung khong du de doi cuoc choi.

### 2. Test o cho co nhieu traffic hon

Traffic o dau pheu luon lon hon cuoi pheu. Test **hook trong ads** (do bang luot xem, hang chuc nghin) thay vi test **nut tren trang cam on** (do bang so don, vai chuc).
Nguyen tac: chon be mat co so lieu lon nhat ma van tac dong den metric can cai thien.

### 3. Gop cac trang/luong giong nhau vao 1 test

Neu co 6 landing page dung chung mot bo cuc, dung test rieng tung trang. Gop traffic ca 6 vao 1 test, ap dung ket qua cho ca loat. Sample gap 6 lan chi bang mot lan chay.
Dieu kien: cac trang phai thuc su giong nhau ve doi tuong va y dinh — gop trang ban le voi trang ban si se ra ket luan sai.

### 4. Khong test — quyet dinh bang dinh tinh

Voi traffic rat thap (<100 luot/ngay), so lieu se khong bao gio du. Doi cach lay bang chung:

- Phong van 5-8 khach da mua va 3-5 nguoi hoi ma khong mua.
- Ngoi xem 5 nguoi thao tac that tren trang/inbox, ghi lai cho ho khung lai.
- Doc lai 50 hoi thoai inbox gan nhat, dem cac cau hoi lap lai.

Nam nguoi dung that thuong chi ra van de ro hon 500 luot truy cap. Ghi ket luan vao test log giong nhu mot test — cot "Bai hoc" van phai co.

### Canh bao ve test tuan tu (chay A truoc, B sau)

Nhieu nguoi khong du traffic se chuyen sang so sanh "thang truoc vs thang nay". Cach nay bi nhieu boi mua vu, khuyen mai, thay doi thuat toan nen tang, va bien dong gia thau — nen chi dung khi khac biet **rat lon** va da loai tru duoc yeu to thoi vu. Khi bao cao, luon ghi ro day la so sanh tuan tu, khong phai A/B test.

---

## Phan 3 — Ngan hang y tuong test

Dung theo thu tu: chon be mat theo **ma tran uu tien bien test** trong SKILL.md truoc, roi moi vao day chon y tuong. Moi dong duoi la mot cap **y tuong + gia thuyet** — chep gia thuyet vao muc 1 cua output template roi bo sung so % muc tieu.

Ba dieu can nho khi lay tu ngan hang nay: chon 1 dong cho 1 vong test, viet lai gia thuyet co so cu the cua chinh ban, va doi chieu xem da tung test chua trong test log.

### 3.1 Ads creative

| Y tuong test | Gia thuyet |
|-------------|-----------|
| Hinh 0-3s: canh dang lam viec vs mat nguoi noi | Canh co chuyen dong that chan luot tot hon → thumbstop tang |
| Hook mo bang con so cu the vs cau hoi chung | Con so tao do tin ngay lap tuc → thumbstop va CTR tang |
| Co text overlay 3 giay dau vs khong co | Phan lon nguoi xem tat tieng → co overlay giu duoc y nghia → hold rate tang |
| Giong doc nguoi that vs giong AI | Giong that tao tin hon o nganh y te va lam dep → CVR tang |
| Video 15s vs 30s | Ban 15s bot ro roi o giua → ti le xem het va CTR tang |
| Quay bang dien thoai (tho) vs quay studio | Trong giong noi dung tu nhien nen it bi bo qua → CPM giam, CTR tang |
| Co nguoi cam san pham vs chi anh san pham | Co nguoi trong khung hinh tang do tin → CTR tang |
| Mo bang van de vs mo bang ket qua | Mo bang van de bat dung nguoi dang dau → CPL giam |
| Phu de tieng Viet co dau vs khong dau | Co dau de doc tren man hinh nho → hold rate tang |
| Carousel vs single image cung noi dung | Carousel buoc nguoi xem tuong tac → CTR tang, doi lai CPM cao hon |
| CTA "Nhan tu van" vs "Xem bang gia" | "Xem bang gia" loc san nguoi co ngan sach → CPL cao hon nhung ti le chot tang |
| Hien gia trong creative vs khong hien | Hien gia loc bot lead khong du ngan sach → so lead giam, chat luong lead tang |
| UGC khach hang vs KOL nho | UGC gan gui nen re hon o TOFU → CPM va CPL giam |
| Co logo trong 3 giay dau vs khong co | Logo som lam nguoi xem nhan ra la quang cao va bo → khong logo cho thumbstop cao hon |

### 3.2 Landing page

| Y tuong test | Gia thuyet |
|-------------|-----------|
| Headline noi ket qua vs noi tinh nang | Ket qua khop voi cai khach muon → CVR tang |
| Form 3 truong vs 6 truong | Moi truong them lam giam ti le dien → CVR tang nhung chat luong lead giam |
| Nut CTA dinh (sticky) tren mobile vs khong dinh | Khong phai cuon nguoc de dang ky → CVR tang |
| Video demo vs anh tinh o dau trang | Video giai thich nhanh hon → thoi gian tren trang va CVR tang |
| Nut Zalo o dau trang vs cuoi trang | Khach VN thich nhan tin truoc khi dien form → tong lead tang |
| Cong khai bang gia vs "lien he de bao gia" | Cong khai gia tao tin o B2C → CVR tang |
| Testimonial co anh + ten that vs chi text | Anh va ten that tang do tin → CVR tang |
| Chinh sach hoan tien dat canh nut CTA vs o cuoi trang | Giam so mat tien dung luc quyet dinh → CVR tang |
| Trang dai day du vs trang ngan 1 man hinh | San pham gia cao can nhieu thong tin hon → trang dai cho CVR cao hon |
| Bat san khung chat vs de khach tu mo | Bat san giam ma sat hoi dap → so lead tang, chat luong lead giam |
| FAQ mo san vs thu gon | Mo san xu ly phan doi truoc khi khach roi trang → CVR tang |
| Anh truoc-sau vs anh san pham | Truoc-sau chung minh ket qua → CVR tang manh o nganh lam dep |
| Dem nguoc thoi gian uu dai vs khong co | Tao suc ep quyet dinh → CVR ngan han tang, nhung mat tac dung neu lap lai moi tuan |
| Trang toi uu toc do duoi 2s vs trang hien tai | Moi giay tai them lam mat khach mobile → CVR tang |

### 3.3 Trang gia

| Y tuong test | Gia thuyet |
|-------------|-----------|
| 3 goi vs 2 goi | Goi thu 3 tao diem neo → doanh thu tren moi khach tang |
| Highlight goi giua vs khong highlight | Chi dan lam giam do phan van → ti le chon goi giua tang |
| Gia 299K vs 300K | So le duoc cam nhan re hon → CVR tang o hang pho thong |
| Hien gia theo thang vs theo nam | Gia thang nho hon nen bot soc → CVR tang nhung gia tri vong doi giam |
| Co gach gia cu vs khong co | Gia cu lam diem neo → ti le mua tang |
| Bang so sanh tinh nang vs danh sach gach dau dong | Bang de doi chieu nhanh → thoi gian quyet dinh giam, CVR tang |
| Goi cao nhat de "lien he" vs hien gia | Hien gia lam mot so khach tu loai, doi lai tang do tin cho ca trang |
| Them mot goi cao lam neo vs bo di | Goi neo lam goi muc tieu trong re hon → doanh thu tren moi khach tang |
| Tra gop 0% hien canh gia vs chi hien o buoc thanh toan | Hien som lam gia cam nhan nho di → CVR tang |
| Ten goi theo doi tuong (Ca nhan / Cua hang / Chuoi) vs Basic-Pro-Premium | Ten theo doi tuong giup khach tu chon dung → ti le chon sai goi giam |

### 3.4 Luong inbox Zalo / Messenger

| Y tuong test | Gia thuyet |
|-------------|-----------|
| Tra loi tu dong ngay vs cho nguoi tra loi | Tra loi trong 1 phut giu duoc khach → ti le vao hoi thoai tang |
| Hoi nhu cau truoc vs bao gia truoc | Hoi nhu cau truoc giup tu van dung → ti le dat lich tang |
| Bao gia ngay o tin nhan dau vs hen goi lai | Bao gia ngay loc nhanh → so lead giam, ti le chot tang |
| Gui bang gia dang anh vs dang text | Anh de luu va chia se lai → ti le phan hoi tang |
| Nut tra loi nhanh vs de khach tu go | Bam de hon go → ti le tra loi tin dau tang |
| Xin so dien thoai o tin thu 2 vs tin thu 5 | Xin som giam ro ri giua chung, nhung co the lam khach de dat |
| Chao kem ten khach vs chao chung | Ca nhan hoa that tang thien cam → ti le tra loi tang |
| Moi tin 1 cau hoi vs hoi nhieu cau cung luc | 1 cau de tra loi → ti le hoan thanh phan hoi nhu cau tang |
| Nhac lai sau 24h vs sau 3 ngay | Nhac khi khach con nho → ti le quay lai hoi thoai tang |
| Chot bang "dat lich" vs "mua ngay" | Dat lich la buoc nho hon → ti le sang buoc tiep tang |
| Gui video ngan gioi thieu vs gui doan mo ta | Video giam thoi gian giai thich → ti le dat lich tang |
| Gui link thanh toan truc tiep vs chuyen khoan thu cong | It thao tac hon → ti le hoan tat don tang |

### 3.5 Email

| Y tuong test | Gia thuyet |
|-------------|-----------|
| Tieu de co ten nguoi nhan vs khong co | Ca nhan hoa tang do lien quan → open rate tang |
| Tieu de dat cau hoi vs cau khang dinh | Cau hoi tao khoang trong to mo → open rate tang |
| Gui 9h sang vs 20h toi | Gio hanh chinh hop B2B, buoi toi hop B2C → open rate lech theo tep |
| Ten nguoi gui la ca nhan vs ten thuong hieu | Ten ca nhan giong thu that → open rate tang |
| Email chi text vs email co thiet ke | Chi text it vao spam hon → ti le vao hop thu chinh va CTR tang |
| 1 CTA vs nhieu CTA | 1 CTA giam phan van → CTR tang |
| Email duoi 120 tu vs email dai | Ngan doc het duoc tren dien thoai → CTR tang |
| Chuoi 3 email vs 1 email | Nhac lai bat duoc nguoi bo lo lan dau → tong chuyen doi tang |
| Preheader viet rieng vs de he thong tu lay | Preheader rieng bo tro tieu de → open rate tang |
| Gui lai cho nguoi chua mo voi tieu de khac vs khong gui lai | Tieu de khac bat duoc nhom bo lo → tong open tang |

### 3.6 Listing Shopee / TikTok Shop

| Y tuong test | Gia thuyet |
|-------------|-----------|
| Anh bia co chu (trong gioi han quy dinh san) vs anh bia trong | Chu neu loi ich chinh → ti le bam vao san pham tang |
| Anh bia nen trang vs nen theo boi canh su dung | Boi canh giup hinh dung → ti le bam tang |
| Ten san pham dat tu khoa dau vs dat thuong hieu dau | Tu khoa dau khop tim kiem → luot hien thi tang |
| Co video san pham trong listing vs khong co | Video giam nghi ngo → ti le chuyen doi tang |
| 5 anh vs 9 anh | Nhieu goc nhin giam thac mac → ti le chuyen doi tang |
| Mo ta co bang thong so vs doan van dai | Bang de quet nhanh → ti le chuyen doi tang |
| Hien freeship ngay o thoi gian dat vs khong hien | Phi ship la ly do bo gio hang hang dau → ti le hoan tat don tang |
| Ban combo 2 san pham vs ban le | Combo tang gia tri don → doanh thu tren moi khach tang |
| Gia le 199K vs gia tron 200K | So le cam nhan re hon → ti le chuyen doi tang |
| Hien so da ban vs an di | Bang chung xa hoi giam do du → ti le chuyen doi tang |
| Tra loi het danh gia 1-3 sao vs khong tra loi | Co nguoi chiu trach nhiem lam giam lo ngai → ti le chuyen doi tang |
| Livestream khung 20-22h vs khung trua | Khung toi co nhieu nguoi ranh hon → luot xem va don tang |

---

## Truoc khi chay bat ky test nao trong ngan hang

- [ ] Da tra Bang A/B va biet can bao nhieu conversion, bao nhieu ngay.
- [ ] Neu con so ra qua lon, da chon 1 trong 4 loi thoat o Phan 2 — khong chay test biet truoc la khong ket luan duoc.
- [ ] Da viet lai gia thuyet co so % cu the cua chinh minh, khong dung nguyen cau mau.
- [ ] Da doi chieu test log: y tuong nay da tung test chua.
- [ ] Neu test hook video: nho rang hook va on-ramp la mot cap — xem `references/hook-formulas-vn.md`.
