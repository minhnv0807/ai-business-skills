---
name: 04-script-video
description: Viet script video ngan cho TikTok, Reels, YouTube Shorts — 2 ban A/B, co hook, CTA, huong dan quay chi tiet
argument-hint: "<sản phẩm + thời lượng + tone>"
metadata:
  version: 2.3.0
  category: content
triggers:
  - "viet script"
  - "script TikTok"
  - "kich ban video"
  - "hook TikTok"
  - "script UGC"
  - "script Reels"
  - "kich ban quay"
  - "viet script personal brand"
  - "script ca nhan TikTok"
  - "story video"
  - "viet video LinkedIn ca nhan"
  - "duyet script video"
  - "beat script"
  - "repurpose video"
output: file .md gom 2 ban script A/B, bang timestamp, hook, CTA, huong dan quay, caption, hashtag, viral score
related:
  - 05-copy-quang-cao
  - 06-brief-ugc-egc
  - 01-lich-noi-dung
  - 09-insight-khach-hang
  - 36-content-brief
  - 44-brief-video-editor
  - 62-marketing-review
  - references/hook-formulas-vn
---

# Script Video

## Buoc 0: Kiem tra context file

Truoc khi viet script, doc ca 2 file (neu ton tai):

1. `.agents/product-marketing-context.md`   (marketing san pham)
2. `.agents/personal-brand-context.md`      (personal brand)

Quyet dinh mode:
- Chi co `product-marketing-context.md` → **MODE A** (mac dinh, hanh vi cu — sections ben duoi)
- Chi co `personal-brand-context.md` → **MODE B** (Personal Brand Mode — section "Personal Brand Mode" ben duoi)
- Co ca 2 → **HOI 1 cau**: "Ban dang viet video ban san pham hay xay personal brand?"
- Khong co → De xuat tao context phu hop (chay skill `product-marketing-context` hoac `22-personal-brand-context` truoc)

---

## Thu thap thong tin

Hoi toi da 4 cau truoc khi viet:

1. **San pham / dich vu gi?** Mo ta ngan, USP chinh, gia (neu co).
2. **Nền tang + thoi luong mong muon?** TikTok (15/30/45/60s), Reels (15/30/60s), YouTube Shorts (30/60s). Neu khong chon — mac dinh TikTok 30s.
3. **Doi tuong muc tieu?** Gioi tinh, do tuoi, noi dau chinh, muc tieu ho muon dat.
4. **Goc do noi dung?** TOFU (thu hut moi), MOFU (thuyet phuc), BOFU (chot don). Neu khong chon — mac dinh TOFU.

---

## Nguyen tac cot loi

### 5 loai hook (3 giay dau)

| # | Loai hook | Cong thuc | Vi du |
|---|-----------|-----------|-------|
| 1 | Cau hoi | Dat cau hoi cham noi dau — buoc nguoi xem phai suy nghi | "Ban co biet tai sao da ban cu len mun mai khong?" |
| 2 | Con so | Mo dau bang so lieu bat ngo, cu the | "97% nguoi dung sai buoc nay moi sang" |
| 3 | Gay tranh cai | Noi nguoc lai niem tin pho bien | "Rua mat 2 lan/ngay chinh la ly do da ban te hon" |
| 4 | Tinh huong | Dung POV, vao vai, ke chuyen ngan | "POV: Lan dau di spa ma khong biet chon gi" |
| 5 | Ket qua truoc | Show ket qua dau — roi giai thich cach lam | "Da minh sau 2 tuan dung cai nay — xem cach lam" |

**Quy tac chon hook:**
- TOFU: Uu tien hook 1 (cau hoi), 4 (tinh huong), 3 (gay tranh cai)
- MOFU: Uu tien hook 5 (ket qua truoc), 2 (con so)
- BOFU: Uu tien hook 2 (con so), 5 (ket qua truoc)

### 3 lop hook — ban dong thoi trong 0-3s

5 loai hook o tren la **goc nhin**. Con day la **3 kenh truyen tai** — mot video manh phai co ca 3 chay cung luc, khong chi 1.

| Lop | La gi | Yeu cau | Loi thuong gap |
|-----|-------|---------|---------------|
| **Visual hook** | Hanh dong / canh dau tien bat len ngay khi video chay | Co chuyen dong hoac thay doi trong 1s dau; khong phai canh tinh | Mo bang logo, bang intro, hoac mat nguoi ngoi yen |
| **Audio hook** | Cau noi dau tien (hoac sound bat len) | Doc to phai hit ngay; khong chao hoi, khong ten brand | "Xin chao cac ban, hom nay minh..." |
| **Text overlay hook** | Chu xuat hien on-screen 0-3s | <=50 ky tu, font day, doc duoc khi khong bat tieng | Chu nho, mau chim vao nen, xuat hien tre sau 1s |

**Khi viet script, output du 3 phuong an hook cho moi ban A/B:**

```
Hook A — Visual:  [Mo ta hanh dong/canh dau tien]
Hook B — Audio:   [Cau noi dau tien, nguyen van]
Hook C — Text:    [Text on-screen 0-3s]
→ Chon dung: [A/B/C hoac ket hop] — Ly do: [...]
```

**Quy tac:** phan lon nguoi xem luot feed khong bat tieng → **text overlay hook la lop bat buoc**, khong duoc bo qua. Kiem tra bang cach tat tieng va xem lai 3s dau: neu khong hieu video noi ve gi thi hook chua dat.

### Cau truc script theo timestamp

Ap dung cho video 30–45s (dieu chinh ti le theo thoi luong):

| Timestamp | Phan | Noi dung | Ti le |
|-----------|------|----------|-------|
| [0–3s] | Hook | Gay to mo, giu nguoi xem lai. Khong gioi thieu ban than. | 10% |
| [3–10s] | Van de / Cau chuyen | Dien ta noi dau, tinh huong — nguoi xem thay minh trong do. | 25% |
| [10–20s] | Giai phap / Gia tri | Gioi thieu san pham/dich vu nhu cach giai quyet van de. | 30% |
| [20–28s] | Bang chung | Ket qua, review, so lieu, truoc/sau. | 25% |
| [28–30s] | CTA | Hanh dong cu the: "Nhan tin ngay", "Link bio", "Comment de nhan". | 10% |

### Dieu chinh theo thoi luong

| Thoi luong | Hook | Van de | Giai phap | Bang chung | CTA |
|------------|------|--------|-----------|------------|-----|
| 15s | 0–2s | 2–5s | 5–10s | 10–13s | 13–15s |
| 30s | 0–3s | 3–10s | 10–20s | 20–27s | 27–30s |
| 45s | 0–3s | 3–12s | 12–28s | 28–40s | 40–45s |
| 60s | 0–3s | 3–15s | 15–35s | 35–53s | 53–60s |

### Chia beat — 1 beat = 1 diem duy nhat

Timestamp la khung thoi gian; **beat** la don vi noi dung. Viet script theo beat truoc, sau do map vao giay.

| Beat | Giay | Nhiem vu duy nhat cua beat | Neu beat nay hong |
|------|------|---------------------------|------------------|
| Hook | 0-3s | Chan dung nguoi luot | Toan bo video khong ai xem |
| Beat 1 | 3-Xs | Goi ten van de HOAC dua boi canh | Nguoi xem khong thay minh trong do → thoat |
| Beat 2 | | Dua giai phap / insight chinh | Video khong co gia tri, chi la quang cao |
| Beat 3 | | Chung minh (so lieu, truoc-sau, demo) | Nguoi xem khong tin |
| CTA | 5s cuoi | 1 hanh dong duy nhat | Xem xong roi troi |

**Luat beat:**
1. **Moi beat chi mang 1 diem.** Don 2 y vao 1 beat = nguoi xem khong nho y nao.
2. **Toi da 3 beat than bai.** Video 15s chi du cho 2 beat — cat bot, dung nen chu.
3. **Moi beat phai co doi canh hoac doi goc may.** Beat khong doi hinh = nguoi xem cam giac video dung yen.
4. **Doc to toan bo script len truoc khi chot.** Nghe cung o cho nao thi cho do viet van chu khong phai viet noi.

### 6 cong thuc hook chuyen nghiep

> Ap dung tu `social-media-skills/hook-generator` — da adapt cho thi truong VN.

Moi hook gom **2 dong**: Dong 1 (mo) toi da 50 ky tu, Dong 2 (twist) toi da 50 ky tu.

| # | Kieu hook | Cong thuc | Vi du VN |
|---|-----------|-----------|----------|
| 1 | **Con so dan dau** | Mo bang so lieu cu the, bat ngo | "97% chu spa dang lam sai buoc nay" / "Va no ton 200 trieu/nam" |
| 2 | **Nguoc doi** | Noi dieu pho bien roi lat nguoc | "Chay ads nhieu hon khong giup ban" / "Toi giam budget 50% va tang don 3x" |
| 3 | **Bien doi ca nhan** | Truoc vs Sau voi con so | "6 thang truoc toi khong co khach" / "Bay gio 40 booking/tuan — day la cach" |
| 4 | **Muon uy tin** | Nhac ten thuong hieu, nguoi noi tieng, cong cu | "ChatGPT vua thay doi cach toi lam MKT" / "Va 90% marketer chua biet" |
| 5 | **Thu nhan** | Chia se sai lam, mat mat | "Toi da mat 500 trieu chay ads sai" / "Day la bai hoc dat gia nhat" |
| 6 | **Du bao tuong lai** | Dieu sap thay doi ma it nguoi biet | "TikTok Shop sap thay doi hoan toan" / "Ai khong chuan bi se mat thi phan" |

**Quy tac hook:**
- **Khong bao gio mo bang "Toi"** — dung "Ban", "Day", con so, hoac ten nguoi/brand
- Dong 1 tao curiosity gap — Dong 2 tang stakes hoac lat nguoc
- Dem ky tu: 50 char/dong la toi da — tren mobile, nhieu hon se cat
- Chon kieu hook phu hop tang pheu: TOFU (1,2,6), MOFU (3,4), BOFU (5,3)

### Reverse-engineer video viral (tham khao)

> Hoc tu video doi thu/KOL de viet script tot hon — KHONG copy.

Khi user cung cap link video tham khao (TikTok, Reels, YouTube Shorts):

1. **Phan tich cau truc**: Hook (may giay?), so diem chinh (2 hay 3?), CTA kieu gi?
2. **Rut ky thuat**: Goc quay, nhip cat, text overlay style, am nhac
3. **Adapt cho brand**: Giu cau truc + ky thuat, thay noi dung bang san pham/dich vu cua user
4. **Khong copy loi thoai** — chi hoc pattern, viet lai bang giong van brand

### Quy tac viet script

1. **1 y chinh duy nhat** — khong noi 2 dieu trong 1 video.
2. **Ngon ngu noi** — viet nhu dang noi chuyen, khong viet van.
3. **Cau ngan** — toi da 15 tu/cau. Cau dai = nguoi xem luot.
4. **Transition ro rang** — ghi chi dan chuyen canh trong script.
5. **Text overlay bat buoc** — ghi ro noi dung text hien tren man hinh.
6. **Khong dung nhac nen co ban quyen** — chi dung nhac trending hoac royalty-free.
7. **Toi da 2 diem chinh** — 3 diem = qua nhieu, nguoi xem khong nho.
8. **Khong ket luan ho** — de su that/so lieu tu noi len.

---

## Personal Brand Mode

> Mode nay tu dong kich hoat khi co `.agents/personal-brand-context.md`. Doc context file truoc — lay: niche, audience ca nhan, story arc, brand voice.

### Khac biet cot loi voi mode SP (MODE A)

| Yeu to | Mode A (San pham) | Mode B (Personal brand) |
|--------|-------------------|------------------------|
| Goal video | Sell / Convert | Build trust + Authority |
| Hook angle | Pain point san pham | Personal experience / Industry insight |
| CTA | "Inbox/Comment" mua hang | Soft CTA: "Ban nghi sao?", "Follow them" |
| Story | Customer story | Founder/Coach story (chinh ban) |
| Trust signal | Reviews, USP | Personal track record, contrarian view |
| Tone | Selling-focused | Conversational, vulnerable, authoritative |

### 4 hook personal brand (khac 5 hook san pham)

| # | Loai hook | Cong thuc | Vi du VN |
|---|-----------|-----------|---------|
| 1 | Personal confession | Mo dau bang loi sai / that bai cua chinh ban | "Toi da mat 200 trieu vi sai 1 quyet dinh tuan truoc. Day la bai hoc." |
| 2 | Contrarian take | Phan bac dieu da so tin | "Moi nguoi noi nen scale nhanh. Toi da nay scale cham — va day la ly do." |
| 3 | Behind the scene | Cho thay phan it nguoi thay | "Toi 5h sang khi build startup nay. Day la what no one tells you." |
| 4 | Industry truth | Kien thuc nganh khong ai noi | "Sau 10 nam lam tu van, day la 3 dieu agency khong bao gio noi voi ban." |

### Cau truc script Personal Brand 30s

| Time | Noi dung | Goal |
|------|----------|------|
| 0-3s | Hook personal brand (1 trong 4 loai tren) | Stop scroll bang ca nhan |
| 3-10s | Setup: ai noi, hoan canh | Establish credibility |
| 10-22s | Insight chinh / story turning point | Deliver value |
| 22-28s | Lesson hoc duoc / framework | Pay off the hook |
| 28-30s | Soft CTA: "Ban tung gap chua?", "Follow them" | Build community, NOT sell |

### QA Score Personal Brand (10 tieu chi)

Khac voi QA san pham. 10 tieu chi × 10 diem:
1. Authenticity (co bua dat khong?)
2. Personal vulnerability (co share that bai/loi sai?)
3. Industry insight (co kien thuc moi nguoi can?)
4. Hook personal angle (1 trong 4 loai tren)
5. Story arc clear (setup → turning point → lesson)
6. Brand voice consistency (match `personal-brand-context.md`)
7. Soft CTA appropriate (KHONG hard sell)
8. Disclosure neu dung AI avatar
9. Niche relevance (khop voi niche dang chon)
10. Repurpose-able (co cat ra short clip duoc khong?)

Score guide: 90+ Xuat sac, 70-89 Tot, 50-69 Can fix, <50 Lam lai.

### Khi nao KHONG dung Personal Brand Mode

- User chi co product context, KHONG co personal brand context → dung mode A
- Video ads chay tien (ad copy ban hang) → dung skill 05 thay
- Tutorial / how-to thuan tuy → mode A van phu hop

---

## Cau truc ket qua

### Thong tin chung

```markdown
# Script Video: [Ten san pham/chien dich]
Ngay tao: [YYYY-MM-DD]
Nen tang: [TikTok / Reels / YouTube Shorts]
Thoi luong: [Xs]
Tang pheu: [TOFU / MOFU / BOFU]
Doi tuong: [Mo ta ngan]
Goc do: [Tham khao content-angles.md]
```

### Ban A — [Ten goc do / Hook chinh]

| Timestamp | Loi thoai | Hinh anh / Hanh dong | Text overlay | Am thanh |
|-----------|-----------|---------------------|-------------|----------|
| [0–3s] | "[Hook — viet nguyen van]" | [Mo ta canh quay: goc may, chu the, hanh dong] | [Text hien tren man hinh] | [Nhac nen / sound trending] |
| [3–10s] | "[Van de — viet nguyen van]" | [Chuyen canh: transition type + canh moi] | [Text overlay] | [Tiep tuc / doi nhac] |
| [10–20s] | "[Giai phap — viet nguyen van]" | [Hanh dong: demo san pham, B-roll, close-up] | [Text overlay] | |
| [20–27s] | "[Bang chung — viet nguyen van]" | [Truoc/sau, review, so lieu tren man hinh] | [Text overlay ket qua] | |
| [27–30s] | "[CTA — viet nguyen van]" | [Tro tay, chi link, quay lai san pham] | "[CTA text lon, ro]" | |

### Ban B — [Ten goc do / Hook chinh]

_(Cung cau truc bang nhu ban A, khac goc do hoac hook)_

| Timestamp | Loi thoai | Hinh anh / Hanh dong | Text overlay | Am thanh |
|-----------|-----------|---------------------|-------------|----------|
| [0–3s] | "[Hook khac — viet nguyen van]" | [Goc quay khac] | [Text overlay khac] | |
| ... | ... | ... | ... | ... |

### So sanh 2 ban

| Yeu to | Ban A | Ban B |
|--------|-------|-------|
| Loai hook | [VD: Cau hoi] | [VD: Ket qua truoc] |
| Cam xuc chinh | [VD: To mo] | [VD: Bat ngo] |
| CTA | [VD: Nhan tin ngay] | [VD: Comment de nhan] |
| Do kho quay | [De / Trung binh / Kho] | [De / Trung binh / Kho] |
| Phu hop test | [Cold audience] | [Warm audience] |

---

## Huong dan quay ky thuat

### Thiet bi

| Hang muc | Khuyen dung | Thay the |
|----------|------------|---------|
| May quay | iPhone 13+ / Samsung S22+ | Dien thoai co 4K |
| Chan may | Tripod co kep dien thoai | Ke sach, tu do |
| Anh sang | Ring light 26cm hoac den softbox | Quay canh cua so, anh sang tu nhien |
| Am thanh | Mic cai ao Boya BY-M1 | Mic tren dien thoai (phong yen tinh) |
| Phan mem edit | CapCut (free) | VN Editor, InShot |

### Checklist truoc khi quay

- [ ] Tat thong bao dien thoai
- [ ] Lau camera
- [ ] Kiem tra anh sang — khong nguoc sang
- [ ] Test am thanh — thu 5 giay roi nghe lai
- [ ] Chon ti le khung hinh: 9:16 (doc) cho TikTok/Reels/Shorts
- [ ] Dat may ngang tam mat hoac hoi cao hon
- [ ] Doc script 2 lan truoc khi quay

### Phong cach quay theo loai noi dung

| Phong cach | Mo ta | Phu hop |
|------------|-------|---------|
| Talking head | Noi thang vao camera, close-up mat | Hook cau hoi, giao duc, review |
| POV | Camera = mat nguoi xem, khong thay mat nguoi quay | Tinh huong, trai nghiem |
| B-roll + voiceover | Quay san pham/khong gian, ghep giong noi sau | Demo san pham, behind-the-scenes |
| Truoc/sau | Chia doi man hinh hoac chuyen canh | Bang chung, ket qua |
| Green screen | Dung anh/video nen, nguoi noi phia truoc | Phan tich, binh luan, so sanh |

---

## Caption va Hashtag

### Caption

```markdown
[Dong 1 — hook lai noi dung video, toi da 125 ky tu]
[Dong 2 — bo sung gia tri hoac context]
[Dong 3 — CTA: "Save lai de lam theo" / "Tag ban be can biet"]
.
.
.
[Hashtag block]
```

### Chien luoc hashtag

| Nhom | So luong | Vi du |
|------|---------|-------|
| Trending / Viral | 1–2 | #xuhuong, #viral |
| Nganh / Niche | 2–3 | #skincare, #spadanang, #lamdep |
| Thuong hieu | 1 | #TenThuongHieu |
| Long-tail | 1–2 | #cachtridamunhieunam, #reviewspadanang |

**Tong: 5–8 hashtag.** Khong spam 20–30 hashtag — giam reach.

---

## Viral Score — Du doan hieu qua

Cham diem 5 yeu to, moi yeu to 1–5 diem:

| Yeu to | Tieu chi | Diem |
|--------|----------|------|
| Hook strength | 3 giay dau co gay to mo khong? Co ly do de o lai khong? | /5 |
| Save potential | Nguoi xem co muon luu lai xem sau khong? (tips, huong dan, cong thuc) | /5 |
| Share trigger | Co ly do de chia se cho nguoi khac khong? (hai, dong cam, huu ich) | /5 |
| Completion pull | Nguoi xem co muon xem het khong? Co suspense/payoff khong? | /5 |
| Comment bait | Co gi de nguoi xem binh luan khong? (cau hoi, tranh luan, tag ban) | /5 |

| Tong diem | Danh gia | Hanh dong |
|-----------|---------|----------|
| 20–25 | Tiem nang viral cao | Chay ngay, do budget ads |
| 15–19 | Kha | Chay A/B test, theo doi 24h dau |
| 10–14 | Trung binh | Can chinh hook hoac CTA |
| <10 | Yeu | Viet lai — khong nen chay |

---

## QA Score — Kiem tra truoc khi giao

> Ap dung tu `social-media-skills/reels-scripting` — QA gate 95/100.

Cham diem script theo 10 tieu chi, moi tieu chi 10 diem. **Chi giao khi dat ≥ 85/100.**

| # | Tieu chi | 10 diem | 0 diem |
|---|----------|---------|--------|
| 1 | Hook trong 3s | Co hook ro, khong gioi thieu ban than | Mo bang "Xin chao, hom nay minh se..." |
| 2 | Hook ≤ 50 ky tu | Dong 1 ngan, dam, du nghia | Dong 1 dai, cat giua y |
| 3 | 1 y chinh duy nhat | Toan bo script phuc vu 1 message | Nhieu y lan man |
| 4 | Toi da 2 diem chinh | 2 diem ro rang, de nho | 3+ diem, qua nhieu thong tin |
| 5 | Ngon ngu noi | Doc len tu nhien, nhu dang noi chuyen | Viet van, cung nhac |
| 6 | Cau ≤ 15 tu | Moi cau ngan gon | Co cau dai >15 tu |
| 7 | CTA cu the | "Nhan tin ngay", "Comment [TU KHOA]" | "Tim hieu them", "Lien he" |
| 8 | Thoi luong phu hop | Script doc het trong thoi luong da chon | Qua dai hoac qua ngan |
| 9 | Khong mo bang "Toi" | Mo bang "Ban", "Day", con so, brand | Dong dau tien la "Toi..." |
| 10 | Co huong dan quay | Goc quay, hanh dong, text overlay ro | Chi co loi thoai, khong co visual |

| Tong diem | Danh gia | Hanh dong |
|-----------|---------|----------|
| 95–100 | Xuat sac | Giao ngay |
| 85–94 | Tot | Giao duoc, ghi chu cai thien |
| 70–84 | Trung binh | Chinh lai truoc khi giao |
| < 70 | Yeu | Viet lai |

---

## Quy trinh san xuat va tieu chuan duyet script

### Vi tri script trong chuoi san xuat

```
IDEA → HOOK → MESSAGE → CTA → BRIEF → SCRIPT → PRODUCTION → REVIEW → REPURPOSE → PUBLISH
                                 ^        ^                      ^
                          36-content-brief |              44-brief-video-editor
                                     skill nay
```

**Dau vao bat buoc truoc khi viet script:** brief tu `36-content-brief` (chu de, message chinh, tang pheu, CTA, deadline) va insight tu `09-insight-khach-hang`. Khong co brief thi khong viet script — se phai viet lai.

**Dau ra sau khi script duyet:** chuyen thanh brief cho editor qua `44-brief-video-editor` (nhac nen, text overlay, subtitle, transition, color grade, pace) va lich dang qua `01-lich-noi-dung`.

### Khoi ban giao cho quay + dung

Ghi kem cuoi moi script — thieu khoi nay, editor se tu quyet va lech brand:

| Hang muc | Ghi ro | Vi du |
|---------|--------|-------|
| Nhac nen | Mood + dai BPM + nguon | "Upbeat, 100-120 BPM, nhac trending TikTok VN thang [X]" |
| Anh sang | Natural / Ring light / Studio + huong chieu | "Ring light chinh dien, them den vien phia sau" |
| Goc camera | Eye level / Slightly low / Overhead | "Eye level, doi sang overhead o beat demo" |
| Transition | Cut nhanh / Slow motion / Zoom / None | "Cut nhanh giua cac beat, khong dung hieu ung chuyen canh cua CapCut" |
| Text overlay | Vi tri + font + mau | "Giua tren, font dam, mau [mau primary] tren nen toi" |
| Subtitle | Ngon ngu + kieu | "Tieng Viet, tung cum tu, khong hien ca cau" |
| Trang phuc / Props | | |

### Tieu chuan duyet script — 3 gate

| Gate | Ai lam | Khi nao | Kiem gi | Ket qua |
|------|--------|---------|---------|---------|
| **Gate 1 — Self QA** | Nguoi viet | Truoc khi nop | Cham QA Score 10 tieu chi o tren; doc to toan bo script | >=85/100 moi duoc nop |
| **Gate 2 — Content review** | Leader / content lead (`62-marketing-review`) | T-5 truoc ngay quay | 5 cau hoi duyet ben duoi | DUYET / DUYET CO DIEU KIEN / TRA VE |
| **Gate 3 — Pre-shoot** | Nguoi quay | Ngay quay, truoc khi bam may | Checklist truoc khi quay + doi chieu khoi ban giao | Du moi quay |

**5 cau hoi o Gate 2:**

1. Hook co dung 3 lop (visual + audio + text) khong? Tat tieng doc 3s dau con hieu khong?
2. Video nay co dung 1 y chinh duy nhat khong? Neu ke lai cho nguoi khac trong 1 cau co duoc khong?
3. Message co khop brief va khop tang pheu khong? (TOFU khong ban, BOFU phai co offer)
4. CTA co phai 1 hanh dong duy nhat, cu the, do duoc khong?
5. So lieu / claim trong script co that va co nguon khong? Co vi pham chinh sach nen tang khong?

**Ly do TRA VE thuong gap:** hook mo bang chao hoi hoac ten brand · nhoi 3 y vao 1 video · CTA chung chung · dung so khong co nguon · script viet van chu khong phai ngon ngu noi · thieu chi dan hinh anh.

### Repurpose — 1 script ra nhieu dau ra

Sau khi video chay tot (Viral Score >=20 hoac tren muc trung binh kenh), cat nho ra:

| Nguon | Cac dau ra | Skill xu ly |
|-------|-----------|-------------|
| 1 livestream 60-90 phut | 5-10 clip 30-60s + 3-5 quote card + 1 thread + 1 bai blog + 1 email | `04` (cat clip), `42-brief-hinh-anh`, `14-email-marketing` |
| 1 video dai / bai blog | Thread 10-15 y + infographic + video giai thich + newsletter | `37-caption-social`, `42-brief-hinh-anh` |
| 1 case study | Post dai Facebook (truoc/sau) + carousel + video testimonial + quote card | `43-brief-carousel`, `06-brief-ugc-egc` |

**Quy tac repurpose:** khong dang lai y nguyen tren nhieu kenh — doi hook va do dai theo kenh, giu nguyen message chinh.

---

## Lien ket skill lien quan

- **05-copy-quang-cao** — Dung copy ads de boost video co hieu suat tot
- **06-brief-ugc-egc** — Gui script nay cho creator quay theo brief
- **01-lich-noi-dung** — Xep lich dang video theo ke hoach noi dung
- **09-insight-khach-hang** — Lay noi dau, mong muon cua khach de viet hook chinh xac
- **36-content-brief** — Brief dau vao bat buoc truoc khi viet script
- **44-brief-video-editor** — Chuyen script da duyet thanh brief dung phim
- **62-marketing-review** — Gate 2 duyet script truoc ngay quay

---

## Checklist chat luong

Kiem tra truoc khi giao script:

- [ ] Co 2 ban A/B voi hook khac nhau
- [ ] Hook nam trong 3 giay dau, khong gioi thieu ban than
- [ ] Moi cau toi da 15 tu, ngon ngu noi
- [ ] Co chi dan hinh anh/hanh dong cho tung timestamp
- [ ] Co text overlay cho moi phan
- [ ] CTA cu the, hanh dong duoc (khong chung chung "tim hieu them")
- [ ] Thoi luong phu hop nen tang da chon
- [ ] Co huong dan quay ky thuat (thiet bi, anh sang, goc quay)
- [ ] Co caption + hashtag
- [ ] Co viral score danh gia
- [ ] Khong co nhac co ban quyen trong script
- [ ] Goc do noi dung phu hop tang pheu (TOFU/MOFU/BOFU)
- [ ] Moi ban co du 3 phuong an hook: Visual + Audio + Text overlay, kem ly do chon
- [ ] Tat tieng xem 3s dau van hieu video noi ve gi
- [ ] Chia beat ro rang, moi beat 1 diem, toi da 3 beat than bai
- [ ] Moi beat co doi canh hoac doi goc may
- [ ] Co khoi ban giao quay + dung (nhac, anh sang, goc may, transition, text overlay, subtitle)
- [ ] Da qua Gate 1 self QA (>=85/100) truoc khi nop
- [ ] Da qua Gate 2 content review, ghi ket qua duyet
- [ ] Co brief dau vao tu `36-content-brief` — khong viet script khi chua co brief
