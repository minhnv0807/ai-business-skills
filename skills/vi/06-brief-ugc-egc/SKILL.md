---
name: 06-brief-ugc-egc
description: "Dung khi can brief NGUOI KHAC quay video ho — khach hang lam UGC, nhan vien lam EGC, hoac KOC va creator da chot: huong dan quay tung canh, viec nen va khong nen lam, review ban tho, mau thoa thuan quyen su dung hinh anh, bang quan ly batch. Kich hoat khi user nhac 'brief UGC', 'brief EGC', 'brief KOC', 'huong dan nhan vien quay video', 'creator quay sai y', 'hop dong quyen su dung video', 'shot guide cho creator'. Khong dung cho — chon, tham dinh, bao gia KOC hoac chuong trinh affiliate thi dung skill 75-hop-tac-koc-affiliate; viet loi thoai kich ban video thi dung skill 04-script-video; huong dan editor dung phim thi dung skill 44-brief-video-editor; rai comment seeding duoi bai dang thi dung skill 38-seeding-plan; thue agency hoac production house lam tron goi thi dung skill 67-agency-vendor-brief."
metadata:
  version: 2.2.0
  category: content
license: MIT
triggers:
  - "brief creator"
  - "brief UGC"
  - "brief EGC"
  - "huong dan quay video nhan vien"
  - "brief KOC"
  - "brief KOC seeding"
  - "quan ly creator"
  - "shot guide creator"
  - "huong dan creator quay"
output: file .md gom brief san xuat cho creator da chot (UGC/EGC/KOC), huong dan quay, mau thoa thuan quyen su dung, bang quan ly batch
related:
  - 04-script-video
  - 05-copy-quang-cao
  - 01-lich-noi-dung
  - 03-danh-gia-hieu-suat
  - 38-seeding-plan
  - 44-brief-video-editor
  - 67-agency-vendor-brief
  - 75-hop-tac-koc-affiliate
---

# Brief UGC / EGC / KOC

> Quy tac van hanh chung: `skills/vi/references/quy-tac-van-hanh.md` (dac biet quy tac 2, 3, 7).

> Skill nay viet **brief san xuat cho mot creator da chot**. Chon, tham dinh, bao gia KOC, mo hinh tra phi, affiliate va re-book thuoc cap chuong trinh: dung `75-hop-tac-koc-affiliate`.

## Thu thap thong tin

Hoi toi da 4 cau truoc khi tao brief:

1. **San pham / dich vu gi?** Mo ta ngan, USP, gia, doi tuong khach hang.
2. **Loai creator nao?** UGC (khach hang that), EGC (nhan vien), KOC (creator tra phi). Neu khong chon — mac dinh UGC.
3. **Muc tieu noi dung?** TOFU (nhan biet), MOFU (thuyet phuc), BOFU (chot don). So luong video can.
4. **Ngan sach va thoi gian?** Ngan sach/video, deadline giao video, thoi gian chien dich.

---

## Nguyen tac cot loi

### Phan biet 3 loai creator

| Tieu chi | UGC (User) | EGC (Employee) | KOC (Key Opinion Consumer) |
|----------|-----------|----------------|--------------------------|
| Nguoi quay | Khach hang that | Nhan vien cong ty | Creator tra phi / doi san pham |
| Do tin cay | Cao nhat — khach that | Cao — nguoi trong cuoc | Trung binh — nhan dien la quang cao |
| Chi phi | Thap (san pham + voucher) | Luong nhan vien (da co) | Theo thoa thuan — neo gia xem `75-hop-tac-koc-affiliate` |
| Kiem soat noi dung | Thap | Cao | Trung binh — co brief nhung creator tu sang tao |
| Quyen su dung | Can xin phep | Mac dinh thuoc cong ty | Theo hop dong |
| Phu hop cho | Social proof, MOFU | Behind-the-scenes, employer branding | Reach, awareness, TOFU |

### Tieu chi chon creator

#### UGC — Khach hang

| Tieu chi | Yeu cau |
|----------|---------|
| Da su dung san pham | Bat buoc — co bang chung (don hang, check-in, review cu) |
| Chat luong camera | iPhone 11+ hoac tuong duong — video khong be, khong mo |
| Phong cach noi | Tu nhien, khong doc script cung — co cam xuc |
| Ngoai hinh | Phu hop doi tuong muc tieu (cung demographic) |
| Do san long | Dong y quay + cho phep su dung tren kenh thuong hieu |

#### EGC — Nhan vien

| Tieu chi | Yeu cau |
|----------|---------|
| Phong ban | Uu tien: sale, ky thuat, cham soc khach hang — nguoi tiep xuc khach truc tiep |
| Phong cach | Tu nhien, khong qua "corporate" — nhu ke chuyen cho ban nghe |
| Thiet bi | Dien thoai ca nhan (khong can may quay chuyen nghiep) |
| Tan suat | 2–4 video/thang/nguoi |
| Dong luc | Thuong theo view/engagement, ngay phep, qua tang |

#### KOC — Creator tra phi

Chon, tham dinh va bao gia KOC (tier, dau hieu canh bao, "da dung san pham chua", xac thuc tai khoan) nam o `75-hop-tac-koc-affiliate` va `references/tham-dinh-va-hop-dong-koc.md` cua skill do. Skill nay chi nhan KOC **da qua tham dinh** va viet brief quay.

---

## Cau truc brief chi tiet

### Phan 1 — Tong quan

```markdown
# Brief [UGC/EGC/KOC]: [Ten san pham/chien dich]
Ngay tao: [YYYY-MM-DD]
Deadline giao video: [YYYY-MM-DD]
Loai creator: [UGC / EGC / KOC]
So luong video can: [X video]
Nen tang dang: [TikTok / Reels / YouTube Shorts / Tat ca]
```

### Phan 2 — Thong tin san pham

| Hang muc | Chi tiet |
|----------|---------|
| Ten san pham / dich vu | [Ten] |
| Mo ta 1 cau | [Mo ta ngan] |
| USP chinh (1–2 diem) | [Diem khac biet] |
| Gia | [Gia ban / Gia khuyen mai] |
| Doi tuong khach hang | [Gioi tinh, do tuoi, noi dau] |
| Link san pham | [URL hoac thong tin dat hang] |
| Hashtag bat buoc | [#TenThuongHieu, #TenChienDich] |

### Phan 3 — Do / Don't

| DO — Nen lam | DON'T — Khong lam |
|-------------|------------------|
| Noi tu nhien, nhu ke chuyen cho ban nghe | Khong doc script cung nhac |
| Nhac ten san pham / dich vu ro rang | Khong nhac ten doi thu |
| Show ket qua / trai nghiem that | Khong cam ket ket qua "100%", "dam bao" |
| Quay doc 9:16, anh sang tot | Khong quay ngang, khong quay toi |
| Nhac CTA cuoi video | Khong quen CTA |
| Dung am thanh ro, khong on | Khong quay o noi on ao |
| [Them theo san pham cu the] | Khong su dung nhac co ban quyen |

### Phan 4 — 3 goc do video (chon 1 hoac quay ca 3)

| Goc do | Mo ta | Hook goi y | Phu hop |
|--------|-------|-----------|---------|
| Goc do 1: [VD: Review that] | Ke lai trai nghiem su dung — truoc/sau | "Minh dung cai nay [X] tuan — ket qua day" | MOFU |
| Goc do 2: [VD: Day in my life] | Long ghep san pham vao sinh hoat hang ngay | "1 ngay cua minh — co thu nay khong the thieu" | TOFU |
| Goc do 3: [VD: So sanh] | So sanh voi phuong phap cu / san pham khac (khong nhac ten doi thu) | "Truoc minh dung cach nay — gio doi sang cai nay" | MOFU |

### Phan 5 — Cau truc video

| Timestamp | Noi dung | Ghi chu |
|-----------|---------|--------|
| [0–3s] | Hook — gay to mo, giu nguoi xem | Khong gioi thieu ban than |
| [3–10s] | Context — van de hoac tinh huong | Lien ket voi noi dau cua doi tuong |
| [10–25s] | San pham — show/demo/trai nghiem | Nhac ten san pham, show bao bi/dich vu |
| [25–35s] | Ket qua — truoc/sau, cam nhan | Thanh that, khong qua hoa my |
| [35–45s] | CTA — khuyen nghi hanh dong | Cu the: "Nhan tin fanpage de tu van" |

_(Dieu chinh timestamp theo thoi luong: 15s, 30s, 45s, 60s — tham khao 04-script-video.md)_

### Phan 6 — Huong dan quay ky thuat

| Hang muc | Yeu cau |
|----------|---------|
| Ti le khung hinh | 9:16 (doc) — bat buoc |
| Do phan giai | Toi thieu 1080p |
| Anh sang | Anh sang tu nhien hoac ring light — khong nguoc sang |
| Am thanh | Phong yen tinh, noi ro rang. Mic cai ao neu co |
| Do dai | [15s / 30s / 45s / 60s] — theo brief |
| So take | Quay toi thieu 2 take — gui ca 2 de chon |
| Canh cam | Close-up san pham + medium shot nguoi dung + B-roll |

### Phan 7 — Format giao nop

| Hang muc | Yeu cau |
|----------|---------|
| Dinh dang file | .mp4 (khong nen, khong filter nang) |
| Cach gui | Google Drive / Dropbox — KHONG gui qua Messenger/Zalo (nen chat luong) |
| Ten file | [TenCreator]_[GocDo]_[Take1/2]_[YYYYMMDD].mp4 |
| Deadline | [YYYY-MM-DD] truoc 18:00 |
| Nguoi nhan | [Ten + so dien thoai / email] |
| Review | Thuong hieu review trong 48h — phan hoi chinh sua (neu co) trong 24h |

---

## Hop dong quyen su dung noi dung

### Template ngan (cho UGC / KOC)

```markdown
THOA THUAN SU DUNG NOI DUNG

Ben A (Thuong hieu): [Ten cong ty]
Ben B (Creator): [Ten creator]
Ngay ky: [YYYY-MM-DD]

1. NOI DUNG: [So luong] video ve [san pham/dich vu], thoi luong [Xs].
2. QUYEN SU DUNG: Ben A duoc quyen su dung noi dung tren:
   - [ ] Kenh thuong hieu (fanpage, TikTok, IG)
   - [ ] Quang cao tra phi (Meta Ads, TikTok Ads)
   - [ ] Website, landing page
   - [ ] Kenh offline (event, POS)
3. THOI HAN: [X thang] ke tu ngay giao noi dung.
4. CHINH SUA: Ben A duoc phep cat, ghep, them text overlay. Khong duoc thay doi noi dung loi noi.
5. THANH TOAN: [So tien] — thanh toan trong [X ngay] sau khi giao noi dung dat yeu cau.
6. DOC QUYEN: Creator khong quay cho doi thu truc tiep trong [X thang].

Chu ky Ben A: _______________
Chu ky Ben B: _______________
```

### Luu y phap ly

Nghia vu cua KOC / creator va cua brand khi thue (kiem tra san pham, khong quang cao san pham chua dung, cong bo quang cao **truoc va trong khi** quang cao, xac thuc tai khoan, livestream): xem `skills/vi/references/phap-ly-marketing-vn.md` muc 3 va muc 5. Khong phai tu van phap ly.

Cach ghi vao brief (thuc hanh tot, khong phai trich luat):

- Ghi 1 dong yeu cau cong bo hop tac o dau video / dau bai va trong khi noi, neu la creator tra phi (cau mau: `skills/vi/75-hop-tac-koc-affiliate/references/tham-dinh-va-hop-dong-koc.md` muc 3).
- Voi UGC (khach hang): xin phep bang tin nhan co screenshot — luu lai lam bang chung.
- Voi KOC: hop dong viet, hai ben ky (dien tu hoac giay) — checklist dieu khoan cap chuong trinh o `75-hop-tac-koc-affiliate`.
- Voi EGC: noi dung tao trong gio lam viec thuoc cong ty — ghi ro trong hop dong lao dong; nhan vien xuat hien trong video van cong bo la nhan vien cua brand.
- Quyen hinh anh: creator dong y cho dung hinh anh ca nhan — ghi ro trong thoa thuan.

---

## Co cau thanh toan

Neo gia, mo hinh tra phi (phi co dinh, phi + hoa hong, affiliate, tang san pham) va dieu kien hoa hong nam o `75-hop-tac-koc-affiliate`. Trong brief chi ghi: so tien / hinh thuc da chot, moc thanh toan (vd khi duyet ban cuoi, sau khi dang) va ai chiu trach nhiem chuyen tien. Chuyen tien can nguoi duyet co ten (quy tac 7).

---

## Theo doi hieu suat creator

### Bang theo doi tung creator

| Creator | Nen tang | Video | View | Like | Comment | Share | Save | ER | CPV | Lead | Doanh thu |
|---------|---------|-------|------|------|---------|-------|------|----|-----|------|-----------|
| [Ten 1] | TikTok | [Link] | | | | | | | | | |
| [Ten 2] | Reels | [Link] | | | | | | | | | |
| [Ten 3] | TikTok | [Link] | | | | | | | | | |

### Chi so danh gia

> Cac nguong duoi day la **heuristic** de tham khao, khong phai benchmark da kiem chung; thay bang so lich su cua chinh brand khi co (`[CAN SO LIEU THAT]`). Quyet dinh re-book dua tren chi phi tren ket qua dat chuan — xem `75-hop-tac-koc-affiliate` Buoc 7.

| Chi so | Kem | Trung binh | Tot | Xuat sac |
|--------|-----|------------|-----|----------|
| Engagement rate (ER) | <2% | 2–5% | 5–10% | >10% |
| Save rate | <0.5% | 0.5–2% | 2–5% | >5% |
| CPV (chi phi/view) | >500d | 200–500d | 100–200d | <100d |
| Video completion rate | <20% | 20–40% | 40–60% | >60% |

### Quy dinh re-book (heuristic, theo ER)

Quy tac chinh dua tren chi phi tren ket qua nam o `75-hop-tac-koc-affiliate`. Duoi day la bo loc nhanh theo ER cho 1 dot brief:

- ER > 5% + Save rate > 2% → Re-book ngay cho dot tiep theo
- ER 2–5% + noi dung tot → Re-book voi goc do khac
- ER < 2% → Khong re-book — tim creator moi

---

## Quan ly batch (10+ creator cung luc)

### Bang quan ly tien do

| # | Creator | Loai | Trang thai | Ngay gui brief | Ngay giao video | Review | Duyet | Dang | Ghi chu |
|---|---------|------|-----------|---------------|----------------|--------|-------|------|--------|
| 1 | [Ten] | KOC | [Chua gui / Da gui / Dang quay / Da giao / Can chinh sua / Da duyet / Da dang] | | | | | | |
| 2 | | | | | | | | | |
| 3 | | | | | | | | | |

### Trang thai video

```
Chua gui brief → Da gui brief → Dang quay → Da giao video
  → Review (48h) → Can chinh sua → Chinh sua xong → Da duyet → Da dang
```

### Quy trinh quan ly

1. **Chuan bi batch:** Tao danh sach creator + brief rieng cho tung nguoi (cung template, khac goc do)
2. **Gui brief:** Gui brief + san pham (neu can) cung luc — ghi nhan ngay gui
3. **Follow-up:** Nhac nho 3 ngay truoc deadline neu chua giao
4. **Review:** Xem video trong 48h — phan hoi chinh sua cu the (timestamp + noi dung can sua)
5. **Duyet:** Confirm final — gui len kenh hoac chay ads
6. **Theo doi:** Cap nhat hieu suat hang tuan — quyet dinh re-book

### Mau tin nhan follow-up

```
[Follow-up nhac nho]
"Chao [Ten], brief ben [Thuong hieu] gui hom [ngay] — ban quay den dau roi? 
Deadline [ngay] nhe. Neu can ho tro gi cu nhan tin nha!"

[Phan hoi chinh sua]
"Video tot lam! Co 2 cho minh muon chinh:
1. [0:05] — them text overlay ten san pham
2. [0:25] — CTA doi thanh 'Nhan tin fanpage de tu van'
Ban chinh giup trong 24h nha — cam on nhieu!"
```

---

## He thong UGC / Creator — 5 khau

Brief chi la 1 trong 5 khau. Thieu khau nao he thong cung dut: tim duoc creator ma khong duyet duoc, duyet duoc ma khong do duoc hieu qua thi lan sau khong biet re-book ai.

```
1 TIM  →  2 BRIEF  →  3 DUYET  →  4 TRA PHI  →  5 DO LUONG  →  (re-book hoac dung)
```

### Khau 1 — TIM creator

Tim va chon creator (UGC, FGC, KOC, KOL), nguon tim, tieu chi loc va tham dinh nam o `75-hop-tac-koc-affiliate` (Buoc 2, 3). Brief nay chi viet khi creator da chot.

### Khau 2 — BRIEF

Dung template brief chi tiet o tren. Rieng voi **UGC la khach hang that**, dung gui brief 5 trang — gui tin nhan ngan:

```
Chao [Ten],
Cam on ban da tin tuong [Thuong hieu]. Khong can hoan hao — chi can that la du.

Ban co the chia se ve:
- Van de ban gap TRUOC khi dung [san pham]?
- Trai nghiem thuc te khi dung?
- Ket qua sau khi dung?

Format: video 30-60s quay doc 9:16, hoac 2-3 tam anh + caption 3-5 cau tu nhien
Khi dang: tag @[thuong hieu] + hashtag #[...]
Cam on ban: [voucher / duoc len trang chinh / tang san pham]
```

**Nguyen tac brief:** du chi tiet de creator khong phai hoi lai, nhung **khong viet script cung**. Creator hieu tep cua ho hon minh — minh chi dat hang rao (key message, dieu khong duoc noi, tone), khong doc tung cau.

### Khau 3 — DUYET

| Buoc | Viec | Thoi han chuan |
|------|------|---------------|
| 3.1 | Creator nop ban tho (chua edit hoac edit so) | Theo deadline trong brief |
| 3.2 | Brand phan hoi | Trong 2 ngay lam viec — cham hon la mat da creator |
| 3.3 | Creator sua | Toi da **2 lan sua** — ghi ro trong brief tu dau |
| 3.4 | Duyet ban cuoi | 1 ngay |
| 3.5 | Creator dang | Trong 3 ngay ke tu khi duyet |

**Dieu khoan bat buoc ghi trong brief truoc khi quay:**
- Preview cho brand truoc khi dang **it nhat 2 ngay**
- **Khong xoa bai** trong toi thieu [3-6] thang
- Co **disclosure** (#ad / #quangcao / danh dau noi dung tai tro) theo quy dinh nen tang va phap luat
- Ghi ro brand duoc dung lai video de chay ads hay khong, trong bao lau

**Phan hoi sua the nao:** ghi theo timestamp va noi ro can gi, khong ghi cam tinh. Vi du: `[0:05] them text overlay ten san pham` — khong phai "video chua hay lam".

### Khau 4 — TRA PHI

Mo hinh tra phi va ky luat thanh toan: `75-hop-tac-koc-affiliate` (Buoc 4). Trong brief, chot ro moc thanh toan truoc khi quay.

### Khau 5 — DO LUONG

Cham diem tung creator va quyet dinh re-book dua tren chi phi tren ket qua dat chuan: `75-hop-tac-koc-affiliate` (Buoc 7). Trong brief, chi can chuan bi dau vao do luong: link UTM hoac ma giam gia rieng, yeu cau creator gui screenshot analytics goc, va cau hoi "biet den qua dau" trong form.

**Ghi lai tat ca vao bang theo doi creator** (o tren) de quy sau khong phai tim lai tu dau.

---

## Lien ket skill lien quan

- **04-script-video** — Script chi tiet cho creator tham khao khi quay
- **05-copy-quang-cao** — Dung video UGC/KOC lam creative cho ads — can copy di kem
- **01-lich-noi-dung** — Xep lich dang video creator vao lich noi dung tong
- **03-danh-gia-hieu-suat** — Danh gia hieu suat creator de quyet dinh re-book
- **38-seeding-plan** — Khi noi dung creator duoc dung de seeding vao group/cong dong
- **44-brief-video-editor** — Khi video creator can dung lai truoc khi dang hoac chay ads
- **67-agency-vendor-brief** — Khi thue agency/nen tang trung gian quan ly nhieu KOC
- **75-hop-tac-koc-affiliate** — Chon, tham dinh, bao gia KOC; mo hinh tra phi, affiliate, hop dong cap chuong trinh, re-book

---

## Checklist chat luong

Kiem tra truoc khi gui brief:

- [ ] Ro loai creator: UGC, EGC, hay KOC
- [ ] Co thong tin san pham day du (ten, USP, gia, doi tuong)
- [ ] Co bang DO / DON'T cu the
- [ ] Co it nhat 3 goc do video de creator chon
- [ ] Co cau truc video theo timestamp
- [ ] Co huong dan quay ky thuat (khung hinh, anh sang, am thanh)
- [ ] Co format giao nop ro rang (dinh dang, cach gui, deadline)
- [ ] Co hop dong / thoa thuan quyen su dung noi dung
- [ ] Co moc thanh toan da chot (neo gia / mo hinh: xem `75-hop-tac-koc-affiliate`)
- [ ] Co dong yeu cau cong bo hop tac neu la creator tra phi
- [ ] Co bang theo doi hieu suat cho tung creator
- [ ] Neu batch 10+ creator — co bang quan ly tien do
- [ ] Khong yeu cau creator noi dieu vi pham chinh sach quang cao
