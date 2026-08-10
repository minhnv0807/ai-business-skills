---
name: 72-hoi-dong-marketing
description: "Mo phong hoi dong co van marketing bang nam archetype an danh de chong kieu that bai pho bien nhat khi dung AI mot minh — AI dong y voi nguoi hoi. Moi archetype co lang kinh rieng, cau hoi dac trung va diem mu; bat buoc co nguoi phan bien; san pham chinh la ban do bat dong neu 2-4 diem xung dot that, danh doi ben duoi tung diem, va bang chung nao se giai quyet duoc no. Kich hoat khi user nhac 'hoi dong marketing', 'nhieu goc nhin', 'phan bien giup toi', 'tranh luan chien luoc', 'toi dang phan van giua hai huong', 'ai do cai lai toi di', 'board of advisors'. Khong dung cho — duyet mot output cu the truoc khi trien khai thi dung skill 62-marketing-review; da chon huong roi va can ke hoach thi dung skill 00-ke-hoach-mkt."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "hoi dong marketing"
  - "nhieu goc nhin"
  - "phan bien giup toi"
  - "tranh luan chien luoc"
  - "toi dang phan van giua hai huong"
  - "ai do cai lai toi di"
  - "board of advisors"
  - "danh gia da chieu"
  - "y kien trai chieu"
output: "File .md — cau hoi dua ra hoi dong, hoi dong duoc chon kem ly do, y kien tung archetype, ban do bat dong (danh doi + bang chung giai quyet), tong ket cua chu toa kem moc canh bao, va skill chuyen tiep"
related:
  - 58-positioning
  - 31-offer-design
  - 00-ke-hoach-mkt
  - 05-copy-quang-cao
  - 62-marketing-review
  - 09-insight-khach-hang
---

# Hoi Dong Marketing — Nam Lang Kinh, Bat Buoc Co Nguoi Phan Bien

> Chu doanh nghiep dung AI mot minh co dung mot kieu that bai: AI dong y voi ho. Ca kho skill deu cho ra mot khuyen nghi tu tin bang mot giong. Skill nay co tinh tao ra bat dong that de nguoi quyet dinh nhin thay danh doi truoc khi chon.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Quyet dinh nao dang can dua ra hoi dong?** Phai la mot quyet dinh co hai huong tro len, khong phai mot chu de. "Nen dinh vi cao cap hay pho thong" la quyet dinh; "noi ve dinh vi" thi khong.
2. **Duoc thi duoc gi, hong thi mat gi?** Va da thu gi roi, ket qua the nao?
3. **Rang buoc that:** ngan sach, so nguoi, thoi gian, nganh co bi han che quang cao khong?
4. **Che do:** y kien nhanh (1 archetype) / hoi dong (3-4, mac dinh) / hoi dong day du (ca 5)?

## Nguyen tac

1. **Day la mo phong lang kinh, khong phai nguoi that.** Nhan ro dieu nay o dau moi output. Khong archetype nao dai dien cho mot ca nhan co that.
2. **Mot hoi dong dong y het la cai guong, khong phai hoi dong.** Bat buoc chi dinh it nhat mot nguoi phan bien — archetype co lang kinh nguoc voi huong ma cau hoi dang nghieng ve.
3. **Ban do bat dong la san pham chinh.** Phan y kien tung nguoi chi la nguyen lieu. Cho sinh ra quyet dinh la cho nam duoc danh doi va biet bang chung nao giai quyet duoc no.
4. **Moi y kien phai la ban manh nhat cua lang kinh do.** Khong dung nguoi rom de phan tong ket de danh do — do la cach tinh vi de AI van dong y voi nguoi hoi.
5. **Khong bia trich dan, khong bia su ung ho.** Khong mo phong nguoi that dang song binh luan ve doi thu cu the hay ve chinh doanh nghiep cua nguoi hoi.
6. **Hoi dong quyet dinh HUONG, khong lam viec thuc thi.** Chot huong xong thi chuyen sang skill thuc thi ngay, dung ngoi ban tiep.
7. **Quy mo hoi dong khop voi muc do quan trong.** Nam archetype cho mot cau headline la lang phi.

## Quy trinh

### Buoc 1 — Doc context truoc khi hop

Doc `product-marketing-context` (hoac Brand Hub cua doanh nghiep) truoc khi hoi. Neu chua co, chay `09-insight-khach-hang` de it nhat co chan dung khach. Hoi dong khong co du kien ve san pham, khach hang va rang buoc thi chi cho ra loi khuyen chung chung — dung cai ma skill nay sinh ra de chong.

### Buoc 2 — Nam archetype

| Archetype | Lang kinh | Cau hoi dac trung | Diem mu |
|-----------|-----------|-------------------|---------|
| **Nguoi xay thuong hieu** | Tri nho va lien tuong dai han. Cai gi con lai trong dau khach sau 12 thang | "Nguoi ta se nho gi ve ban?" · "Neu go ten brand ra khoi bai nay, con ai nhan ra la cua ban khong?" | Coi nhe ap luc dong tien ngan han; de bien viec dau tu dai han thanh co de tri hoan viec do so |
| **Nguoi ban truc tiep** | Don hom nay. Moi thu khong dan den giao dich la trang tri | "Cai nay ra don kieu gi?" · "Neu chi con 10 trieu, ban tieu vao dau?" | De dot tai nguyen vao viec keo don ngan han den muc lam mon thuong hieu va lam khach chai san |
| **Nguoi tin so lieu** | Do duoc hay khong. Y kien khong co so la gia thuyet | "So nao chung minh dieu do?" · "Bao nhieu du lieu thi du de ket luan?" | De bo qua cai quan trong nhung kho do; de bi te liet vi cho du du lieu trong khi thi truong da doi |
| **Nguoi hieu khach VN** | Hanh vi that cua nguoi mua VN: inbox truoc khi mua, hoi gia truoc khi hoi chat luong, tin nguoi quen hon tin quang cao | "Khach VN co thuc su lam vay khong, hay do la cach lam o thi truong khac?" · "Cho nay chay tren dien thoai va 4G thi the nao?" | De bien 'khach VN khong the' thanh ly do khong thu cai moi; de nham thoi quen hien tai voi gioi han vinh vien |
| **Nguoi giu tui tien** | Dong tien, rui ro va chi phi co hoi. Sai thi song duoc bao lau | "Neu cai nay hong thi mat bao nhieu va co song tiep duoc khong?" · "Tien ve truoc hay tien ra truoc?" | De giet y tuong tot chi vi no dat o giai doan dau; de uu tien an toan den muc dung yen |

### Buoc 3 — Bang xep cho

| Loai cau hoi | Archetype hop | Nguoi phan bien tu nhien |
|--------------|---------------|--------------------------|
| Dinh vi / khac biet hoa | Nguoi xay thuong hieu, Nguoi hieu khach VN | Nguoi ban truc tiep ("dinh vi hay ma khong ai mua thi sao") |
| Thiet ke goi ban / gia | Nguoi ban truc tiep, Nguoi giu tui tien | Nguoi xay thuong hieu ("giam gia lien tuc lam hong gia tri cam nhan") |
| Ngan sach / phan bo tien | Nguoi giu tui tien, Nguoi tin so lieu | Nguoi xay thuong hieu ("cat het phan dai han thi nam sau lay gi") |
| Chon kenh / nen tang | Nguoi hieu khach VN, Nguoi tin so lieu | Nguoi xay thuong hieu ("chay theo kenh moi lam loang nhan dien") |
| Noi dung / thong diep | Nguoi xay thuong hieu, Nguoi hieu khach VN | Nguoi tin so lieu ("cai nay do bang gi") |
| Mo rong quy mo | Nguoi ban truc tiep, Nguoi tin so lieu | Nguoi giu tui tien ("mo rong tren nen tang chua on la nhan rui ro") |
| Ra mat san pham moi | Nguoi hieu khach VN, Nguoi giu tui tien | Nguoi ban truc tiep ("chua ban duoc cai dang co ma da lam cai moi") |
| Doi huong / lam lai | Nguoi tin so lieu, Nguoi giu tui tien | Nguoi xay thuong hieu ("doi lien tuc thi khong bao gio tich luy duoc gi") |

**Cach chon cho:** hai archetype hop nhat voi loai cau hoi, cong it nhat mot nguoi phan bien theo bang tren, cong mot archetype tuy chon neu cau hoi cham den nhieu mang. Neu nguoi hoi da nghieng han ve mot huong, **nguoi phan bien phai la archetype nguoc voi huong do**, khong phai archetype nguoc voi archetype khac.

### Buoc 4 — Bang ai thuong bat dong voi ai

| Cap | Xung dot nam o dau | Cau hoi that dang tranh cai |
|-----|--------------------|-----------------------------|
| Nguoi xay thuong hieu vs Nguoi ban truc tiep | Dai han vs ngan han | Doanh nghiep nay con bao nhieu thang tien mat? |
| Nguoi tin so lieu vs Nguoi hieu khach VN | Cai do duoc vs cai quan sat duoc | Du lieu dang co du de ket luan chua, hay chi du de tu tin? |
| Nguoi giu tui tien vs Nguoi ban truc tiep | Bien loi nhuan vs so luong don | Don them co lai hay chi lam ban ron them? |
| Nguoi xay thuong hieu vs Nguoi tin so lieu | Cai quan trong vs cai do duoc | Neu khong do duoc thi co nghia la khong ton tai khong? |
| Nguoi hieu khach VN vs Nguoi xay thuong hieu | Chieu theo thoi quen vs dan dat thoi quen | Khach chua lam vay vi khong muon, hay vi chua ai lam cho ho thay? |
| Nguoi giu tui tien vs Nguoi tin so lieu | Quyet dinh ngay vs cho du du lieu | Chi phi cua viec cho co lon hon chi phi cua viec sai khong? |

### Buoc 5 — Chay phien

Voi moi archetype duoc xep cho, viet 2-3 doan:
- Mo dau bang chinh **cau hoi dac trung** cua archetype do ap thang vao truong hop nay.
- Ap lang kinh vao **chi tiet cu the cua doanh nghiep nay** — so lieu, nganh, quy mo, rang buoc. Loi khuyen chung chung gan cho no mot cai ten khong phai la mot y kien.
- Ket bang mot cau khuyen nghi dut khoat, dung muc tu tin ma lang kinh do that su co.
- Neu lang kinh do khong bao quat duoc cau hoi (vi du hoi nguoi giu tui tien ve giong viet content), noi thang dieu do va suy luan bang loai suy ro rang, dung gia vo co y kien.

### Buoc 6 — Ban do bat dong (phan quan trong nhat)

Neu **2-4 diem xung dot that**. Moi diem viet du ba phan:

1. **Xung dot** — A noi X vi [lang kinh]; B noi Y vi [lang kinh]. Phai la bat dong that, khong phai hai cach dien dat cua cung mot y.
2. **Danh doi ben duoi** — cai gi thuc su dang duoc danh doi. Vi du: "day thuc chat la dong tien thang nay doi lay chi phi mua khach thang thu sau".
3. **Bang chung nao se giai quyet duoc no** — mot dieu co the do hoac quan sat duoc trong bao lau. Vi du: "chay hai thong diep song song 2 tuan, so ti le tra loi tin nhan"; "hoi 10 khach cu vi sao ho chon minh". Neu khong neu duoc bang chung, ghi ro: "day la lua chon gia tri, khong phai lua chon co dap an dung".

> Neu khong tim ra bat dong that nao, do la dau hieu hoi dong bi xep cho sai — xep lai voi nguoi phan bien nguoc han huong dang nghieng, dung ket luan la "moi nguoi deu dong y".

### Buoc 7 — Tong ket cua chu toa

Ba phan, khong duoc thieu phan nao:

1. **Khuyen nghi** — khop voi giai doan, nganh va rang buoc that cua doanh nghiep nay. Noi ro **da chon bo qua y kien nao va vi sao**.
2. **Viec can lam** — 2-4 viec cu the, co nguoi va co han.
3. **Moc canh bao** — dieu gi xay ra thi phai xem lai quyet dinh nay. Phai la moc quan sat duoc, kem han: "sau 4 tuan neu ti le tra loi tin nhan chua vuot [X] thi mo lai cuoc hop nay voi lap luan cua [archetype phan bien]".

Moc canh bao la cach giu lai gia tri cua nguoi phan bien sau khi y kien cua ho khong duoc chon. Khong co no, phien hop chi la mot cach cong phu de xac nhan dieu nguoi hoi da dinh lam.

### Buoc 8 — Khi user hoi "[nguoi noi tieng] se noi gi"

**Mac dinh: dung archetype.** Tra loi kieu: "Lang kinh do gan nhat voi archetype [ten] — day la cach lang kinh do nhin van de cua ban."

Neu user van nhat quyet neu ten nguoi that:
- **Khong bia trich dan.** Chi dan lai dieu co the kiem chung duoc, ghi ro nguon; con lai thi dien dat lai theo y, khong dat trong dau ngoac kep.
- **Khong bia su ung ho hay phan doi.** Khong noi hay ham y rang nguoi do co y kien ve doanh nghiep, san pham hay quyet dinh cu the cua nguoi hoi.
- **Khong mo phong nguoi that dang song binh luan ve doi thu cu the** hoac ve tranh cai dang dien ra.
- Noi ro day la cach ap khung tu duy da cong bo cua ho, khong phai y kien cua ho.

## Cau truc ket qua

Ten file: `hoi-dong-marketing-[chu-de]-[YYYYMMDD].md`

```markdown
> Phien hop mo phong. Nam archetype la lang kinh tu duy, khong dai dien
> cho ca nhan co that nao. Y kien duoi day khong phai loi khuyen cua bat ky
> nguoi that nao.

# Hoi Dong Marketing — [Quyet dinh dang xet]
Ngay: [...] | Che do: [y kien nhanh / hoi dong / hoi dong day du]

## 1. Cau hoi dua ra hoi dong
[1-2 cau] — Duoc thi: [...] | Hong thi: [...]
Rang buoc that: [ngan sach / nguoi / thoi gian / nganh]

## 2. Hoi dong duoc chon
| Archetype | Vi sao xep cho | Vai tro |
Nguoi phan bien duoc chi dinh: [ten archetype] — nguoc voi huong dang nghieng la [...]

## 3. Y kien tung archetype
### [Archetype] — [lang kinh, 3-5 chu]
[2-3 doan, mo dau bang cau hoi dac trung]
**Chot lai:** [mot cau]

## 4. Ban do bat dong
| # | Xung dot | Danh doi ben duoi | Bang chung se giai quyet | Bao lau co bang chung |

## 5. Tong ket cua chu toa
- Khuyen nghi: [...]
- Da chon bo qua y kien nao va vi sao: [...]
- Viec can lam: | # | Viec | Nguoi | Han |
- **Moc canh bao:** [dieu gi xay ra thi mo lai quyet dinh nay + han]

## 6. Chuyen tiep
| Phan viec | Skill tiep theo |
```

## Lien ket skill

- `58-positioning`: khi huong duoc chot la ve dinh vi / khac biet hoa — chuyen sang do de viet thanh cau chu.
- `31-offer-design`: khi tranh luan la ve goi ban, gia tri cam nhan hay uu dai.
- `00-ke-hoach-mkt`: khi da chot huong va can bien thanh ke hoach co timeline va ngan sach.
- `05-copy-quang-cao`: khi hoi dong tranh luan ve thong diep — chot huong o day roi viet chu o do.
- `62-marketing-review`: khac vai tro han. Skill do la cong duyet mot output da lam xong; skill nay la tranh luan ve huong truoc khi lam. Dung nham hai cai.
- `09-insight-khach-hang`: chay truoc neu chua co du kien ve khach — hoi dong khong co du kien chi cho ra loi khuyen chung chung.

## Checklist chat luong

- [ ] Co dong nhan ro day la phien hop mo phong, o dau output
- [ ] Khong co ten ca nhan co that nao duoc dung lam thanh vien hoi dong
- [ ] Cau hoi dua ra hoi dong la mot QUYET DINH co hai huong tro len, khong phai mot chu de
- [ ] Da doc context san pham / khach hang truoc khi chay phien
- [ ] Co it nhat mot nguoi phan bien, va nguoi do nguoc voi huong ma cau hoi dang nghieng ve
- [ ] Moi y kien la ban manh nhat cua lang kinh do — khong co nguoi rom
- [ ] Moi y kien bam vao chi tiet cu the cua doanh nghiep nay, khong phai loi khuyen chung gan ten
- [ ] Ban do bat dong co 2-4 diem, moi diem du ba phan: xung dot, danh doi ben duoi, bang chung giai quyet
- [ ] Neu khong tim ra bat dong that: da xep lai cho, khong ket luan "moi nguoi deu dong y"
- [ ] Tong ket cua chu toa noi ro da bo qua y kien nao va vi sao
- [ ] Co moc canh bao quan sat duoc va co han
- [ ] Khong bia trich dan, khong bia su ung ho, khong mo phong nguoi that binh luan ve doi thu cu the
- [ ] Co chuyen tiep sang skill thuc thi — hoi dong khong ngoi lam thay viec thuc thi
