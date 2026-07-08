---
name: 33-b2b-lead-gen
description: "Khi nguoi dung muon tim va chuyen doi lead B2B: prospecting, outbound list, ICP account list, cold email, lead scoring, MQL/SQL handoff, sales enablement, pitch deck, objection handling, demo script, CRM pipeline, RevOps. Dung khi nhac 'tim lead', 'prospect list', 'cold email', 'outbound', 'sales deck', 'lead scoring', 'CRM', 'MQL', 'SQL', 'pipeline'."
metadata:
  version: 1.0.0
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

### 3. Cham diem va uu tien

Dung 100 diem:

| Nhom | Diem |
|------|------|
| ICP fit | 35 |
| Intent trigger | 25 |
| Pain/proof | 15 |
| Contact quality | 15 |
| Timing | 10 |

Chi dua vao outreach neu dat nguong toi thieu 60/100.

### 4. Viet outbound sequence

Sequence mac dinh 4 cham:

1. Email 1: pain + relevance + 1 CTA nhe.
2. Email 2: proof/case + cau hoi ngan.
3. Email 3: value asset / audit mini.
4. Breakup: xin phep dong loop.

Tranh spam, claim qua da, va personalization gia.

### 5. Tao sales enablement

Neu lead co tiem nang cao, tao:

- One-pager theo persona.
- Objection handling sheet.
- Demo talk track.
- ROI calculator don gian.
- Proposal outline.

### 6. Handoff sang sales/CRM

Moi lead nen co:

- Source, score, trigger, pain, suggested opener.
- Owner, next step, SLA follow-up.
- Status: New, Working, Meeting Booked, SQL, Opportunity, Closed.

## Output template

```markdown
# B2B Lead Gen Plan — [Brand]

## 1. ICP
| Segment | Fit criteria | Pain | Exclusion |

## 2. Lead sources
| Source | Query/filter | Data needed | Owner |

## 3. Scoring model
| Signal | Points | Why it matters |

## 4. Prospect table
| Account | Contact | Trigger | Score | Suggested opener | Next step |

## 5. Outreach sequence
### Email 1
Subject:
Body:

### Follow-ups

## 6. Sales enablement assets
| Asset | Persona | Purpose | Draft notes |

## 7. CRM handoff
| Stage | Entry criteria | Owner | SLA |
```

## Lien ket skill

- `09-insight-khach-hang`: persona, pain, JTBD.
- `31-offer-design`: goi B2B / high-ticket.
- `14-email-marketing`: nurture sau khi lead vao list.
- `08-nghien-cuu-doi-thu`: competitor triggers va alternative positioning.

## Checklist chat luong

- Lead list co ly do mua, khong chi email.
- Co exclusion criteria de tranh ban sai nguoi.
- Outreach co relevance that, khong merge-field gia.
- Compliance: co opt-out, khong scrape/spam trai luat.
- Sales handoff co owner va SLA.
- Output co next action ro trong 48h.
