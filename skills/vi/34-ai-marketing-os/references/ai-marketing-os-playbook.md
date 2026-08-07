# AI Marketing OS Playbook

Playbook nay tong hop tu bo tai lieu fullstack marketing cong dong chia se: knowledge foundation, SOP theo vai tro, template plan/dashboard, va skill mau. Dung de nang cap skill theo huong he thong, khong copy nguyen prompt le.

## Nguyen tac chon loc

Tai lieu moi co 4 nhom:

- Knowledge foundation: fullstack brandformance, blueprint 8 thanh phan, content system, channel, Meta Ads, KPI, insight, offer, AI Marketing OS, business model — da chuyen the vao `knowledge/`.
- Kien thuc trien khai: research, strategy, content, performance, report, timeline, benchmark, visual guideline — da chuyen the vao `knowledge/trien-khai/`.
- Bo SOP skill theo vai tro: Leader, Content, Designer, Performance.
- Template MKT: one-page plan, annual/quarter/campaign tracker, dashboard, report, meeting/SLA, AI workflow docs.

Quyet dinh import:

- Import concept he thong: Brand Hub, role workspace, skill chain, data loop, second brain, cadence.
- Import workflow reusable: research -> strategy -> plan -> execute -> measure -> review.
- Import decision rules va dashboard pattern.
- Tu v3.5.0, bo SOP theo vai tro da duoc trien khai day du: skill moi 35-67 (content system, design production, performance ops, leader ops) + lam giau cac skill hien co; phan trung lap voi skill cu duoc gop thay vi tao ban sao.
- Khong khoa vao Claude/ChatGPT/NotebookLM neu user dung stack khac; map theo vai tro truoc.

## AI market fit 2026

AI Marketing OS nen theo 4 xu huong dang on dinh:

1. **Agent Skills / progressive disclosure**: skill goc nho, reference chi doc khi can.
2. **MCP/connectors**: AI can ket noi knowledge base, analytics, design, email, CRM; khong chi paste data thu cong.
3. **Role-based orchestration**: moi role co instruction, context, tool, approval rieng.
4. **Source-of-truth governance**: Brand Hub va decision log giam hallucination, brand drift, va mat tri thuc.

## Kien truc 6 lop

```
Brand Hub
  -> Role Workspaces
  -> Skill Chain
  -> Second Brain
  -> Data/Tool Connectors
  -> Operating Cadence
```

### Lop 1: Brand Hub

6 file bat buoc:

| File | Noi dung | Cap nhat |
|------|----------|----------|
| Brand Guidelines | logo, colors, fonts, tone, visual do/don't | khi doi brand |
| Customer Insight | persona, pain, trigger, objection, language | moi quy hoac khi doi segment |
| Positioning & Offer | promise, proof, path, offer ladder | khi doi offer |
| Content Pillar | pillar, angle, source, CTA, platform | hang thang |
| KPI Framework | revenue, funnel KPI, benchmark, decision rules | khi doi target |
| Campaign Template | phases, budget split, asset, approval | moi campaign |

Brand Hub khong phai archive. No la nguon dang song. Neu cap nhat mot file, log version va thong bao role lien quan.

### Lop 2: Role Workspaces

| Role | Nen suy nghi nhu | Dau vao | Dau ra |
|------|------------------|--------|--------|
| CEO/Strategy | CMO/owner | revenue, market, offer, KPI | roadmap, strategic decision |
| Leader/Campaign | project lead | brief, timeline, resource | task, RACI, review |
| Content | strategist/copywriter | insight, pillar, CTA | calendar, script, copy |
| Designer | creative director | brand guideline, copy, specs | asset brief, review |
| Performance | analyst/media buyer | ads data, tracking, KPI | audit, report, next plan |
| Sales/RevOps | pipeline owner | lead quality, objection | SLA, follow-up, CRM handoff |

Mot user co the dung mot agent duy nhat, nhung output van nen tach theo role de tranh lan man.

### Lop 3: Skill Chain

Chain mau:

| Tinh huong | Chain |
|------------|-------|
| Tao context dau du an | product-marketing-context -> 09-insight-khach-hang -> 08-nghien-cuu-doi-thu -> 31-offer-design |
| Lap ke hoach tong | context -> 10-tinh-kpi-nguoc -> 00-ke-hoach-mkt -> 34-ai-marketing-os |
| Brief campaign | 02-brief-chien-dich -> 31-offer-design -> 01/04/05/06 -> 12-brief-landing-page |
| Danh gia chien dich | 13-phan-tich-du-lieu -> 03-danh-gia-hieu-suat -> 21-audit-ads-performance -> 07-bao-cao-marketing |
| Next plan | report ky truoc -> bottleneck -> 00/02/01/21 tuy van de |
| Content engine thang | 35-brand-voice -> 09 -> 01 -> 36-content-brief -> 37/04/05/38 -> 42/43/44 -> 39-content-audit -> 40-next-content-plan |
| Performance loop | 51-audience-research -> 10 -> 54-media-plan -> 53-tracking-setup -> 52-account-structure -> 19 -> 21 -> 55/56 -> 07 -> 57-next-ads-plan |
| Design pipeline | 41-campaign-asset-list -> 42/43/45 -> 47-design-review -> 50-asset-resize |
| Leader cadence | 00 -> 61-budget-planning -> 02 -> 62-marketing-review/47 -> 07 weekly -> 63-campaign-retrospective |

Rule: neu co output ky truoc, dung no lam input bat buoc.

### Lop 4: Second Brain

De xuat database:

| Database | Field toi thieu |
|----------|-----------------|
| Master Resource | Name, link, type, owner, project, updated, source |
| Campaign Archive | campaign, objective, dates, budget, result, lesson |
| Decision Log | date, decision, data used, owner, next review |
| Case Study | client/project, before, action, result, permission |
| Skill/Prompt Library | skill, trigger, input, output, last tested |

Khong luu moi thu vao chat. Chat la noi lam viec, second brain la noi giu tri thuc.

### Lop 5: Data va connector

Connector category:

| Category | Vi du dung |
|----------|------------|
| Knowledge base | doc Brand Hub, SOP, decision log |
| Marketing analytics | doc dashboard, ads, GA4, CRM |
| Design | tao/review asset brief, Canva/Figma |
| Email/CRM | email/Zalo sequence, lead handoff |
| SEO/GEO | search visibility, schema, directory |

Khi chua co connector, user co the paste export CSV/screenshot/summary. Khi co connector, van phai yeu cau AI noi ro data range va source.

### Lop 6: Cadence

| Cadence | Checklist |
|---------|-----------|
| Daily | spend, delivery, tracking, inbox/comment, blocker |
| Weekly | KPI vs target, winner/loser, bottleneck, next action |
| Monthly | revenue, channel mix, content performance, offer, team capacity |
| Quarterly | market, positioning, Brand Hub, tool stack, governance |

Weekly review chi nen chot 1-3 quyet dinh. Neu co 10 action item, he thong dang thieu uu tien.

## Kien truc 5 role project (Claude Projects hoac tuong duong)

Trien khai OS thanh 5 project theo role — moi project co custom instruction + skill (SOP) + knowledge rieng:

| Project | Vai tro | Skill goi y (repo) | Knowledge goi y |
|---------|---------|--------------------|-----------------|
| Leader/CEO | Chien luoc, brief, review, bao cao CEO | 00, 02, 07, 08, 10, 31, 58-67 | knowledge/01, 02, 04, 06, 08, 10 |
| Content | Content fullstack: caption, script, email, seeding | 35-40, 01, 04, 05, 06, 09, 14 | knowledge/03, 07 + trien-khai/k-c* |
| Designer | Visual & production: brief anh/carousel/video, landing | 41-50, 12, 30 | output 46-brand-guideline + trien-khai/k-c3 |
| Performance | Media buying: plan, test, audit, scale, report | 51-57, 03, 13, 19, 21, 10 | knowledge/05, 06 + trien-khai/k-p*, k-c6 |
| Knowledge Base | Kho tu duy nen tang (khong phai project thuc thi) | — | knowledge/01-10 day du |

Custom instruction cot loi tung role (tom tat, chinh theo brand):

- **Leader:** tu duy muc tieu doanh thu -> KPI -> kenh -> content -> do luong; output .md giao team trien khai ngay; thang than, logic, co so lieu.
- **Content:** viet theo Brand Voice da upload, tham chieu file brand voice truoc moi output; output .md san dang hoac san giao designer; co banned words list.
- **Designer:** tuan thu brand guideline (mau, font, spacing); khong bat dau thiet ke khi chua co brief duyet; output brief .md hoac file .html xem duoc ngay.
- **Performance:** luon tinh nguoc tu doanh thu -> CPL max -> budget; khong tang budget khi CPL dang xau; khong chay ads khi tracking chua verify.

Quy trinh cai dat (Claude Projects; tool khac lam tuong tu):

1. Tao project theo role, dat ten `[Brand] — Content`, `[Brand] — Performance`...
2. Viet custom instruction theo role.
3. Upload skill .md + knowledge .md vao Files. Gioi han ~20 file/project — uu tien skill hay dung nhat.
4. Test trigger phrase tung skill; neu AI khong nhan dung skill, nhac ten skill truc tiep trong cau lenh.

Thu tu uu tien upload khi bi gioi han file:

- Content: brand voice -> insight -> content strategy/calendar -> content brief -> production (caption/script/ads/email) -> brief visual -> do luong.
- Designer: asset list -> canva/image/carousel brief -> design review -> landing page -> con lai.
- Performance: kpi calculator -> media plan -> tracking setup -> ads copy -> A/B test -> audit -> scaling -> con lai.
- Leader: campaign brief -> timeline -> offer -> strategy -> design/ads review -> strategy report -> weekly report -> con lai.

**Quy tac vang:** Brand Hub thay doi -> cap nhat file moi vao TAT CA project lien quan. Bo qua buoc nay, cac project dung thong tin cu va output lech nhau.

FAQ trien khai:

- AI khong dung dung skill: dung trigger phrase chinh xac hoac nhac ten skill ("Dung skill 36-content-brief de...").
- AI khong nho giong brand: kiem tra file brand voice da upload dung project chua; AI doc toan bo file trong project truoc khi tra loi.
- Co nen gop 1 project cho tat ca: khong khuyen khich — moi role can instruction rieng de output chuyen biet.
- Knowledge co can update: co — review sau moi campaign hoac moi quy; xoa file cu tren project, upload ban moi.

## Framework core

### Fullstack Brandformance

Fullstack khong phai biet tat ca. Fullstack la vong lap:

```
PLAN -> EXECUTE -> ANALYZE -> OPTIMIZE
```

Brandformance = moi content/ads vua xay trust vua keo conversion. Formula:

```
Brand message + Offer message + Data/Proof
```

### Blueprint 8 thanh phan

1. Thi truong.
2. Khach hang.
3. San pham/Offer.
4. Kenh.
5. Pheu chuyen doi.
6. He thong noi dung.
7. He thong do luong.
8. Muc tieu doanh thu.

Doc tu duoi len: revenue -> customer -> lead -> budget -> channel -> content -> team.

### Pheu va kenh

Pheu 6 buoc:

```
Tiep can -> Dung lai -> Theo doi -> Tin tuong -> Dan ve -> Chot don
```

Ban trien khai co the dung pheu 7 tang:

```
Traffic -> Raw Lead -> Cold Lead -> Warm Lead -> Hot Lead -> Customer -> Loyal Customer
```

He kenh 4 tang:

1. Traffic: UGC/FGC/brand channels/ads.
2. Trust: website, blog, fanpage, landing page phu.
3. Conversion: landing page, Messenger, Zalo OA, sales call.
4. Nurture: email, Zalo, group, CRM.

### KPI va decision rules

Tinh nguoc:

```
Revenue target / AOV = customers needed
Customers / close rate = leads needed
Leads * CPL = budget needed
```

Dashboard toi thieu:

- CEO: revenue, spend, lead, close, ROAS, cash risk.
- Marketing lead: channel, CPL, CAC, creative, funnel bottleneck.
- Executor: daily delivery, rejected ads, tracking, content status.

Rule: benchmark nganh chi la guide; trend cua chinh account moi la source quan trong nhat.

## AI workflow map

Dung tool theo lop cong viec:

| Lop viec | Tool role |
|----------|-----------|
| Brainstorm nhanh | ChatGPT hoac equivalent |
| Phan tich sau, tong hop, quyet dinh | Claude/Codex hoac equivalent reasoning agent |
| Doc tai lieu nguon va trich dan | NotebookLM/knowledge base/RAG |
| Thuc thi design/content | Canva/Figma/editor/content tools |
| Doc data song | MCP/connectors/export CSV |

Khong day mot tool lam tat ca. He thong tot la biet tool nao lam viec nao.

## Governance checklist

- Khong paste PII, token, cost nhay cam vao workspace khong duoc phep.
- Khong de AI tu tao claim y te/tai chinh/phap ly khi khong co proof.
- Khong cap quyen write vao Ads/CRM neu chua co approval gate.
- Kiem tra prompt injection khi nap website, comment, inbox, file ngoai.
- Moi campaign launch phai co owner va approval.
- Moi Brand Hub update phai co version va date.

## Mau 30-60-90 ngay

### 30 ngay dau

- Tao/cap nhat Brand Hub.
- Chon 2-3 role workspace quan trong nhat.
- Chuan hoa 3 workflow: campaign brief, content weekly, performance report.
- Tao decision log va campaign archive.

### 60 ngay

- Ket noi dashboard/exports vao weekly review.
- Chuan hoa SOP daily/weekly.
- Tao skill chain cho launch va monthly cycle.
- Audit brand drift va context gap.

### 90 ngay

- Ket noi connector/MCP neu kha thi.
- Automation cho bao cao lap lai, nhung van giu human approval.
- Tao case study va learning loop.
- Review tool cost, team capacity, governance.
