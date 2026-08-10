---
name: 63-campaign-retrospective
description: "Dung khi campaign DA KET THUC va can rut ra bai hoc dung cho lan sau — scorecard so lieu vs target, cai gi hieu qua, cai gi khong va vi sao co bang chung, bat ngo ngoai du doan, cap nhat playbook va Brand Hub, action item co nguoi chiu trach nhiem. Kich hoat khi user nhac 'retro campaign', 'retrospective', 'post-mortem', 'tong ket chien dich', 'bai hoc tu campaign', 'campaign vua roi rut ra gi', 'lan sau lam khac the nao'. Khong dung cho — bao cao so lieu dinh ky cho sep hoac khach thi dung skill 07-bao-cao-marketing; danh gia hieu suat tung nhan su thi dung skill 65-team-performance-review; ke hoach ads ky tiep thi dung skill 57-next-ads-plan."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "campaign retrospective"
  - "retro campaign"
  - "post-mortem campaign"
  - "tong ket chien dich"
  - "bai hoc tu campaign"
  - "what worked what didn't"
  - "campaign debrief"
output: "File .md — retrospective day du: scorecard, what worked / didn't / surprises, process review, playbook + Brand Hub updates, input cho campaign tiep theo, action items co owner"
related:
  - 07-bao-cao-marketing
  - 60-launch-playbook
  - 02-brief-chien-dich
  - 34-ai-marketing-os
  - 65-team-performance-review
---

# Campaign Retrospective

> Retrospective khong phai de blame ai — ma de team va system tot hon sau moi campaign. Insight tot nhat den tu failure, nhung can tam the an toan de noi that. Retro khong co action = lang phi thoi gian: moi bai hoc phai dan den 1 thay doi cu the trong playbook, Brand Hub hoac quy trinh.

## Thu thap thong tin

Hoi toi da 4 cau:

1. **Campaign nao, timeline nao?** Ten, ngay bat dau/ket thuc, objective goc.
2. **Data final:** Revenue / Leads / CPL / ROAS / Spend — so cuoi cung vs target? (Neu da co report tu `07-bao-cao-marketing`, dung lam dau vao.)
3. **Ai tham gia retro?** Content, Performance, Design, Sales, Leader?
4. **Campaign ket thuc bao lau roi?** Retro phai lam trong 5 ngay sau khi end — memory con tuoi.

## Nguyen tac

1. **Bat buoc sau moi campaign lon** — khong "bo qua vi ban". Khong retro = tra tien hoc phi ma khong nhan bai hoc.
2. **Chi ghi nhan dinh co data support** — "cam giac creative A tot" khong phai insight; "creative A CPL 15K vs trung binh 25K" moi la insight.
3. **Khong blame ca nhan** — chi noi ve system va process. Moi nguoi deu co quyen len tieng.
4. **Moi bai hoc → 1 thay doi cu the** — update playbook, template, Brand Hub, hoac quy trinh; co owner va deadline.
5. **Document de 6 thang sau doc lai van hieu** — va link retro vao brief campaign tiep theo.

## Quy trinh

### Buoc 1 — Chuan bi (truoc buoi retro)

- Pull data final: revenue, leads, CPL, ROAS, spend, timeline adherence, budget variance.
- Gui data cho team truoc buoi hop — hop de thao luan, khong phai de doc so.
- Dat lich 60 phut, co facilitator (thuong la Leader).

### Buoc 2 — Campaign scorecard

| KPI | Target | Actual | % Achieved | vs Campaign truoc |
|-----|--------|--------|-----------|-------------------|
| Revenue | | | | |
| Leads | | | | |
| CPL | | | | |
| ROAS | | | | |
| Spend | | | | |
| Timeline (dung tien do?) | | | | |
| Budget (dung ngan sach?) | | | | |

Overall verdict: **Success** (> 90% KPI) / **Mixed** (60-90%) / **Miss** (< 60%).

### Buoc 3 — What worked (nhan ban lan sau)

| # | What worked | Evidence (so lieu) | Why it worked | Ap dung lan sau |
|---|-------------|--------------------|---------------|-----------------|
| 1 | | | | |
| 2 | | | | |
| 3 | | | | |

Winning patterns can goi ten ro:

- Content angle: angle nao convert tot nhat
- Creative format: video / image / carousel — cai nao work
- Audience: segment nao response tot
- Timing: gio/ngay nao performance tot nhat
- Channel: kenh nao CPL/ROAS tot nhat

### Buoc 4 — What didn't work (tranh lan sau)

| # | What failed | Evidence | Root cause | Decision: Stop / Fix / Test lai |
|---|-------------|----------|-----------|--------------------------------|
| 1 | | | | |
| 2 | | | | |

Root cause phai dao den nguyen nhan goc — "ads kem" chua phai root cause; "audience trung lap voi campaign cu → frequency cao → CTR giam" moi la root cause.

### Buoc 5 — Surprises (khong ngo toi)

- **Positive surprises:** dieu gi tot hon ky vong, tot hon bao nhieu, tai sao — rut ra dieu gi?
- **Negative surprises:** dieu gi xau hon ky vong, te hon bao nhieu, tai sao — phong tranh the nao?

### Buoc 6 — Process & execution review

| Hang muc | Danh gia | Van de gap | Cai thien |
|----------|----------|------------|-----------|
| Brief quality | | | |
| Timeline adherence | | | |
| Communication trong team | | | |
| Review/approval process | | | |
| Launch day execution | | | |
| Data/tracking setup | | | |

Biggest process bottleneck: 1 dieu can cai thien nhat lan sau.

### Buoc 7 — Team callouts

Ghi nhan dong gop cu the: [Ten] — [contribution cu the da tac dong tich cuc den ket qua]. Ghi nhan cong khai, gop y rieng tu.

### Buoc 8 — Playbook + Brand Hub updates va action items

| Tai lieu can update | Thay doi gi | Owner | Deadline |
|---------------------|-------------|-------|----------|
| Launch playbook (`60-launch-playbook`) | Them/sua step: [X] | Leader | |
| Campaign brief template | Dieu chinh section: [Y] | Leader | |
| Brand Hub — Customer Insight | Them insight moi tu campaign: [Z] | | |
| Brand Hub — KPI Framework / benchmark noi bo | Cap nhat benchmark thuc te (CPL, CVR dat duoc) | | |
| Winning creative library | Luu creative winner + ly do | | |

Moi action item phai co owner va deadline — khong co "ca team cung lam".

### Buoc 9 — Input cho campaign tiep theo

- 3 thu nhat dinh dung lai: 1... 2... 3...
- 3 thu nhat dinh lam khac: 1... 2... 3...
- Hypothesis muon test trong campaign toi: [gia thuyet + cach do]

## Facilitation guide

- **Timing:** trong vong 5 ngay sau campaign end.
- **Format:** 60 phut, toan team, facilitator (Leader): 10' scorecard → 15' what worked → 15' what didn't → 10' process → 10' action items & owners.
- **Ground rules:** khong blame ca nhan — chi system va process; moi nguoi deu len tieng; constructive — khong phai venting session.
- **Sau buoi:** Leader tong hop doc trong 24h, share cho ca team va CEO; link vao brief campaign tiep theo.

## Cau truc ket qua

Ten file: `campaign-retro-[ten-campaign]-[YYYYMMDD].md` — gom 9 muc theo quy trinh tren: Scorecard → What worked → What didn't → Surprises → Process review → Team callouts → Playbook/Brand Hub updates → Input campaign sau → Action items co owner.

## Lien ket skill

- `07-bao-cao-marketing`: report final la dau vao data cho scorecard.
- `60-launch-playbook`: bai hoc execution update truc tiep vao playbook.
- `02-brief-chien-dich`: muc "Bai hoc tu campaign truoc" trong brief moi lay tu retro nay.
- `34-ai-marketing-os`: insight moi + benchmark thuc te cap nhat vao Brand Hub.
- `65-team-performance-review`: team callouts va observations la input cho danh gia ca nhan cuoi ky.

## Checklist chat luong

- [ ] Retro lam trong 5 ngay sau campaign end
- [ ] Scorecard day du KPI vs target, co verdict Success/Mixed/Miss
- [ ] Moi muc what worked / didn't co evidence bang so — khong co "cam giac"
- [ ] What didn't co root cause that, khong dung o hien tuong
- [ ] Co it nhat 1 update cho playbook va 1 update cho Brand Hub
- [ ] Moi action item co owner + deadline
- [ ] Co 3 thu dung lai + 3 thu lam khac + hypothesis cho campaign sau
- [ ] Khong co cau blame ca nhan trong document
- [ ] Doc duoc share trong 24h sau buoi retro va link vao brief campaign ke tiep
