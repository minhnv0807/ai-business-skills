---
name: 59-go-to-market
description: "Dung khi sap ra mat san pham, dich vu hoac khoa hoc MOI va can duong di ra thi truong — chon phan khuc beachhead, thong diep launch, kenh theo tung giai doan pre-launch, launch, post-launch, milestone va tieu chi go/no-go. Kich hoat khi user nhac 'go-to-market', 'GTM', 'ke hoach ra mat san pham', 'launch plan', 'tung san pham moi', 'san pham sap ra ma chua biet ban cho ai', 'ra mat khoa hoc moi', 'vao thi truong moi'. Khong dung cho — checklist va war-room dieu phoi ngay launch thi dung skill 60-launch-playbook; ke hoach marketing dinh ky ca ky thi dung skill 00-ke-hoach-mkt; chot dinh vi truoc do thi dung skill 58-positioning."
metadata:
  version: 1.0.1
  category: strategy
license: MIT
triggers:
  - "go-to-market"
  - "GTM plan"
  - "ke hoach ra mat san pham"
  - "launch plan"
  - "ra mat san pham moi"
  - "ke hoach launch offer"
  - "tung san pham moi"
  - "chuan bi ra mat"
output: "File .md — GTM plan day du: beachhead segment, message, kenh theo giai doan, timeline pre-launch → post-launch, milestone, tieu chi go/no-go"
related:
  - 58-positioning
  - 31-offer-design
  - 60-launch-playbook
  - 10-tinh-kpi-nguoc
  - 61-budget-planning
  - 02-brief-chien-dich
---

# Go-To-Market Plan

> Ra mat san pham khong phai su kien 1 ngay — la quy trinh 3 giai doan: Chuan bi, Launch, Duy tri. That bai launch thuong khong do san pham kem — do khong ai biet, khong ai tin, khong ai mua dung luc. Goi `58-positioning` va `31-offer-design` truoc de co message va offer; goi `60-launch-playbook` sau de co checklist thuc thi chi tiet.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md`, positioning doc va offer doc neu co. Neu thieu, hoi toi da 4 cau:

1. **San pham / offer / khoa hoc can launch la gi?** Gia ban, co early bird / bundle khong, gioi han slot khong?
2. **Target audience chinh: ai, dang o dau, dang nghi gi?** Da co tep warm nao chua (follower, email list, khach cu)?
3. **Timeline va budget:** ngay launch cu the? Budget danh cho launch?
4. **Team va doi thu:** team co gi (writer, designer, media buyer, agency)? Doi thu co san pham tuong tu khong — dang dinh vi the nao?

## Nguyen tac

1. **Khong launch lanh.** Bat dau warm audience it nhat 2 tuan truoc launch — teasing, seeding, email warm-up.
2. **Beachhead truoc, mo rong sau.** Chon 1 phan khuc du nho de thang, du lon de song — thang o do roi moi buoc sang phan khuc ke tiep. Luon bat dau tu SOM (tep tiep can duoc trong 3-6 thang), khong plan theo TAM.
3. **1 core message xuyen suot.** Tat ca content launch phan anh cung 1 message — lay tu positioning statement.
4. **Co plan B.** Ngay launch co su co ky thuat (LP down, ads reject, payment loi) phai co phuong an thay the san.
5. **No-go la quyet dinh hop le.** Launch sai thoi diem te hon tre launch. Nguoi duy nhat quyet go/no-go la Leader — khong delegate.

## Quy trinh

### Buoc 1 — Chon beachhead segment

Cham diem SOM cho 2-3 phan khuc ung vien (thang 1-5 moi cau, toi da 45 diem):

| Nhom tieu chi | Cau hoi cham diem |
|---------------|-------------------|
| Nhu cau thi truong | Noi dau ro rang va dang gia tang? Tan suat tim kiem/thao luan cao? Thi truong ben vung, khong phai trend nhat thoi? |
| Muc do canh tranh | Co nhieu doi thu lon khong? Ho da phu kin kenh chua? Co ngach nho chua ai truyen thong ro? |
| Kha nang tiep can | Co san kenh/tep phu hop? Test duoc voi ngan sach thap? Khach de ra quyet dinh? |

Quyet dinh: >= 30 diem → chon lam beachhead, launch ngay. 25-30 → can nhac, thu hep them. < 25 → xem lai san pham hoac phan khuc.

Dau hieu khach gia tri cao trong beachhead: LTV cao, it roi bo, tu gioi thieu nguoi khac. Cau hoi loc: "Neu ngay mai san pham bien mat, ban se lam gi?" — cau tra loi cang tiec cang dung tep.

### Buoc 2 — Chot offer va message launch

Offer summary (lay tu `31-offer-design`):

| Hang muc | Chi tiet |
|----------|----------|
| Ten san pham | |
| Gia chinh thuc / Early bird / Bundle | |
| Thoi gian mo ban + gioi han slot | |
| Guarantee / cam ket | |
| USP — 1 cau khac biet | |

Message hierarchy cho launch — 5 tang, dung theo thu tu trong moi content:

1. **Hook** (pain / desire) → 2. **Solution** (tai sao san pham nay) → 3. **Proof** (bang chung) → 4. **Offer** (cu the nhan duoc gi) → 5. **Urgency** (tai sao mua ngay).

Audience insight bat buoc co: chan dung, pain point, desire, objection chinh, trigger mua.

### Buoc 3 — Kenh theo giai doan

| Kenh | Giai doan | Noi dung | KPI |
|------|-----------|----------|-----|
| Facebook / Meta | Pre + Launch | Teasing → Announce → Urgency | Reach, Leads |
| TikTok | Pre + Launch | Hook video, testimonial | Views, CTR |
| Email / Zalo OA | Pre + Launch | Warm-up sequence → offer → last call | Open rate, CVR |
| Seeding group/community | Pre-launch | Problem-aware content, khong reveal offer | Engagement |
| Google Ads / Search | Launch | Search intent, brand keyword | CVR, ROAS |

Nguyen tac chon: phai co ca kenh REACH (loi traffic) va kenh CONVERT (chot don) — 1 kenh khong lam duoc ca 2 viec. Uu tien kenh khach beachhead dang tap trung va minh co loi the that.

### Buoc 4 — Timeline 3 giai doan

**PRE-LAUNCH (T-4 → T-1 tuan):**

| Tuan | Activity | Owner | Output |
|------|----------|-------|--------|
| T-4 | Hoan thien offer + landing page live | Leader + Dev | LP live, tracking xanh |
| T-3 | San xuat content teasing (3-5 pieces) | Content | Posts ready |
| T-2 | Bat dau seeding + warm audience ads | Content + Perf | Engagement, custom audience |
| T-1 | Email/Zalo pre-launch sequence | Leader | Warm list |
| T-3 ngay | Ads setup + verify tracking | Media Buyer | Ads o trang thai Paused |
| T-1 ngay | Final check toan funnel → go/no-go | Leader | Quyet dinh GO |

**LAUNCH WEEK:**

| Ngay | Activity | Kenh | Owner |
|------|----------|------|-------|
| D-day sang | Announce chinh thuc | Tat ca | Leader |
| D-day | Bat ads BOFU | Meta, TikTok | Media Buyer |
| D+1 | Email follow-up leads chua mua | Email | Leader |
| D+2 | Social proof — review khach dau tien | Content | Writer |
| D+3 | Media buyer report → quyet dinh tang/giu/scale | — | Leader |
| D+5 | Urgency push — con X slot / het han bonus | Tat ca | Leader |
| D+7 | Close cart — email + post cuoi | Email + Social | Leader |

**POST-LAUNCH (D+8 → D+14):** tong ket so lieu (revenue/leads/ROAS/CPL), thu thap feedback khach de cai san pham + lay testimonial, retrospective voi team, quyet dinh evergreen campaign.

### Buoc 5 — Milestone va go/no-go

Milestone theo giai doan:

| Milestone | Thoi diem | Tieu chi dat |
|-----------|-----------|--------------|
| M1 — Offer + LP ready | T-4 | LP live, tracking verify, offer lock (gia, bonus, deadline) |
| M2 — Audience warm | T-1 | Tep warm du lon: [X] engagement / [Y] email list / custom audience >= [Z] |
| M3 — Go/no-go | T-1 ngay | Qua het checklist go/no-go ben duoi |
| M4 — Mid-launch check | D+3 | CPL/CPMess trong nguong, co don dau tien |
| M5 — Close + retro | D+7 → D+14 | Dat >= [X]% target, retro hoan thanh |

**Checklist go/no-go (T-1 ngay, Leader sign off):**

- [ ] Tracking 100% hoat dong (pixel fire, UTM day du)
- [ ] Payment gateway test thanh cong
- [ ] Tat ca link dung, khong 404
- [ ] Offer copy dung (gia, bonus, deadline)
- [ ] Team confirm san sang, co nguoi truc inbox
- [ ] Plan B cho su co ky thuat da co

Thieu bat ky muc nao → NO-GO, doi launch. Khong launch "tam" roi fix sau.

### Buoc 6 — Success metrics

| Metric | Target | Cach do |
|--------|--------|---------|
| Revenue launch week | | |
| So don / slot ban | | |
| CPL / CPMess | | |
| ROAS | | |
| Email open rate | | |
| Landing page CVR | | |

Target tinh nguoc tu revenue muc tieu bang `10-tinh-kpi-nguoc` — khong dat target theo cam giac.

## Cau truc ket qua

Ten file: `gtm-plan-[ten-san-pham]-[YYYYMMDD].md`

```markdown
# GTM Plan — [Ten san pham] — Launch [ngay]

## 1. Product & offer summary
| Ten / Gia / Early bird / Slot / Guarantee / USP |

## 2. Beachhead segment
- Diem SOM: [X]/45 — quyet dinh:
- Chan dung + pain + desire + objection + trigger:

## 3. Positioning & messaging
- Core message (1 cau):
- Message hierarchy: Hook → Solution → Proof → Offer → Urgency

## 4. Channel plan theo giai doan
| Kenh | Giai doan | Noi dung | KPI |

## 5. Timeline
[Pre-launch T-4 → T-1 | Launch week D-day → D+7 | Post-launch D+8 → D+14]
| Moc | Activity | Owner | Output | Deadline |

## 6. Milestone & go/no-go
| Milestone | Thoi diem | Tieu chi |
- Checklist go/no-go T-1:

## 7. Success metrics
| Metric | Target | Cach do |

## 8. Plan B
| Su co | Phuong an |
```

## Lien ket skill

- `58-positioning`: chay truoc — core message launch lay tu positioning statement.
- `31-offer-design`: chay truoc — offer phai chot xong truoc khi len GTM.
- `10-tinh-kpi-nguoc`: tinh target leads/budget tu revenue muc tieu.
- `61-budget-planning`: phan bo budget launch theo giai doan.
- `60-launch-playbook`: chay sau — playbook thuc thi chi tiet tung ngay, war-room, escalation.
- `02-brief-chien-dich`: chuyen GTM plan thanh brief cho team content + performance.

## Checklist chat luong

- [ ] Beachhead chon bang SOM scoring, khong chon theo cam giac
- [ ] Offer summary day du: gia, early bird, slot, guarantee, USP
- [ ] Message hierarchy du 5 tang: Hook → Solution → Proof → Offer → Urgency
- [ ] Kenh co ca REACH va CONVERT, moi kenh co vai tro theo giai doan
- [ ] Warm audience bat dau >= 2 tuan truoc launch
- [ ] Timeline day du 3 giai doan, moi task co owner
- [ ] Milestone co tieu chi dat cu the, do duoc
- [ ] Checklist go/no-go day du — Leader la nguoi sign off
- [ ] Success metrics tinh nguoc tu revenue target
- [ ] Co plan B cho it nhat 3 su co (LP down, ads reject, payment loi)
- [ ] Sau launch co lich retrospective (goi 63-campaign-retrospective)
