---
name: 68-cro-audit-trang
description: "Chan doan be mat chuyen doi DANG CHAY nhung khong ra don — phan loai 3 truc (loai trang, muc tieu chuyen doi, nguon traffic), chan doan 7 chieu theo dung thu tu tac dong, output 4 nhom sua trong do co ban thay the cho copy, kem che do hoi quy khi sua xong lai kem hon truoc. Kich hoat khi user nhac 'trang khong ra don', 'toi uu chuyen doi', 'CRO', 'landing page khong convert', 'tang ti le chuyen doi', 'sua xong lai kem hon', 'khach vao nhieu ma khong inbox'. Khong dung cho — xay trang moi tu dau thi dung skill 12-brief-landing-page; nghi ngo ads chu khong phai trang thi dung skill 21-audit-ads-performance; muon kiem chung gia thuyet bang so thi dung skill 19-ab-test-setup."
metadata:
  version: 1.0.0
  category: performance
license: MIT
triggers:
  - "trang khong ra don"
  - "landing page khong convert"
  - "toi uu chuyen doi"
  - "CRO"
  - "tang ti le chuyen doi"
  - "khach vao nhieu ma khong inbox"
  - "sua xong lai kem hon"
  - "audit trang ban hang"
  - "form khong ai dien"
  - "popup"
output: "File .md — phan loai 3 truc, chan doan 7 chieu theo thu tu tac dong, 4 nhom de xuat (Sua ngay / Thay doi lon / Y tuong test / Ban thay the cho copy), phu luc popup va che do hoi quy"
related:
  - 12-brief-landing-page
  - 19-ab-test-setup
  - 53-tracking-setup
  - 21-audit-ads-performance
  - 09-insight-khach-hang
  - 35-brand-voice
---

# CRO Audit Trang — Chan Doan Be Mat Chuyen Doi Dang Chay

> Skill nay khong xay trang moi. No chan doan be mat chuyen doi dang chay nhung khong ra ket qua, theo dung thu tu tac dong, roi giao ban sua co the dan vao duoc ngay.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Be mat nao dang kem?** Trang web / luong inbox Zalo - Messenger / listing Shopee - TikTok Shop / form dat lich? Gui link hoac anh chup man hinh tren dien thoai (khong phai anh chup man hinh may tinh).
2. **Muc tieu chuyen doi la gi va so hien tai vs so muon dat?** Bao nhieu nguoi vao, bao nhieu ra ket qua, trong bao lau?
3. **Traffic den tu dau?** Ads Meta / TikTok / Google, seeding, organic, KOC, email, Zalo OA? Gui kem noi dung quang cao hoac bai dang dang dan vao be mat nay.
4. **Da sua gi roi va sua xong ket qua thay doi the nao?** Neu tra loi la "sua xong lai kem hon" thi chuyen thang sang che do hoi quy (Buoc 6).

## Nguyen tac

1. **Thu tu la phuong phap.** 7 chieu chan doan chay theo dung thu tu tac dong. Dung sua mau nut khi gia tri de xuat con mo ho — sua tang duoi khi tang tren con sai chi lam mat thoi gian va lam nhieu du lieu test.
2. **Be mat chuyen doi o VN thuong khong phai trang web.** Chuoi "click → inbox → dat lich" la be mat hang nhat, khong phai truong hop phu. Neu khach hang khong co website, skill nay van chay day du.
3. **Khong tin so truoc khi tracking verify.** Chay `53-tracking-setup` truoc. Neu so dau vao sai, moi ket luan CRO deu sai theo.
4. **Chan doan la gia thuyet, khong phai su that.** Moi nhan dinh phai ghi kem: bang chung nao dang co, va can bang chung nao de xac nhan.
5. **Giao ban thay the, khong giao loi phe binh.** "Headline yeu" khong phai output. Output la 2-3 headline viet san kem ly do.
6. **Nguon traffic quyet dinh viec kiem tra do khop thong diep.** Mot trang tot voi organic co the te voi paid neu quang cao hua mot dang, trang noi mot neo.
7. **Toc do tai tren 4G la chieu danh gia cap cao.** Khong phai ghi chu ky thuat cuoi bai. Test tren dien thoai that, mang 4G that — khong test bang wifi van phong.

## Quy trinh

### Buoc 1 — Phan loai 3 truc

**Truc 1 — Loai be mat** (quyet dinh cau truc ky vong):

| Loai be mat | Ky vong cot loi | Sai lam pho bien |
|-------------|-----------------|------------------|
| Trang chu | Dinh vi ro cho nguoi la + duong ngan nhat toi hanh dong pho bien nhat | Nhoi moi thu, khong co duong chinh |
| Landing page chien dich | Mot muc tieu, mot CTA, lap luan tron ven trong 1 trang | Giu nguyen menu dieu huong → khach di lac |
| Trang gia / bang goi | So sanh goi ro, chi ro goi nen chon | De khach tu tinh, tu doan |
| Luong inbox Zalo / Messenger | Tra loi nhanh, hoi dung 2-3 cau, chot lich | Tra loi cham, hoi qua nhieu, khong chot |
| Listing Shopee / TikTok Shop | 3 anh dau + 5 dong mo ta dau da du quyet dinh | Copy mo ta tu nha cung cap |
| Form dat lich | Duoi 3 truong, xong trong 1 man hinh | Bat khai qua nhieu, khong noi dieu gi xay ra sau khi bam |

**Truc 2 — Muc tieu chuyen doi:** dat lich / nhan tin / mua ngay / de lai so / tai tai lieu / goi dien. Ghi ro **mot** muc tieu chinh. Neu be mat dang phuc vu 2 muc tieu ngang nhau, do da la mot phat hien.

**Truc 3 — Nguon traffic (truc quyet dinh viec kiem tra do khop thong diep):**

| Nguon | Khach den voi tam the gi | Phai kiem tra |
|-------|--------------------------|---------------|
| Paid (Meta / TikTok / Google) | Bi ngat mach, chua chu dinh tim | Cau hua trong ads co xuat hien nguyen van o man hinh dau khong |
| Organic / SEO | Dang tu tim, co chu dinh | Trang co tra loi dung cau ho go vao khong |
| Seeding / KOC | Tin nguoi gioi thieu, chua tin brand | Co bang chung xac nhan lai loi nguoi gioi thieu khong |
| Email / Zalo OA | Da biet brand | Co lap lai noi dung da hua trong tin nhan khong |
| Direct / truyen mieng | Da co y dinh | Co duong tat toi hanh dong khong, hay bat doc lai tu dau |

> Neu traffic la paid va do khop thong diep gay: dung sua trang truoc. Chay `21-audit-ads-performance` — co the loi nam o ads chu khong o trang.

### Buoc 2 — Chan doan 7 chieu theo dung thu tu tac dong

Chay tuan tu. Khong nhay coc. Neu chieu 1 chua dat, ket luan o cac chieu sau khong dang tin.

**Chieu 1 — Gia tri de xuat ro chua (tac dong lon nhat)**
- Nguoi la doc man hinh dau tien co hieu day la cai gi va tai sao lien quan den ho khong?
- Loi ich chinh co cu the va khac biet, hay chi la cau ai cung noi duoc?
- Viet bang ngon ngu khach hang hay ngon ngu noi bo cong ty?
- Loi hay gap: ke tinh nang thay vi ket qua; mo ho vi so gioi han khach; noi 5 thu thay vi noi 1 thu quan trong nhat.

**Chieu 2 — Headline**
- Headline co chinh la gia tri de xuat, hay chi la ten san pham / ten chuong trinh?
- Co du cu the de co nghia khong (con so, moc thoi gian, tinh huong cu the)?
- Co khop voi cau da keo khach vao (ads / bai seeding / tu khoa) khong?

**Chieu 3 — CTA: vi tri, chu, thu bac**
- Co **mot** hanh dong chinh ro rang khong?
- CTA co nam trong man hinh dau tien tren dien thoai khong (khong phai tren may tinh)?
- Chu tren nut noi duoc gia tri hay chi noi thao tac? "Gui" / "Xem them" la yeu; "Nhan bang gia" / "Dat lich kham thu" la manh.
- Co thu bac chinh - phu ro rang, hay 4 nut cung to bang nhau?
- CTA co lap lai o cac diem quyet dinh (sau bang chung, sau xu ly phan doi) khong?

**Chieu 4 — Thu bac thi giac**
- Nguoi luot nhanh (khong doc) co nam duoc thong diep chinh khong?
- Thu quan trong nhat co noi bat nhat khong, hay dang bi anh trang tri lan at?
- Co khoang tho hay chu chen dac?
- Anh dang ho tro hay dang keo su chu y ra khoi thong diep?

**Chieu 5 — Tin hieu tin cay**
- Co bang chung gi: anh that co san, danh gia co ten va boi canh, con so ket qua, giay to phap ly, mat nguoi that?
- Bang chung co dat gan noi khach phai quyet dinh (canh CTA, sau moi loi hua) hay dan het xuong cuoi trang?
- Danh gia co cu the khong, hay chi la "san pham tot, se ung ho"? Danh gia chung chung khong tao tin cay, doi khi con lam giam.

**Chieu 6 — Xu ly phan doi**
- Bon phan doi luon co: gia / co hop voi truong hop cua toi khong / lam co phuc tap khong / neu khong hieu qua thi sao.
- Be mat co tra loi ca bon khong, o dung cho khach nghi ra chung?
- Cach tra loi: muc hoi dap, cam ket doi tra, mo ta quy trinh tung buoc, so sanh voi phuong an khac.

**Chieu 7 — Diem ma sat**
- Form bao nhieu truong? Co truong nao bat buoc ma dang le khong can khong?
- Buoc tiep theo co ro khong (bam xong thi dieu gi xay ra, bao lau co phan hoi)?
- Tren dien thoai: chu co doc duoc khong, nut co bam trung khong, co phai phong to moi doc duoc khong?
- Toc do tai tren 4G: mo bang dien thoai that, dem den luc thay noi dung chinh. Google cong bo nguong tot cho Largest Contentful Paint la duoi 2.5 giay — cham hon nhieu thi phan lon nguoi dung roi truoc khi thay gia tri de xuat, va moi phan tich o 6 chieu tren tro nen vo nghia.

### Buoc 3 — Ba dieu chinh bat buoc cho thi truong VN

**1. Be mat hang nhat la luong inbox, khong phai trang web.**
Rat nhieu SME VN khong co website hoat dong. Chuoi that la: ads → nhan tin → nhan vien tra loi → chot lich. Chan doan chuoi nay bang dung 7 chieu tren, chieu vao dung cho:

| Chieu | Ap vao luong inbox / listing |
|-------|------------------------------|
| Gia tri de xuat | Tin nhan tu dong dau tien co noi lai dung dieu ads da hua khong |
| Headline | Cau mo dau cua nhan vien — hay dang la "Da shop" roi cho khach hoi |
| CTA | Trong 3 tin dau da co mot loi de nghi cu the chua (dat lich / gui bang gia / goi lai) |
| Thu bac thi giac | Voi listing: 3 anh dau va 5 dong mo ta dau |
| Tin hieu tin cay | Anh khach that, phan hoi that, dia chi va gio lam viec |
| Xu ly phan doi | Bang gia co gui thang khong hay bat khach hoi hai lan |
| Ma sat | Thoi gian cho phan hoi; so lan khach phai lap lai thong tin |

**2. Toc do tai tren 4G la chieu danh gia cap cao.**
Phan lon khach VN vao bang dien thoai, mang di dong, o ngoai duong. Bat buoc kiem tra: mo tren dien thoai that voi 4G, khong dung wifi. Nguyen nhan hay gap: anh chua nen, video tu chay, nhung nhieu ma nguon theo doi, phong chu tai tu ben ngoai.

**3. Form uu tien so dien thoai / Zalo, toi da 3 truong.**
O VN xin **so dien thoai hoac Zalo** it ma sat hon xin email — nguoc voi gia dinh cua phan lon tai lieu nuoc ngoai. Thu tu uu tien: so dien thoai / Zalo → ten → nhu cau. Email de sau cung hoac bo han. Moi truong them vao deu tru di mot phan ti le dien — chi giu truong nao that su dung de xu ly ngay buoc sau.

### Buoc 4 — Popup

Popup la mot phan cua be mat chuyen doi, khong phai skill rieng.

**Loai kich hoat va khi nao dung:**

| Kieu kich hoat | Dung khi | Luu y |
|----------------|----------|-------|
| Theo click (khach tu bam) | Tai tai lieu, xem bang gia, dat lich | It gay kho chiu nhat, ti le cao nhat |
| Theo do cuon (25-50%) | Bai dai, blog, trang gioi thieu | Da co tin hieu quan tam |
| Theo thoi gian | Chi khi khong co tin hieu nao khac | Dat >= 30 giay, khong bao gio 5 giay |
| Exit-intent (chuot roi khoi trang) | Trang ban hang, gio hang | **Chi co tren may tinh** |
| Tren dien thoai (thay exit-intent) | Nut back, thao tac cuon nguoc len | Dien thoai khong phat hien duoc exit-intent |

**Quy tac cung:**
- Toi da **1 lan / phien**, va cho **7-30 ngay** truoc khi hien lai cho cung nguoi do.
- **Khong phu toan man hinh tren dien thoai** — Google phat cac quang cao xen ngang chiem man hinh tren thiet bi di dong. Dung dai bam duoi hoac hop giua chiem mot phan.
- Nut dong luon nhin thay, du to de bam bang ngon tay.
- Noi dung popup phai khop voi trang dang xem. Popup chung chung dat o moi trang la lang phi.
- Popup thoat phai de nghi **khac** voi de nghi da co tren trang.

**Khoang tham chieu ti le dien popup** (khoang quoc te, chua co so VN chuan hoa — dung lam diem xuat phat, doi chieu voi so cua chinh ban, khong dung lam muc tieu cam ket):

| Loai popup | Khoang tham chieu |
|------------|-------------------|
| Popup thu email dat chung | 2-5% |
| Popup thoat (exit-intent) | 3-10% |
| Popup theo click (khach tu bam) | tren 10% |

### Buoc 5 — Xep de xuat vao 4 nhom co dinh

| Nhom | Tieu chi | Cach viet |
|------|----------|-----------|
| **1. Sua ngay (Quick Win)** | Lam trong duoi 1 ngay, khong can thiet ke lai, rui ro thap | Ghi ro sua o dau, sua thanh gi |
| **2. Thay doi lon** | Can thiet ke / xay lai / doi cau truc | Ghi ro cong suc uoc tinh va ly do dang lam |
| **3. Y tuong test** | Khong chac chan — phai do bang so | Viet dang gia thuyet: "Neu doi X thanh Y thi Z tang, vi..." → day sang `19-ab-test-setup` |
| **4. Ban thay the cho copy** | **Nhom quyet dinh gia tri cua ban audit** | Voi moi phan chinh (gia tri de xuat, headline, chu tren CTA, cau mo dau tin nhan): **2-3 phuong an viet san, moi phuong an kem ly do va noi ro danh cho nguon traffic nao** |

> Nhom 4 la thu bien ban audit thanh san pham giao duoc. Mot ban audit chi co nhom 1-3 la mot ban phe binh; khach van phai tu ngoi viet lai. Doc `35-brand-voice` truoc khi viet nhom 4 de ban thay the dung giong thuong hieu.

### Buoc 6 — Che do hoi quy (khi "sua xong lai kem hon truoc")

Kich hoat khi user noi da sua roi ma so xuong. Khong chan doan lai tu dau — chan doan **cai gi da thay doi**.

Doi chieu ban truoc va ban sau theo 5 nguyen nhan, theo thu tu kiem tra:

| # | Nguyen nhan | Dau hieu | Cach xac nhan |
|---|-------------|----------|---------------|
| 1 | **Mat tin hieu tin cay** | Da bo danh gia, bo logo, bo anh that, bo dia chi khi "don cho gon" | Liet ke moi bang chung co o ban cu ma ban moi khong con |
| 2 | **Gia tri de xuat yeu di** | Doi headline theo huong "hay hon" nhung mo ho hon; bo con so cu the | Dua ban moi cho nguoi chua biet gi doc 5 giay roi hoi ho hieu gi |
| 3 | **Thu bac CTA doi** | Them nut phu ngang hang nut chinh; nut chinh bi day xuong duoi man hinh dau | Chup man hinh dien thoai ban cu va ban moi, dat canh nhau |
| 4 | **Them ma sat** | Them truong form, them buoc xac nhan, trang nang hon nen tai cham hon | Dem so truong va so buoc hai ban; do lai toc do tai tren 4G |
| 5 | **Dut mach thong diep tu ads sang trang** | Trang doi nhung ads giu nguyen (hoac nguoc lai) | Dat cau hua trong ads canh man hinh dau tien cua ban moi |

**Quy tac hoi quy:** neu doi nhieu thu cung luc thi khong the biet cai nao gay hai — quay ve ban cu, roi ap tung thay doi mot, hoac chay `19-ab-test-setup` de so sanh song song. Va truoc khi ket luan "kem hon", kiem tra `53-tracking-setup`: rat nhieu ca "kem hon sau khi sua" thuc chat la vo theo doi khi doi trang.

## Cau truc ket qua

Ten file: `cro-audit-[ten-be-mat]-[YYYYMMDD].md`

```markdown
# CRO Audit — [Ten be mat] — [Ngay]
Muc tieu chuyen doi: [...] | So hien tai: [...] → muc tieu: [...]

## 1. Phan loai 3 truc
| Truc | Ket qua | He qua cho viec chan doan |
Loai be mat: ... | Muc tieu: ... | Nguon traffic: ...
Do khop thong diep tu nguon traffic vao be mat: [Dat / Gay / Dut han]

## 2. Chan doan 7 chieu (theo thu tu tac dong)
| # | Chieu | Trang thai | Phat hien | Bang chung dang co | Bang chung con thieu |
| 1 | Gia tri de xuat | Dat/Yeu/Hong | | | |
... den chieu 7 (Diem ma sat, gom toc do tai tren 4G)

## 3. Ba diem VN
- Be mat inbox: [chan doan chuoi click → inbox → dat lich]
- Toc do tai tren 4G: [ket qua do tren dien thoai that]
- Form: [so truong hien tai / de xuat / truong nao bo]

## 4. Popup (neu co hoac de xuat them)
| Kieu kich hoat | Tan suat | Ban dien thoai | Trang thai |

## 5. De xuat — 4 nhom
### 5.1 Sua ngay (Quick Win)
| # | Sua o dau | Sua thanh gi | Ai lam | Han |
### 5.2 Thay doi lon
| # | Thay doi | Ly do | Cong suc | Rui ro |
### 5.3 Y tuong test
| # | Gia thuyet | Chi so quyet dinh | Chuyen sang 19-ab-test-setup |
### 5.4 Ban thay the cho copy
**Gia tri de xuat** — 3 phuong an + ly do + hop voi nguon traffic nao
**Headline** — 3 phuong an + ly do
**Chu tren CTA** — 3 phuong an + ly do
**Cau mo dau tin nhan / man hinh dau listing** — 2-3 phuong an + ly do

## 6. Hoi quy (chi dien khi da sua ma kem di)
| # | Nguyen nhan | Co xay ra khong | Bang chung | Hanh dong |

## 7. Thu tu thuc hien + dieu can verify truoc khi tin so
```

## Lien ket skill

- `12-brief-landing-page`: khi ket luan la phai xay lai chu khong phai sua — day sang skill do voi phat hien tu ban audit lam dau vao.
- `19-ab-test-setup`: moi muc trong nhom "Y tuong test" phai qua skill do de tinh co mau va thiet ke test dung chuan.
- `53-tracking-setup`: chay TRUOC khi tin bat ky con so nao trong ban audit; chay LAI sau khi doi trang de khong vo theo doi.
- `21-audit-ads-performance`: neu traffic la paid va do khop thong diep gay — loi co the o ads, khong o be mat.
- `09-insight-khach-hang`: doc truoc de biet phan doi that va ngon ngu that cua khach, dung doan.
- `35-brand-voice`: doc truoc khi viet nhom "Ban thay the cho copy" de dung giong thuong hieu.

## Checklist chat luong

- [ ] Da phan loai du 3 truc, trong do truc nguon traffic duoc dung de kiem tra do khop thong diep
- [ ] 7 chieu chay dung thu tu — khong de xuat sua CTA hay mau nut khi gia tri de xuat con mo ho
- [ ] Moi phat hien co ghi bang chung dang co va bang chung con thieu
- [ ] Da xet be mat inbox / listing, khong mac dinh la trang web
- [ ] Toc do tai duoc do tren dien thoai that voi 4G, khong phai wifi
- [ ] Form duoc kiem theo chuan VN: uu tien so dien thoai / Zalo, toi da 3 truong
- [ ] Du ca 4 nhom output — dac biet nhom 4 co 2-3 ban thay the cho MOI phan chinh, moi ban kem ly do
- [ ] Popup (neu co) duoc kiem tan suat, ban dien thoai, va khong phu toan man hinh
- [ ] Neu la ca "sua xong kem hon": chay che do hoi quy 5 nguyen nhan, khong chan doan lai tu dau
- [ ] Khong ket luan hieu qua khi tracking chua verify
