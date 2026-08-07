---
name: 34-ai-marketing-os
description: "Khi nguoi dung can thiet ke, audit, nang cap hoac van hanh AI Marketing OS cho team marketing: Brand Hub/source of truth, role-based AI agents/projects, skill chain, ChatGPT x Claude x NotebookLM workflow, MCP/connectors, Notion/Drive second brain, Meta Ads data loop, SOP, weekly review, handoff. Dung khi nhac 'AI marketing OS', 'he thong AI marketing', 'Brand Hub', 'Claude Project', 'AI workflow cho marketer', 'SOP AI team', 'MCP marketing', 'agent marketing', 'second brain marketing'."
metadata:
  version: 1.1.0
  category: operations
license: MIT
triggers:
  - "AI marketing OS"
  - "he thong AI marketing"
  - "Brand Hub"
  - "AI workflow"
  - "SOP AI team"
  - "MCP marketing"
  - "second brain marketing"
related:
  - product-marketing-context
  - 00-ke-hoach-mkt
  - 02-brief-chien-dich
  - 07-bao-cao-marketing
  - 10-tinh-kpi-nguoc
  - 13-phan-tich-du-lieu
  - 21-audit-ads-performance
  - 31-offer-design
---

# AI Marketing OS

Skill nay thiet ke he dieu hanh marketing co AI: nguon su that, vai tro, skill chain, data loop, review cadence, va handoff. Muc tieu la giup team dung AI nhu mot he thong van hanh, khong phai tap hop prompt roi rac.

## Thu thap thong tin

Doc `.agents/product-marketing-context.md` neu co. Neu co file plan, dashboard, SOP, Notion/Drive structure, Ads report, campaign brief, hay lay lam dau vao. Neu thieu thong tin, hoi toi da 4 cau: team hien co, muc tieu 90 ngay, stack dang dung, va diem dau lon nhat. Neu can playbook chi tiet, doc `references/ai-marketing-os-playbook.md`.

## Khi nao dung skill nay

Dung khi user can:

- Xay AI Marketing OS tu dau cho SME, agency, creator-led business, SaaS, education, beauty, service, B2B.
- Audit cach team dang dung AI: qua nhieu chat rieng le, prompt lap lai, mat context, khong co tracking.
- Thiet ke Brand Hub, skill chain, role-based agent/project, MCP/connectors, Notion/Drive second brain.
- Tao SOP daily/weekly/monthly cho content, performance, campaign, reporting, va handoff.

Khong dung skill nay neu user chi can mot output don le. Khi do dung skill cu tuong ung: `00-ke-hoach-mkt`, `01-lich-noi-dung`, `02-brief-chien-dich`, `05-copy-quang-cao`, `07-bao-cao-marketing`, `10-tinh-kpi-nguoc`, `31-offer-design`.

## Nguyen tac

1. **Brand Hub la source of truth.** Neu context khong tap trung, moi agent se tra loi khac nhau.
2. **Vai tro truoc tool.** Dinh nghia CEO/Leader/Content/Designer/Performance truoc khi chon ChatGPT, Claude, NotebookLM, Canva, Notion, MCP.
3. **Skill chain thay vi prompt le.** Moi workflow phai chi ro skill dau vao, output, va skill tiep theo.
4. **Data cu truoc plan moi.** Ke hoach moi phai doc report, dashboard, bottleneck va bai hoc ky truoc.
5. **Human approval o diem rui ro.** Budget, claim, legal, privacy, brand voice, va campaign launch can nguoi duyet.
6. **Tien trinh nho, review deu.** Daily check 15 phut, weekly review 30-60 phut, monthly retro.

## Workflow

### 1. Audit AI stack hien tai

Cham maturity tu 0-4:

| Muc | Dau hieu |
|-----|----------|
| 0 | Dung AI tuy hung, khong co context luu lai |
| 1 | Co prompt mau nhung copy/paste thu cong |
| 2 | Co context file va skill rieng le |
| 3 | Co Brand Hub, role workspace, review cadence |
| 4 | Co connector/data loop, dashboard, second brain, governance |

Neu maturity duoi 2, uu tien foundation truoc khi them automation.

### 2. Thiet ke Brand Hub

Brand Hub toi thieu gom 6 file — moi file co skill tao ra no:

| File Brand Hub | Noi dung | Skill tao file |
|----------------|----------|----------------|
| Brand Guidelines | logo, mau, font, tone, visual do/don't | 46-brand-guideline |
| Brand Voice | personality, tone, vocabulary, banned words, before/after | 35-brand-voice |
| Customer Insight | persona 3 tang, pain, trigger, objection, customer language | 09-insight-khach-hang |
| Positioning & Offer | promise, proof, path, offer ladder | 58-positioning + 31-offer-design |
| KPI Framework | revenue target, funnel KPI, benchmark, decision rules | 10-tinh-kpi-nguoc |
| Campaign Template | phase, budget split, asset list, approval flow | 02-brief-chien-dich + 41-campaign-asset-list |

Quy tac vang: moi lan mot file Brand Hub thay doi, cap nhat lai vao TAT CA role workspace lien quan — bo qua buoc nay, cac workspace dung thong tin cu va output lech nhau.

### 3. Map role workspace

Dung role de tach suy nghi:

| Role | Viec chinh | Repo skill hay dung |
|------|------------|---------------------|
| CEO/Strategy | Huong di, market, offer, budget, KPI | 00, 08, 09, 10, 31, 58, 59, 61 |
| Leader/Campaign | Brief, timeline, review, handoff, retro, team ops | 02, 07, 20, 34, 60, 62-67 |
| Content | Brand voice, calendar, brief, caption, script, copy, seeding | 35-40, 01, 04, 05, 06, 14 |
| Designer | Asset list, brief visual, brand system, review, landing page | 41-50, 12, 30 |
| Performance | Audience, media plan, tracking, structure, test, audit, scale | 51-57, 03, 13, 19, 21 |
| Sales/RevOps | Lead quality, handoff, outreach | 18, 33 |

Neu user dung Claude Projects, ChatGPT Projects/GPTs, NotebookLM, Notion, Drive, hay MCP, map tung tool vao role nay. Khong khoa vao mot vendor neu user chua chon stack.

### 4. Xay skill chain theo workflow

Mac dinh 4 workflow:

| Workflow | Chuoi skill goi y |
|----------|-------------------|
| Onboard brand/client | product-marketing-context -> 09 -> 08 -> 31 -> 10 -> 34 |
| Launch campaign | 02 -> 31 -> 10 -> 01/04/05/06 -> 12 -> 21 -> 07 |
| Weekly performance | 13 -> 03/21 -> 07 -> 34 update Brand Hub |
| Content engine | 35 -> 09 -> 01 -> 36 -> 37/04/05/38 -> 42/43/44 -> 39 -> 40 |
| Performance loop | 51 -> 10 -> 54 -> 53 -> 52 -> 19 -> 21 -> 55/56 -> 07 -> 57 |
| Design pipeline | 41 -> 42/43/45 -> 47 -> 50 |
| Leader cadence | 00 -> 61 -> 02 -> 62/47 -> 07 weekly -> 63 |

Neu co data ky truoc, luon doc truoc khi tao plan moi.

### 5. Thiet lap data va second brain

Toi thieu:

- Storage: Drive/SharePoint/Dropbox cho file va asset.
- Database: Notion/Coda/Sheets cho resource table, campaign archive, case study, decision log.
- Analytics: Meta Ads, TikTok Ads, GA4, CRM, email/Zalo, UTM.
- Connector layer: MCP hoac connector tuong duong cho knowledge base, marketing analytics, design, email, CRM.

Moi output quan trong can co owner, date, source, version, next action.

### 6. Tao cadence van hanh

| Cadence | Noi dung | Output |
|---------|----------|--------|
| Daily 15p | Spend, delivery, comment/inbox, tracking issue | Blocker list |
| Weekly 30-60p | KPI vs target, winner/loser, bottleneck, next action | Weekly decision log |
| Monthly | Revenue, channel mix, offer, team load, Brand Hub changes | OS retro + updated roadmap |
| Quarterly | Market, positioning, offer ladder, tool stack | Strategy refresh |

### 7. Trien khai 5 role project

Neu user dung Claude Projects (hoac ChatGPT Projects/GPTs tuong duong), chuyen OS thanh 5 project: Leader/CEO, Content, Designer, Performance, Knowledge Base. Moi project = custom instruction theo role + skill SOP + knowledge upload. Quy trinh 4 buoc: tao project theo role -> viet custom instruction -> upload skill + knowledge (gioi han ~20 file/project, uu tien skill hay dung) -> test trigger phrase. Chi tiet instruction mau, thu tu uu tien upload, va FAQ: doc `references/ai-marketing-os-playbook.md`. Kho knowledge nen tang de upload: thu muc `knowledge/` cua repo.

### 8. Governance va rui ro

Kiem tra:

- Quyen truy cap: ai duoc xem data KH, Ads, CRM, revenue.
- Claim va bang chung: khong de AI tao claim khi khong co proof.
- Privacy: khong paste PII vao tool khong duoc phep.
- Prompt injection: can than khi doc noi dung tu website, comment, inbox, file ngoai.
- Brand drift: output moi phai doi chieu Brand Hub.

## Output template

```markdown
# AI Marketing OS — [Ten business/team]

## 1. Chan doan hien tai
| Hang muc | Muc 0-4 | Bang chung | Uu tien |

## 2. Brand Hub can co
| File | Tinh trang | Owner | Update cadence |

## 3. Role workspace
| Role | Tool/workspace | Context can nap | Output chinh |

## 4. Skill chain
| Workflow | Skill chain | Input bat buoc | Output |

## 5. Data loop va connector
| Nguon data | Tool/connector | Metric | Tan suat |

## 6. SOP van hanh
| Cadence | Ai lam | Checklist | Noi luu output |

## 7. Roadmap 30-60-90 ngay
| Giai doan | Viec can lam | Owner | Done khi |

## 8. Rui ro va governance
| Rui ro | Cach phong tranh | Ai duyet |
```

## Lien ket skill

- `product-marketing-context`: tao source context dau tien.
- `35-brand-voice`, `46-brand-guideline`, `09-insight-khach-hang`, `58-positioning`, `10-tinh-kpi-nguoc`: tao 6 file Brand Hub.
- `00-ke-hoach-mkt`: tao marketing plan dua vao OS.
- `02-brief-chien-dich`: chuyen strategy thanh campaign.
- `07-bao-cao-marketing`: tao weekly/monthly report cho data loop.
- `13-phan-tich-du-lieu` va `21-audit-ads-performance`: doc data va tim bottleneck.
- `39-content-audit`, `40-next-content-plan`, `57-next-ads-plan`, `63-campaign-retrospective`: vong lap data -> plan ky sau.
- `31-offer-design`, `32-seo-growth`, `33-b2b-lead-gen`: growth modules dua vao OS.
- Kho kien thuc nen tang: thu muc `knowledge/` (10 file tu duy + trien khai theo role).

## Checklist chat luong

- Co Brand Hub ro rang, khong de context nam rai rac trong chat.
- Co role workspace va skill chain, khong chi la danh sach tool.
- Co data loop truoc khi lap plan moi.
- Co daily/weekly/monthly cadence va noi luu output.
- Co owner, deadline, approval gate cho campaign/budget/claim.
- Co phan governance ve privacy, access, prompt injection, va brand drift.
