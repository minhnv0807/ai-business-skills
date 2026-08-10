---
name: 47-design-review
description: "Dung khi da co THIET KE va can duyet truoc khi dang — cham diem 4 nhom brand consistency, hierarchy va do doc, yeu to chuyen doi, phu hop nen tang, moi nhom 10 diem, kem feedback theo dang van de - tai sao - cach sua va verdict duyet / sua nhe / lam lai. Kich hoat khi user nhac 'review design', 'duyet thiet ke', 'feedback thiet ke', 'cham diem design', 'anh nay ok chua', 'nhin sao sao ma khong biet sai cho nao', 'check brand', 'approve creative'. Dung ca khi user chi gui anh va hoi 'xem giup'. Khong dung cho — duyet CHU nhu content brief va ads copy thi dung skill 62-marketing-review; do xem trang co ra don khong thi dung skill 68-cro-audit-trang."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "review design"
  - "duyet design"
  - "feedback thiet ke"
  - "cham diem design"
  - "check brand"
  - "design co on khong"
  - "check visual"
  - "approve design"
output: "File .md hoac feedback in-chat — quick verdict, bang diem 4 nhom /40, checklist chi tiet, feedback theo format van de - tai sao - cach sua, tom tat action. Designer nhan la sua duoc ngay."
related:
  - 46-brand-guideline
  - 42-brief-hinh-anh
  - 43-brief-carousel
  - 45-brief-canva
  - 12-brief-landing-page
  - 41-campaign-asset-list
  - 62-marketing-review
---

# Design Review

> Review design khong phai "thich hay khong thich" — la kiem tra design co lam dung viec cua no khong. Design dep ma khong convert = that bai. Design convert ma sai brand = cung that bai. Feedback phai du cu the de designer biet sua cho nao.

## Thu thap thong tin

Doc brand guideline (`46-brand-guideline`) va brief goc cua asset. Neu thieu, hoi toi da 4 cau:

1. **Design can review?** Upload file / screenshot / share link — loai gi (social post / banner ads / carousel / landing page / email)?
2. **Muc tieu + tang pheu?** Awareness / trust / conversion — TOFU / MOFU / BOFU?
3. **Kenh dang/chay?** Facebook / TikTok / Instagram / Email / Website?
4. **Brand guideline ap dung?** Neu chua co guideline → review phan brand se chi o muc tuong doi, de xuat chay `46-brand-guideline` truoc.

## Nguyen tac

1. **Feedback du cu the de designer tu sua khong can hoi lai** — "nhin chua on lam" khong phai feedback.
2. **Phan biet "phai sua" (blocker) vs "nen sua" (goi y).**
3. **Khong reject vi gu ca nhan** — moi diem tru phai co can cu checklist.
4. **Review trong toi da 24 gio** — khong de designer cho block workflow.
5. **Da approve thi khong doi y** sau khi designer export.
6. **Neu phai lam lai hon 50% → brief lai tu dau,** khong sua vong vong.

## Quy trinh

### Buoc 1 — Nhin tong the (3 giay dau)

Xem nhu nguoi dung that — khong zoom vao chi tiet ngay. Tra loi 2 cau: trong 3 giay co biet design dang noi gi khong? Mat nhin vao dau dau tien?

### Buoc 2 — Cham diem 4 nhom tieu chi

Moi nhom 10 diem, tong 40. Cham theo checklist ben duoi, moi muc khong dat tru diem tuong ung muc do anh huong.

### Buoc 3 — Viet feedback theo format chuan

Moi van de viet theo: **[Van de] → [Tai sao sai] → [Cach sua cu the]**.

### Buoc 4 — Verdict va action summary

Chot verdict + liet ke viec sua theo uu tien + dieu kien approve.

## Cau truc ket qua

```markdown
# Design Review — [Ten asset] — [ngay]

## Quick verdict
| Tieu chi | Danh gia | Ghi chu |
|----------|----------|---------|
| Dung brand? | OK / Warning / Fail | |
| Hierarchy ro? | OK / Warning / Fail | |
| Doc duoc tren mobile? | OK / Warning / Fail | |
| Dung objective? | OK / Warning / Fail | |

## Tong diem: [X/40]
| Nhom | Diem | Danh gia |
|------|------|----------|
| A. Brand consistency | /10 | |
| B. Hierarchy & readability | /10 | |
| C. Conversion elements | /10 | |
| D. Platform fit | /10 | |

Verdict: APPROVE / MINOR FIX (sua theo note, khong can duyet lai) / REDO phan [X] (ly do)

## A. Brand consistency [/10]
- [ ] Logo dung version, vi tri, clear space
- [ ] Mau dung palette brand guideline (khong dung mau gan giong nhung sai hex)
- [ ] Font dung [font heading] / [font body]
- [ ] Tone visual dung brand personality
- [ ] Khong element nao pham do & don't cua guideline
- [ ] Khong stock photo generic lam loang brand
Van de: [van de] → [tai sao] → [cach sua]

## B. Hierarchy & readability [/10]
- [ ] 1 focal point ro rang — khong nhieu diem canh tranh nhau
- [ ] Thu tu doc logic: headline → sub → body → CTA
- [ ] Element quan trong nhat co du visual weight (size, mau, contrast)
- [ ] Headline doc duoc trong 3 giay
- [ ] Body font >= 14px, doc duoc tren man hinh dien thoai
- [ ] Contrast dat WCAG AA (ratio >= 4.5:1); khong text tren nen phuc tap
- [ ] Khong overload — toi da 3 message; negative space du
- [ ] Spacing nhat quan (boi so 8px); khong loi chinh ta / vo font / mat dau
Van de: [van de] → [tai sao] → [cach sua]

## C. Conversion elements [/10]
- [ ] CTA noi bat, mau contrast voi nen, co dong tu + benefit
- [ ] USP / offer xuat hien ro (BOFU: nguoi xem biet nhan duoc gi)
- [ ] Trust elements neu can: so lieu, testimonial, badge
- [ ] Urgency / scarcity neu campaign can
- [ ] Hook du manh (TOFU: dung scroll trong ~1.5 giay)
Van de: [van de] → [tai sao] → [cach sua]

## D. Platform fit [/10]
- [ ] Kich thuoc dung spec kenh
- [ ] Safe zone — text/CTA khong bi UI che hay crop
- [ ] Mobile-friendly (doc duoc o 375px)
- [ ] File size va format dung (JPG/PNG/MP4)
- [ ] Text overlay gon (Meta khuyen nghi duoi 20% dien tich)
- [ ] Email: width 600px, CTA button cao toi thieu 44px
Van de: [van de] → [tai sao] → [cach sua]

## Tom tat action
Giu nguyen: [element] — [ly do tot]
Sua ngay (phai sua):
1. [van de] → [cach sua] → [deadline]
Can nhac (nen sua):
1. [goi y] → [ly do]
Approve khi: [dieu kien cu the]
```

## Platform specs tham chieu nhanh

| Kenh | Kich thuoc | Safe zone |
|------|-----------|-----------|
| Facebook/IG Feed | 1080x1080 (1:1) / 1080x1350 (4:5) | 20px moi canh |
| Facebook/IG Story | 1080x1920 (9:16) | 250px top / 250px bottom |
| TikTok / Reels | 1080x1920 (9:16) | 150px top / 300px bottom |
| Email header | 600x200px | 10px moi canh |
| Landing page hero | 1440px desktop / 375px mobile | headline + CTA thay ngay khong can scroll |

## Decision rules

- Moi nhom duoi 5/10 → REDO nhom do, khong approve tong the.
- Van de brand (nhom A) la blocker — sai brand thi diem cao may cung khong approve.
- REDO qua 50% khoi luong → quay ve brief goc (`42`/`43`/`45`), brief lai cho ro roi moi lam lai.
- MINOR FIX = designer sua theo note va tu export, khong can vong duyet moi.
- Reviewer cam ket tra feedback trong 24h; voi quick asset dang chay campaign, theo SLA cua `48-quick-visual-brief` (30 phut).

## Lien ket skill

- `46-brand-guideline`: can cu cham nhom A — doc truoc khi review.
- `42-brief-hinh-anh` / `43-brief-carousel` / `45-brief-canva` / `12-brief-landing-page`: brief goc de doi chieu design co dung yeu cau.
- `41-campaign-asset-list`: sau khi approve, cap nhat trang thai asset (REVIEW → APPROVED).
- `62-marketing-review`: review tong the content + ads cua Leader — design review la 1 nhanh trong do.

## Checklist chat luong

- [ ] Da nhin tong the 3 giay truoc khi zoom chi tiet
- [ ] Cham du 4 nhom, moi nhom co diem + can cu checklist
- [ ] Moi van de viet theo format van de → tai sao → cach sua
- [ ] Phan biet ro "phai sua" vs "nen sua"
- [ ] Verdict ro rang + dieu kien approve cu the
- [ ] Co muc "giu nguyen" — ghi nhan diem tot, khong chi che
- [ ] Feedback tra trong 24h
- [ ] Trang thai asset trong asset list duoc cap nhat sau review
