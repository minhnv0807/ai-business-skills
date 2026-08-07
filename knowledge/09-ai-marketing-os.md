# AI Marketing OS — Kien Truc He Thong Van Hanh Marketing Bang AI

> Cap nhat: 2026-07 | Kien thuc nen tang — tang tu duy. SOP thuc thi xem `skills/vi/34-ai-marketing-os`. Quy trinh phoi hop tool xem `references/ai-tool-orchestration.md`.

## Phan 1: Kien truc tong the — 5 thanh phan

```
BRAND HUB (nguon su that duy nhat)
        |
[5 CLAUDE PROJECTS THEO ROLE]
  - CEO Project (Strategic)
  - Leader Project (Campaign/Client)
  - Content Project (Copy/Script)
  - Designer Project (Brief/Visual)
  - Performance Project (Ads/Data)
        |
[SECOND BRAIN]
  - Notion (operational database)
  - Google Drive (media storage)
        |
[EXTERNAL TOOLS]
  - Meta Ads MCP (data loop)
  - Canva (design output)
  - Email/Zalo (execution)
```

## Phan 2: Brand Hub — nguon su that duy nhat

6 core files ma CEO giu & cap nhat:

| File | Noi dung | Cap nhat khi nao |
|------|----------|------------------|
| **Brand Guidelines** | Logo, colors, fonts, tone, voice | Thay doi brand strategy |
| **Customer Insight** | Persona, pain, trigger, behavior | Moi quy hoac thay market segment |
| **Positioning & Offer** | Promise/Proof/Path, offer architecture | Thay doi positioning |
| **Content Pillar** | 4 pillar, ti le, nguon content | Thay doi strategy noi dung |
| **KPI Framework** | KPI theo tang pheu, benchmark | Thay doi target doanh thu |
| **Campaign Template** | Framework campaign, phases, budget split | Thay doi cach chay campaign |

**Quy tac vang:** 1 file thay doi o Brand Hub → copy vao tat ca 5 Projects. Bo qua → Projects dung thong tin cu.

## Phan 3: 5 Claude Projects theo role

### CEO Project — Strategic Thinking
- **Dung de:** len chien luoc, phan tich insight, xay funnel, he thong hoa SOP, phan tich data, tao bao cao.
- **System prompt focus:** CMO thinking, strategic framework, business impact.

### Leader Project — Campaign & Client Management
- **Dung de:** brief campaign, quan ly client, xay workflow, handle escalation.
- **System prompt focus:** project manager, client communication, execution planning.

### Content Project — Copy & Script
- **Dung de:** viet copy ads, script video, email sequence, landing page.
- **System prompt focus:** copywriter, tam ly mua, hook/angle/CTA.
- **Tool kem:** ChatGPT (brainstorm nhanh).

### Designer Project — Creative Brief
- **Dung de:** brief design, phan tich visual trend, feedback thiet ke, visual strategy.
- **System prompt focus:** creative director, visual communication, brand consistency.
- **Tool kem:** Canva MCP.

### Performance Project — Ads & Data
- **Dung de:** phan tich ads performance, len media plan, decision rules, CPL optimization.
- **System prompt focus:** ads strategist, data analyst, decision maker.
- **Tool kem:** Meta Ads MCP + data analysis.

## Phan 4: Skill files system

### Khi nao dung Skill
Skill la **SOP** — AI doc truoc khi lam task, giong nhan vien doc quy trinh truoc khi lam viec.

### Cau truc skill file (YAML frontmatter)

```yaml
---
name: campaign-brief
description: Viet brief chien dich marketing hoan chinh
trigger: |
  Dung khi user nhac den:
  - "viet brief campaign"
  - "len brief"
  - "ke hoach chien dich"
---

# CAMPAIGN BRIEF STRUCTURE
[noi dung day du]
```

### Phan nhom skill theo function

- **Planning:** campaign-brief, marketing-plan, content-calendar.
- **Content:** content-script, ads-copy, ugc-brief, landing-page-brief.
- **Analysis:** marketing-report, performance-audit, customer-insight, competitor-research.
- **Operations:** kpi-calculator, channel-setup, brandformance-planning.

Repo nay da co san bo skill day du trong `skills/vi/` — dung lam nguon skill upload cho tung Project. Gioi han thuc te: ~20 file/Claude Project, uu tien skill hay dung nhat cho role do.

## Phan 5: Second Brain — Notion + Google Drive

### Google Drive — media storage
- Upload all .md, .html, image files.
- Keep as backup & archive.
- Share link de embed vao Notion.

Workflow: tao file (Claude) → upload Drive → copy shareable link → paste vao Notion.

### Notion — operational database
- **Master table:** all resources, indexed by project/topic.
- **Second Brain:** thong tin, case study, learning.
- **Client pages:** project pages, campaign tracking.

```
Marketing Knowledge & Skills
  - [Database] Master Resource Table
      Fields: Name | Link | Project | Type | Last Updated
  - [Database] Client Portfolio
  - [Database] Case Study
  - [Database] Campaign Archive
```

## Phan 6: Meta Ads MCP integration — data loop

```
Meta Ads Account
      |
Claude hoi: "Pull last 30 days campaign data"
      |
Meta Ads MCP tra ve: CPL, ROAS, lead volume, creative performance
      |
Claude phan tich: "Creative 1 cua Campaign 2 la hero (CPL 11K, 272 leads)"
      |
Output: insight + next actions
```

**Benefit:** 15 phut thay vi 1-2 tieng export CSV + phan tich thu cong. Chi tiet MCP xem `references/mcp-ads-integration.md`.

## Phan 7: Setup sequence — 8 giai doan

1. **Foundation Preparation** — xac nhan brand identity, insight, positioning; KPI structure, team roles.
2. **Brand Hub Creation** — tao 6 core files; test copy vao Projects.
3. **Claude Projects Setup** — tao 5 Projects; paste Brand Hub; custom instructions per Project.
4. **Notion Master Setup** — tao knowledge page; database Master Resource Table; link file tu Drive.
5. **Google Drive Parallel Storage** — tao cau truc thu muc brand; upload Brand Hub + skill files.
6. **Meta Ads MCP Connection** — connect account vao Performance Project; test pull 30 ngay data.
7. **Skill Upload & Testing** — upload skill files vao Projects; test trigger keyword → AI goi dung skill.
8. **Operations Workflow Automation** — set up daily/weekly automation. Vi du: "Moi T2 7AM → Performance Project pull data + tao weekly report".

## Phan 8: Cac loi setup pho bien

### Loi 1: Khong update Brand Hub khi chien luoc thay doi
- **Van de:** setup xong roi khong copy lai → Projects dung thong tin cu.
- **Fix:** moi khi Brand Hub thay doi → copy lai vao tat ca 5 Projects.

### Loi 2: Skill trigger keyword qua specific hoac qua general
- **Van de:** trigger "campaign" → goi nham skill khac; trigger qua la → khong ai dung.
- **Fix:** test trigger truoc khi finalize (dung cau lenh that cua team).

### Loi 3: Projects khong co system prompt ro rang
- **Van de:** "Claude, hay phan tich" → AI khong biet tu goc do nao (CEO hay Designer hay Content).
- **Fix:** moi Project co custom system prompt ro rang theo role.

### Loi 4: Second Brain (Notion) khong update
- **Van de:** output tu Projects khong duoc log vao Notion → mat tri thuc.
- **Fix:** moi tuan → tom tat key insights tu cac Projects vao Notion Master.

## Tom tat

AI Marketing OS la cach **scale team ma khong scale headcount**. Brand Hub la source of truth — cac Projects lay tu do. Khong co skill files thi phai retrain moi khi ai do roi cong ty. Khong co Second Brain thi tri thuc bi mat. Tat ca phai connected.

**Ke tiep:** file `10-business-model-flywheel.md` — mo hinh kinh doanh van hanh tren he thong nay.
