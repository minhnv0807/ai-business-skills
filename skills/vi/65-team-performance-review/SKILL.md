---
name: 65-team-performance-review
description: "Danh gia hieu suat thanh vien team marketing dua tren data: KPI scorecard theo role, strengths co vi du that, areas for improvement, development plan 30-90 ngay, rubric 1-5. Dung khi nhac 'danh gia nhan vien', 'performance review', 'review nhan su', '1:1 review thang', 'nguoi nay perform the nao'."
metadata:
  version: 1.0.0
  category: operations
license: MIT
triggers:
  - "danh gia hieu suat nhan vien"
  - "performance review team"
  - "review nhan su marketing"
  - "1:1 review thang"
  - "danh gia thanh vien team"
  - "feedback cho team member"
  - "development plan nhan su"
output: "File .md — review day du: KPI scorecard, strengths, areas for improvement, development plan 30/90 ngay, rating rubric, next steps"
related:
  - 64-team-brief
  - 63-campaign-retrospective
  - 07-bao-cao-marketing
  - 62-marketing-review
---

# Team Performance Review

> Review khong phai de cham diem — de nguoi do biet can lam gi de gioi hon. Feedback khong co data la y kien chu quan; feedback co data la coaching. Khong duoc co bat ngo trong review: feedback phai duoc noi lien tuc trong ky, review chi la tong ket.

## Thu thap thong tin

Doc lich su brief (`64-team-brief`), output ky truoc, va report (`07-bao-cao-marketing`) neu co. Neu thieu, hoi toi da 4 cau:

1. **Review cho ai, role gi, ky nao?** Content writer / designer / media buyer / channel operator; thang hay quy.
2. **KPI da set dau ky la gi?** Neu dau ky khong set KPI, review nay chi lam duoc dinh tinh — ghi ro han che do.
3. **Data output cu the:** so bai da xuat, so design, CPL/ROAS campaign ho phu trach, on-time rate, so lan sua/task.
4. **Quan sat cu the trong ky:** 2-3 tinh huong that (tot va chua tot) co ngay thang.

## Nguyen tac

1. **Khong bat ngo.** Feedback tieu cuc phai duoc noi ngay khi xay ra, khong don den ky review.
2. **Moi nhan dinh co bang chung.** "Cham chi" khong phai danh gia; "on-time 9/10 task, 2 lan tu de xuat goc content moi" moi la danh gia.
3. **Danh gia hanh vi, khong danh gia tinh cach.** "Nop tre 3 lan khong bao truoc" thay vi "thieu trach nhiem".
4. **Rating nhat quan.** Cung mot tieu chuan cho ca team; khong de quan he tot/xau lam lech thang do.
5. **Review phai dan den ke hoach phat trien.** Khong co development plan thi review chi la bang diem vo dung.
6. **Tai lieu bao mat.** Chi leader va nguoi duoc review.

## KPI theo role

| Role | KPI dinh luong | KPI dinh tinh |
|------|----------------|---------------|
| Content writer | So bai/thang, on-time rate, so lan sua/bai, engagement rate bai minh viet | Bam brand voice, do sac cua goc, chu dong de xuat angle |
| Designer | So asset/thang, on-time rate, ti le asset duyet lan dau, diem design review | Hieu brief, tuan thu brand guideline, xu ly asset gap |
| Media buyer | CPL vs target, ROAS, ti le camp dat KPI, tan suat toi uu | Ky luat tracking, chat luong test log, chu dong bao rui ro |
| Channel operator | SLA phan hoi, ti le kenh setup dung checklist, open/read rate | Xu ly su co, phoi hop cheo phong ban |

Neu dau ky khong set KPI cho role, viec dau tien sau review la set KPI cho ky sau — khong danh gia nguoi bang tieu chuan ho chua tung biet.

## Cau truc ket qua

```markdown
# Performance Review — [Ten] — [Ky]

Role: [role] · Reviewer: [leader] · Ngay: [date]

## I. KPI Scorecard
| KPI da set | Target | Thuc te | % Dat | Ghi chu |
|------------|--------|---------|-------|---------|
| [KPI 1 theo role] | | | | |
| [KPI 2] | | | | |
| On-time delivery rate | | | | |
| So lan sua / task | | | | |

Tong ket KPI: Dat / Gan dat / Khong dat — kem so cu the.

## II. Strengths trong ky
| Diem manh | Vi du cu the (ngay + tinh huong) | Impact len team/KPI |
|-----------|----------------------------------|---------------------|

## III. Can cai thien
| Hang muc | Hanh vi quan sat duoc | Impact thuc te | Ky vong cu the |
|----------|----------------------|----------------|----------------|

## IV. Development plan
Muc tieu 30 ngay:
- [ ] [Skill hoac hanh vi cu the, do duoc]

Muc tieu 90 ngay:
- [ ] [...]

Ho tro tu leader: [training, tai lieu, tan suat check-in]

## V. Feedback tu nhan vien
- Ho thay minh dong gop duoc gi trong ky?
- Ho can ho tro gi tu leader?
- Dang bi chan boi dieu gi ma leader chua biet?
- Muon phat trien theo huong nao?

## VI. Rating tong hop
| Tieu chi | Diem 1-5 | Nhan xet |
|----------|----------|----------|
| Chat luong output | | |
| Dung han | | |
| Chu dong | | |
| Giao tiep/phoi hop | | |
| Toc do hoc va cai thien | | |
| **Tong the** | | |

Thang diem: 1 = can cai thien nhieu · 3 = dap ung ky vong · 5 = vuot ky vong.

## VII. Next steps
- [ ] Gui tai lieu cho nguoi duoc review trong 24h sau buoi 1:1
- [ ] Set nhac follow-up sau 30 ngay
- [ ] Neu co dieu chinh thu nhap: ghi ro muc va ngay hieu luc
```

## Format buoi 1:1 (60 phut)

| Thoi luong | Noi dung |
|------------|----------|
| 5 phut | Hoi ho tu danh gia ky nay truoc |
| 20 phut | Cung doc KPI va data |
| 20 phut | Strengths + areas for improvement, nghe phan hoi cua ho |
| 10 phut | Development plan — thao luan de ho dong y, khong ap dat |
| 5 phut | Feedback cua ho danh cho leader |

Leader chuan bi tai lieu truoc buoi hop, khong viet live trong luc hop.

## Lien ket skill

- `64-team-brief`: nguon du lieu on-time rate va so lan sua/task.
- `62-marketing-review` va `47-design-review`: diem duyet output lam bang chung dinh luong.
- `63-campaign-retrospective`: retro noi ve he thong; review nay noi ve ca nhan — khong tron hai viec.
- `07-bao-cao-marketing`: ket qua kenh/campaign ho phu trach.

## Checklist chat luong

- [ ] Moi nhan dinh co vi du that co ngay thang hoac so lieu.
- [ ] Khong co feedback tieu cuc nao lan dau tien xuat hien trong review.
- [ ] Danh gia hanh vi, khong danh gia tinh cach.
- [ ] Co development plan 30 va 90 ngay voi muc tieu do duoc.
- [ ] Co phan ho tro tu leader, khong chi yeu cau tu nhan vien.
- [ ] Co phan nghe feedback nguoc tu nhan vien.
- [ ] Rating dung cung thang do voi cac thanh vien khac cung role.
