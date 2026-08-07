---
name: 60-launch-playbook
description: "Playbook chuan hoa quy trinh launch san pham / offer: timeline T-30 → D+7, checklist tung bo phan (content, design, ads, sales, CSKH), war-room ngay launch, escalation matrix va tieu chi roll-back. Dung khi nhac 'launch playbook', 'quy trinh launch', 'checklist launch', 'war room'."
metadata:
  version: 1.0.0
  category: strategy
license: MIT
triggers:
  - "launch playbook"
  - "quy trinh launch"
  - "checklist launch"
  - "chuan bi launch"
  - "SOP launch"
  - "war room launch"
  - "roll back launch"
  - "launch khong fail"
output: "File .md — playbook 3 giai doan: pre-launch T-30 → T-1, launch day war-room + D+1 → D+7, post-launch; checklist theo bo phan, escalation matrix, tieu chi roll-back"
related:
  - 59-go-to-market
  - 02-brief-chien-dich
  - 41-campaign-asset-list
  - 63-campaign-retrospective
  - 66-crisis-playbook
---

# Launch Playbook

> Playbook khac voi plan — playbook la quy trinh tai su dung duoc, cai tien sau moi lan launch. Launch thanh cong khong phai may man — la ket qua cua chuan bi dung va execution ky luat. Goi `59-go-to-market` truoc de co GTM plan; playbook nay la lop thuc thi chi tiet.

## Thu thap thong tin

Doc GTM plan va campaign brief neu co. Neu thieu, hoi toi da 4 cau:

1. **Launch gi, ngay nao?** San pham/offer, D-day cu the, co blackout date nao trong ky khong?
2. **Team gom nhung ai?** Content, designer, media buyer, sales/CSKH, dev — ai lam duoc gi?
3. **Asset da co gi?** Landing page, creative, email sequence, tracking — trang thai tung thu?
4. **Lan launch truoc (neu co) rut ra bai hoc gi?** Doc retro cu de update playbook, khong dung ban cu nguyen xi.

## Nguyen tac

1. **Playbook update sau moi lan launch** — khong dung ban cu nguyen xi. Bai hoc tu retro phai vao playbook.
2. **"No-go" la quyet dinh hop le** — launch sai thoi diem te hon tre launch.
3. **Leader la nguoi duy nhat quyet go/no-go** — khong delegate.
4. **Tinh nguoc tu D-day** — moi task co 1 owner duy nhat + deadline gio cu the. Buffer 1 ngay truoc launch cho viec unexpected.
5. **Ads setup xong de trang thai Paused** — chi bat vao D-day, khong bat som.

## Phase 1 — Pre-launch (T-30 → T-1)

### T-30 → T-21: Foundation

- [ ] Offer finalized: gia, bundle, guarantee, bonus da lock (khong doi sau moc nay)
- [ ] Positioning + core message chot (tu `58-positioning` / GTM plan)
- [ ] Landing page brief giao cho design/dev
- [ ] Brief content team: angles, hooks, visual direction
- [ ] Brief media buyer: audience research, account structure, ads plan
- [ ] Asset list day du (goi `41-campaign-asset-list`)

### T-21 → T-14: Build

- [ ] Landing page live, tracking verify xanh
- [ ] Email sequence pre-launch viet xong (3-5 emails)
- [ ] Designer nhan brief + asset list (moc T-14)
- [ ] Content teasing bat dau: 1-2 posts/tuan (problem-aware, KHONG reveal offer)
- [ ] Warm audience ads bat (engagement objective, CPM thap)
- [ ] Email #1 pre-launch gui: goi to mo
- [ ] Seeding vao groups/communities lien quan
- [ ] KOC/UGC creator duoc brief (neu dung)

### T-7: Ramp up

- [ ] Teasing tang tan suat: hang ngay
- [ ] Designer nop concept MVP → Leader duyet (T-7); asset phuc tap nhu landing page xong T-5
- [ ] Email #2: reveal van de, hint solution
- [ ] Ads budget tang (traffic to LP de build custom audience)
- [ ] Thu thap social proof: testimonial tu beta users / khach cu
- [ ] FAQ content: xu ly objection thuong gap

### T-3: Final prep

- [ ] Tat ca content da approve va schedule (asset trung binh — carousel, banner set — xong T-3)
- [ ] Ads setup xong, dang Paused — cho bat D-day
- [ ] LP QA lan cuoi: load time, form, payment, mobile
- [ ] Email #3: "Mo cua [ngay] — muon duoc bao dau tien?"
- [ ] Team brief: ai lam gi gio nao ngay launch (war-room roster)
- [ ] Inbox coverage: ai truc, script tra loi san sang
- [ ] Asset nhanh (static, story) xong T-1

### T-1: Go / No-go check

- [ ] Tracking 100% hoat dong
- [ ] Payment gateway test thanh cong
- [ ] Tat ca link dung, khong 404
- [ ] Offer copy dung (gia, bonus, deadline)
- [ ] Team confirm san sang
- **LEADER SIGN OFF: GO / NO-GO** — thieu 1 muc bat ky → NO-GO

## Checklist theo bo phan (truoc D-day)

| Bo phan | Checklist |
|---------|-----------|
| Content | Caption/script/creative da duoc Leader approve; hashtag + link UTM day du; schedule da set hoac co nguoi truc dang; content backup neu UGC giao tre |
| Design | Hinh dung size tung platform; asset theo timeline T-14 brief → T-7 concept → T-5 phuc tap → T-3 trung binh → T-1 nhanh; standby quick asset ngay launch |
| Ads (Media Buyer) | Pixel/tracking verify xanh; ads setup dang Paused; budget dung plan; UTM day du tren moi link; backup creative san (phong ads reject) |
| Sales / CSKH | Nguoi truc inbox theo ca; kich ban tra loi comment/inbox thuong gap; quy trinh chuyen lead cho sales; script xu ly complaint |
| Dev / Ky thuat | LP load nhanh, form hoat dong, payment test; nguoi truc ky thuat ngay launch; phuong an redirect neu LP down |

## Phase 2 — Launch day war-room

War-room = 1 kenh chat chung + lich truc ro rang. Leader dieu phoi, moi bo phan co 1 dau moi. Data check theo gio, quyet dinh trong ngay.

| Gio | Activity | Owner |
|-----|----------|-------|
| 7:00 | Leader check lai toan bo lan cuoi (LP, tracking, lich dang) | Leader |
| 8:00 | Dang announce post chinh thuc | Writer |
| 8:30 | Bat BOFU ads (Meta, TikTok) | Media Buyer |
| 9:00 | Zalo OA / Email blast: "Mo roi!" | Leader |
| 10:00 | Check data dot 1: LP views, form submits, ads delivery | Leader |
| 12:00 | Post lan 2 (angle khac — social proof / urgency) | Writer |
| 15:00 | Review so lieu giua ngay — can adjust khong | Leader |
| 20:00 | Evening push (peak time): story, repost | Writer |
| 23:00 | Tong ket ngay 1: so lieu, anomalies, quyet dinh ngay 2 | Leader |

### D+1 → D+7

| Ngay | Activity | Owner |
|------|----------|-------|
| D+1 | Email follow-up leads chua mua — xu ly objection | Leader |
| D+1 | Danh dau creative winner/loser tu data ngay dau | Media Buyer + Designer |
| D+2 | Post social proof: first buyers / early results | Writer |
| D+3 | Media buyer report → Leader quyet: tang/giu/scale | Leader |
| D+5 | Urgency push: "Con X slot / het bonus ngay Y" | Writer + Leader |
| D+7 | Last call: email + post + Zalo → close cart | Leader + Writer |

### Escalation matrix

| Tinh huong | Muc do | Action | Nguoi xu ly |
|-----------|--------|--------|-------------|
| Tracking khong fire | Khan | Dung ads, fix ngay | Media Buyer + Dev |
| LP down | Khan | Redirect hoac fix trong 30 phut | Dev |
| Payment loi | Khan | Bao Dev + Leader ngay | Dev |
| Ads bi reject | Cao | Bat backup creative | Media Buyer |
| CPL > 3x target | Cao | Bao Leader ngay, cho quyet dinh | Media Buyer |
| Comment tieu cuc viral | Cao | Bao Leader, KHONG tu xu ly — theo `66-crisis-playbook` | Writer + Leader |

### Tieu chi roll-back

Roll-back = tam dung 1 phan hoac toan bo launch de sua. Leader la nguoi quyet.

| Tinh huong | Nguong | Hanh dong roll-back |
|-----------|--------|---------------------|
| Tracking sai / khong fire | Bat ky | Pause toan bo ads den khi fix xong — khong dot budget mu |
| CPL / CPMess vuot nguong | > 3x target sau 24h dau | Pause ads BOFU, giu organic; review creative + audience truoc khi bat lai |
| LP CVR qua thap | < 1/3 muc ky vong sau 48h | Giu ads TOFU, tam dung push BOFU; fix LP (headline, form, toc do) roi bat lai |
| Offer sai (gia/bonus hien thi sai) | Bat ky | Go post loi, sua, dang lai — uu tien sua nhanh hon xin loi tren post cu |
| Su co uy tin / complaint lan rong | Dang lan | Chuyen sang `66-crisis-playbook`, dung moi post ban hang den khi xu ly xong |

Roll-back KHONG phai that bai — chay tiep khi biet dang sai moi la that bai.

## Phase 3 — Post-launch (D+8 tro di)

- [ ] D+8 → D+14: pull toan bo data (revenue, leads, ROAS, CPL, CVR, top channels); media buyer viet performance report; thu thap feedback khach moi; debrief team 30 phut
- [ ] D+14 tro di: quyet dinh evergreen campaign (neu co: always-on ads voi ROAS target ro); document testimonial/case study tu khach dau tien
- [ ] **Update playbook nay** voi bai hoc tu retro (`63-campaign-retrospective`) — buoc bat buoc, khong bo qua vi ban

## Cau truc ket qua

Ten file: `launch-playbook-[ten-san-pham]-[YYYYMMDD].md` — gom: timeline T-30 → D+7 da dien owner + deadline, checklist 5 bo phan, war-room roster, escalation matrix, tieu chi roll-back, muc "bai hoc lan truoc da ap dung".

## Lien ket skill

- `59-go-to-market`: chay truoc — GTM plan la dau vao chien luoc, playbook la lop thuc thi.
- `02-brief-chien-dich`: brief campaign cho team truoc khi vao timeline.
- `41-campaign-asset-list`: liet ke asset can san xuat o moc T-30 → T-21.
- `63-campaign-retrospective`: chay sau moi launch — bai hoc update nguoc vao playbook.
- `66-crisis-playbook`: kich hoat khi comment tieu cuc viral hoac su co uy tin.

## Checklist chat luong

- [ ] Timeline day du T-30 → D+7, tinh nguoc tu D-day
- [ ] Moi task co 1 owner duy nhat + deadline gio cu the
- [ ] Checklist du 5 bo phan: content, design, ads, sales/CSKH, dev
- [ ] Go/no-go checklist T-1 day du — Leader sign off
- [ ] War-room co lich truc theo gio + dau moi tung bo phan
- [ ] Escalation matrix ro: tinh huong → muc do → action → ai xu ly
- [ ] Tieu chi roll-back co nguong so cu the, khong cam tinh
- [ ] Ads setup xong de Paused — chi bat D-day
- [ ] Co buffer 1 ngay truoc launch
- [ ] Co buoc update playbook sau launch
