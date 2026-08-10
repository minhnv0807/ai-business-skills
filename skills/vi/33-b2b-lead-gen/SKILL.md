---
name: 33-b2b-lead-gen
description: "Dung khi can tim va tiep can khach hang doanh nghiep — xac dinh ICP, dung danh sach prospect co nguon va ngay verify, cham diem Hot/Warm/Cold, va viet outreach qua Zalo, dien thoai, email. Kich hoat khi user nhac 'tim khach hang B2B', 'danh sach prospect', 'lead gen B2B', 'tiep can doanh nghiep', 'cold outreach', 'ban cho cong ty'. Khong dung cho — khach hang o NUOC NGOAI thi dung skill 29-xuat-khau-b2b; tai lieu ban hang va quan ly pipeline thi dung skill 71-sales-enablement; khach hang le B2C thi dung skill 09-insight-khach-hang."
metadata:
  version: 1.1.1
  category: operations
license: MIT
triggers:
  - "prospecting"
  - "lead gen"
  - "cold email"
  - "outbound"
  - "sales enablement"
  - "lead scoring"
  - "MQL"
  - "SQL"
related:
  - product-marketing-context
  - 08-nghien-cuu-doi-thu
  - 09-insight-khach-hang
  - 14-email-marketing
  - 29-xuat-khau-b2b
  - 31-offer-design
---

# B2B Lead Gen

Skill nay noi marketing voi sales: xac dinh ICP, tim account/contact, uu tien lead, viet outreach, tao sales asset, va set handoff MQL/SQL. Muc tieu la lead co kha nang mua, khong phai list email lon.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` neu co. Hoi toi da 4 cau: ICP, deal size/ACV, thi truong/dia ly, va kenh outbound hien co. Neu user co CRM/export/list, dung no lam baseline. Neu can chi tiet, doc `references/b2b-lead-gen-playbook.md`.

## Chon mode

| User can | Mode |
|----------|------|
| "Tim khach hang tiem nang" | Prospecting |
| "Viet email tiep can" | Cold outreach |
| "Cham diem lead" | Lead scoring |
| "Chuyen lead cho sales" | RevOps handoff |
| "Lam sales deck / objection" | Sales enablement |

## Chon nhanh theo doi tuong ban

Bon nhanh khac nhau ve nguon data, tin hieu mua, va kenh tiep can. Chon **mot** nhanh truoc khi lam gi khac.

| Nhanh | Ban cho ai | "Du chuan" nghia la gi | Nguon chinh |
|-------|-----------|----------------------|-------------|
| **SaaS / cong nghe** | Cong ty phan mem, san TMDT, app | Hop ICP + dung stack lien quan + co tin hieu tang truong | Website/blog cong ty, tin goi von, tin tuyen dung, cong dong dev |
| **Dich vu B2B** | Nha may, nha phan phoi, cong ty dich vu, doanh nghiep vua | Nganh + quy mo + dia ly + tin hieu doi nha cung cap | Cong thong tin doanh nghiep, hoi cho/trien lam, hiep hoi nganh, tin tuyen dung |
| **SMB dia phuong** | Quan an, spa, phong kham, cua hang, trung tam | Dang hoat dong that + tinh trang online + tiep can duoc chu | Google Maps, fanpage, website, san TMDT, hoi nhom dia phuong |
| **Xuat khau** | Buyer nuoc ngoai | — | **Chuyen han sang `29-xuat-khau-b2b`** |

Nhanh xuat khau khong xu ly o day. Skill `29-xuat-khau-b2b` co phan loai buyer quoc te, checklist hoi cho, mau email xuat khau, va phan tich gia canh tranh ma skill nay khong co.

Neu de bai lai (vi du "SMB dia phuong nhung ban phan mem"), chon nhanh chinh roi muon them tin hieu tu nhanh kia.

## Workflow

### 1. Dinh nghia ICP

Xac dinh:

- Firmographic: nganh, size, doanh thu, dia ly.
- Trigger: vua goi von, tuyen role moi, mo chi nhanh, dung tool lien quan.
- Pain: van de co budget de giai quyet.
- Exclusion: ai khong nen ban.

### 2. Tao lead source map

| Nguon | Phu hop |
|-------|---------|
| LinkedIn/Sales Nav | B2B role/title |
| Apollo/Clay/ZoomInfo | Account + contact data |
| Google Maps/local directories | Local SMB |
| GitHub/job posts | Devtool/SaaS intent |
| G2/Capterra/review sites | Competitor/category demand |
| Website visitors/forms | Warm intent |

Tim rong gap 2-3 lan so lead can, vi buoc kiem chung se loai bot rat manh.

### 3. Ky luat bang chung — moi dong lead phai truy nguoc duoc

Day la phan quan trong nhat cua skill nay. Khi duoc yeu cau "tim 50 khach hang tiem nang", AI rat de **tao ra mot danh sach nghe hop ly nhung khong co that**: ten cong ty dung nhung nguoi lien he bia, so dien thoai bia, tin hieu mua bia. List do lam sales mat thoi gian va lam hong uy tin cua ca he thong.

Quy tac cung: **moi dong lead phai co du 3 cot ben duoi. Thieu cot nao thi dong do khong duoc giao.**

| Cot bat buoc | Yeu cau |
|-------------|---------|
| **Nguon** | URL cu the den trang chua thong tin do — khong ghi "Google", "LinkedIn", "internet" |
| **Ngay verify** | Ngay thuc su mo trang do va thay thong tin (YYYY-MM-DD) |
| **Do tin cay** | Cao / Trung binh / Thap theo bang duoi |

| Do tin cay | Dieu kien |
|-----------|-----------|
| **Cao** | Xac nhan boi **2 nguon doc lap**, hoac 1 nguon chinh thuc cua chinh doanh nghiep (website, cong bo dang ky kinh doanh) |
| **Trung binh** | 1 nguon dang tin, khop voi cac ket qua tim kiem khac |
| **Thap** | Suy doan, thong tin cu, hoac chua doi chieu duoc — phai ghi ro cho nao con nghi ngo |

Ba dieu khong duoc lam:

1. **Khong bia so dien thoai, email, ten nguoi.** Chua tim duoc thi de trong va ghi "chua verify" — de trong tot hon dien bua.
2. **Khong ghi "Cao" khi chi tu tim 2 lan tren cung 1 nguon.** Hai ket qua tu cung mot trang khong phai 2 nguon doc lap.
3. **Khong lay data tu nguon ro ri, cho mua ban data khong ro goc, hoac scrape hang loat.** Lay tu trang cong khai cua chinh doanh nghiep va nguon chinh thong; giu URL + ngay de sau nay chung minh duoc nguon goc.

### 4. Cham diem va phan loai

Dung 100 diem:

| Nhom | Diem |
|------|------|
| ICP fit | 35 |
| Intent trigger | 25 |
| Pain/proof | 15 |
| Contact quality | 15 |
| Timing | 10 |

Chi dua vao outreach neu dat nguong toi thieu 60/100. Sau khi cham diem, gan nhan:

| Nhan | Dieu kien |
|------|-----------|
| **Hot** | Hop ICP + **co tin hieu mua cu the neu ten duoc** + tiep can duoc nguoi quyet dinh + contact da verify |
| **Warm** | Hop ICP, tin hieu mua yeu hoac da cu, contact verify duoc |
| **Cold** | Hop ICP long leo, hoac khong co tin hieu, hoac contact chua verify |
| **Bo qua** | Dinh exclusion, da dong cua, trung lap, hoac do tin cay Thap |

**Quy tac cung ve nhan Hot:** khong duoc gan Hot neu **khong neu duoc mot tin hieu mua cu the**. Tin hieu mua la mot su kien co that, chi ra duoc nguon:

- Vua goi von hoac cong bo mo rong.
- Vua tuyen nguoi o vi tri lien quan den van de minh giai.
- Vua doi cong cu / nha cung cap, hoac dang phan nan ve cai dang dung.
- Vua mo chi nhanh, nha may, showroom, hoac vao thi truong moi.
- Vua ra san pham/dich vu moi can den cai minh ban.

**Chi hop ICP thoi thi cao nhat la Warm.** "Cong ty nay dung nganh, dung quy mo" khong phai tin hieu mua — do la ly do de dua vao list, khong phai ly do de goi hom nay.

### 5. Chon kenh tiep can — viet cho thuc te B2B Viet Nam

B2B Viet Nam khong chay bang cold email. Chon kenh truoc, roi moi viet noi dung.

| Kenh | Dung khi nao | Khong dung khi nao |
|------|-------------|-------------------|
| **Zalo** | Kenh chinh. Sau khi da co so cong khai cua doanh nghiep, hoac sau cuoc goi dau | Chua biet gi ve ho — tin nhan chao hang lanh tanh vao Zalo bi chan rat nhanh |
| **Dien thoai** | Kenh chinh voi SMB va doanh nghiep vua. Nhanh nhat de biet co dung nguoi khong | Ngoai gio hanh chinh, hoac khi chua chuan bi duoc cau mo dau ro rang |
| **Email** | Bao gia chinh thuc, ho so nang luc, tai lieu can luu — va sau khi da noi chuyen | Lam kenh cham dau voi SMB: ti le mo rat thap |
| **LinkedIn** | Khach nuoc ngoai, tap doan, cong ty co van phong khu vuc, vi tri cap cao | SMB Viet Nam — phan lon khong dung |
| **Gap truc tiep / hoi cho** | Deal lon, nganh san xuat va phan phoi | Deal nho — chi phi tiep can qua cao |

Quy tac viet cho tung kenh:

- **Zalo** — ngan, xung ho dung vai ve, noi ngay ly do biet den ho, 1 cau hoi de tra loi. Toi da 4-5 dong. Khong gui file nang o tin nhan dau. Khong nhan ngoai gio.
- **Dien thoai** — chuan bi 3 cau: minh la ai, vi sao goi CHO HO (neu ten tin hieu mua), va 1 cau hoi mo. Muc tieu cuoc goi dau khong phai chot — la xac nhan dung nguoi va xin phep gui thong tin qua Zalo.
- **Email** — tieu de noi dung viec, khong giat tit. Than mail duoi 120 tu. Dinh kem chi khi ho da dong y nhan. Luon co cach tu choi nhan tiep.
- **LinkedIn** — connect kem 1 dong ly do that. Khong pitch o tin nhan dau tien.

Chuoi 4 cham mac dinh (SMB va doanh nghiep vua):

1. **Cham 1 — dien thoai:** xac nhan dung nguoi + xin phep gui thong tin.
2. **Cham 2 — Zalo trong 24h:** nhac lai cuoc goi + 1 dan chung ngan (ket qua o don vi cung nganh).
3. **Cham 3 — Zalo hoac email sau 3-5 ngay:** mot thu co ich khong kem dieu kien (bang gia tham khao, checklist, ket qua ra soat nho).
4. **Cham 4 — dong loop:** "Neu chua dung luc thi em dung o day, khi nao can anh/chi nhan em mot cau."

Voi SaaS va khach nuoc ngoai, doi cham 1 thanh email hoac LinkedIn.

Ba loi lam hong outreach o VN: personalization gia (dien ten cong ty vao mau san roi goi la ca nhan hoa), gui hang loat cung mot noi dung vao nhieu Zalo, va nhan tin ngoai gio.

### 6. Tao sales enablement

Neu lead co tiem nang cao, tao:

- One-pager theo persona.
- Objection handling sheet.
- Demo talk track.
- ROI calculator don gian.
- Proposal outline.

### 7. Handoff sang sales/CRM

Moi lead nen co:

- Source (URL), ngay verify, do tin cay, score, trigger, pain, suggested opener.
- Owner, next step, SLA follow-up.
- Status: New, Working, Meeting Booked, SQL, Opportunity, Closed.

### 8. Kiem tra truoc khi giao list

Chay het bang nay truoc khi dua list cho sales. O nao "Khong" thi sua truoc — khong giao.

| Kiem tra | Dat khi |
|---------|--------|
| Nguon that | Moi dong co URL cu the, mo len van ra dung thong tin |
| Ngay verify | Moi dong co ngay, khong dong nao de trong |
| Khong bia | Khong dong nao dua tren suy doan ma khong ghi ro la suy doan |
| Nhan Hot co can cu | Moi dong Hot neu duoc tin hieu mua cu the + contact da verify |
| Ti le hop ly | Khoang 20% Hot / 30% Warm / con lai Cold va Bo qua |
| Khong trung | Da loc trung theo domain (B2B/SaaS) hoac ten + dia chi (SMB dia phuong) |
| Du so luong | Dung so user yeu cau, hoac giai thich vi sao it hon |

**Ti le la mot canh bao gia re nhat.** Neu list ra 80% Hot, gan nhu chac chan dang gan nhan theo cam tinh hoac dang bia tin hieu mua — quay lai bang tin hieu mua va ha nhan xuong. **25 lead da verify tot hon 250 lead phan lon la rac.**

## Output template

```markdown
# B2B Lead Gen Plan — [Brand]
Nhanh: [SaaS / Dich vu B2B / SMB dia phuong]
Ngay tao list: [YYYY-MM-DD]

## 1. ICP
| Segment | Fit criteria | Pain | Exclusion |

## 2. Lead sources
| Source | Query/filter | Data needed | Owner |

## 3. Scoring model
| Signal | Points | Why it matters |

## 4. Prospect table
| Nhan | Account | Contact | Tin hieu mua | Score | Nguon (URL cu the) | Ngay verify | Do tin cay | Kenh cham dau | Next step |

## 5. Top 3-5 nen cham truoc
| Account | Vi sao cham truoc (1 cau) |

## 6. Kiem tra truoc khi giao
| Kiem tra | Dat/Khong | Ghi chu |

Ti le thuc te: Hot __% · Warm __% · Cold __% · Bo qua __%

## 7. Outreach theo kenh
### Cham 1 — [Dien thoai / Email / LinkedIn]
### Cham 2 — Zalo
### Cham 3 — Zalo hoac email
### Cham 4 — dong loop

## 8. Sales enablement assets
| Asset | Persona | Purpose | Draft notes |

## 9. CRM handoff
| Stage | Entry criteria | Owner | SLA |

## 10. Chua verify duoc
[Nhung gi khong xac minh duoc va can nguoi kiem tra lai]
```

## Lien ket skill

- `09-insight-khach-hang`: persona, pain, JTBD — doc truoc khi dung ICP.
- `31-offer-design`: goi B2B / high-ticket — offer phai co truoc outreach.
- `14-email-marketing`: nurture sau khi lead vao list.
- `08-nghien-cuu-doi-thu`: competitor triggers va alternative positioning.
- `29-xuat-khau-b2b`: **khi khach hang muc tieu o nuoc ngoai** — chuyen han sang skill do. No co phan loai buyer quoc te, checklist hoi cho, 3 mau email xuat khau, va phan tich gia canh tranh ma skill nay khong co.

## Checklist chat luong

- Da chon dung nhanh; khach o nuoc ngoai thi chuyen sang `29-xuat-khau-b2b`.
- Lead list co ly do mua, khong chi email.
- Moi dong lead co du 3 cot: Nguon (URL cu the), Ngay verify, Do tin cay.
- Khong dong nao bia contact — chua tim duoc thi de trong va ghi "chua verify".
- Khong lead Hot nao thieu tin hieu mua cu the neu ten duoc.
- Ti le nhan hop ly (khoang 20% Hot / 30% Warm), khong phai 80% Hot.
- Kenh cham dau chon theo thuc te VN — Zalo/dien thoai truoc, email cho bao gia.
- Co exclusion criteria de tranh ban sai nguoi.
- Outreach co relevance that, khong merge-field gia, khong nhan ngoai gio.
- Compliance: co opt-out, khong scrape/spam trai luat, giu duoc nguon goc data.
- Sales handoff co owner va SLA.
- Output co next action ro trong 48h.
