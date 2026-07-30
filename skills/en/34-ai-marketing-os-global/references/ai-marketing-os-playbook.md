# AI Marketing OS Playbook

This playbook synthesizes community-shared fullstack marketing documents: knowledge foundation files, role SOPs, planning/dashboard templates, and sample skills. Use it to upgrade the repository toward operating-system thinking instead of copying isolated prompts.

## Selection principles

The source documents fall into 4 groups:

- Knowledge foundation: fullstack brandformance, 8-part blueprint, content system, channel strategy, Meta Ads, KPI, insight, offer architecture, AI Marketing OS, and business model (adapted into the repo `knowledge/` library, VN edition).
- Implementation knowledge: research, strategy, content, performance, reporting, timeline, benchmarks, visual guideline.
- Role SOP skill packs: sample skills for Leader, Content, Designer, and Performance roles.
- Marketing templates: one-page plan, annual/quarter/campaign tracker, dashboard, report, meeting/SLA, AI workflow documents.

Import decisions:

- Import reusable system concepts: Brand Hub, role workspaces, skill chains, data loop, second brain, cadence.
- Import repeatable workflows: research -> strategy -> plan -> execute -> measure -> review.
- Import decision rules and dashboard patterns.
- Since v3.5.0 the role SOP packs are fully implemented as skills 35-67 in the Vietnam edition (content system, design production, performance ops, leader ops); overlapping samples were merged into existing skills instead of duplicated. English mirrors are on the roadmap.
- Do not lock the workflow to Claude/ChatGPT/NotebookLM unless the user has chosen that stack; map by role first.

## AI market fit in 2026

An AI Marketing OS should align with 4 durable trends:

1. **Agent Skills / progressive disclosure**: small entry skill, detailed references only when needed.
2. **MCP/connectors**: AI should connect to knowledge bases, analytics, design, email, and CRM instead of relying only on pasted text.
3. **Role-based orchestration**: each role needs its own instructions, context, tools, and approval gates.
4. **Source-of-truth governance**: Brand Hub and decision logs reduce hallucination, brand drift, and knowledge loss.

## Six-layer architecture

```
Brand Hub
  -> Role Workspaces
  -> Skill Chains
  -> Second Brain
  -> Data/Tool Connectors
  -> Operating Cadence
```

### Layer 1: Brand Hub

Required files:

| File | Contents | Update trigger |
|------|----------|----------------|
| Brand Guidelines | logo, colors, typography, tone, visual do/don't | brand changes |
| Customer Insight | persona, pain, trigger, objection, language | quarterly or new segment |
| Positioning & Offer | promise, proof, path, offer ladder | offer changes |
| Content Pillars | pillars, angles, sources, CTA, platform | monthly |
| KPI Framework | revenue, funnel KPI, benchmarks, decision rules | target changes |
| Campaign Template | phases, budget split, assets, approval | every campaign |

Brand Hub is not an archive. It is the living source of truth. When one file changes, log the version and notify the affected role workspaces.

### Layer 2: Role Workspaces

| Role | Thinks like | Input | Output |
|------|------------|-------|--------|
| Strategy | CMO/owner | revenue, market, offer, KPI | roadmap, strategic decision |
| Campaign Lead | project lead | brief, timeline, resource | tasks, RACI, review |
| Content | strategist/copywriter | insight, pillar, CTA | calendar, script, copy |
| Design | creative director | brand guideline, copy, specs | asset brief, review |
| Performance | analyst/media buyer | ads data, tracking, KPI | audit, report, next plan |
| Sales/RevOps | pipeline owner | lead quality, objection | SLA, follow-up, CRM handoff |

A user can run this with one agent, but outputs should still be split by role.

### Layer 3: Skill Chains

Sample chains:

| Situation | Chain |
|-----------|-------|
| Create project context | product-marketing-context-global -> 09-customer-insight-global -> 08-competitor-research-global -> 31-offer-design-global |
| Build overall plan | context -> 10-reverse-kpi-global -> 00-marketing-plan-global -> 34-ai-marketing-os-global |
| Brief campaign | 02-campaign-brief-global -> 31-offer-design-global -> 01/04/05/06 -> 12-landing-page-brief-global |
| Evaluate campaign | 13-data-analysis-global -> 03-performance-eval-global -> 21-ads-audit-global -> 07-marketing-report-global |
| Next plan | previous report -> bottleneck -> 00/02/01/21 depending on issue |

Rule: if a previous output exists, make it required input.

### Layer 4: Second Brain

Suggested databases:

| Database | Minimum fields |
|----------|----------------|
| Master Resource | name, link, type, owner, project, updated, source |
| Campaign Archive | campaign, objective, dates, budget, result, lesson |
| Decision Log | date, decision, data used, owner, next review |
| Case Study | client/project, before, action, result, permission |
| Skill/Prompt Library | skill, trigger, input, output, last tested |

Do not store everything in chat. Chat is for work. The second brain stores institutional knowledge.

### Layer 5: Data and connectors

Connector categories:

| Category | Use |
|----------|-----|
| Knowledge base | read Brand Hub, SOPs, decision logs |
| Marketing analytics | read dashboard, ads, GA4, CRM |
| Design | create/review asset briefs, Canva/Figma |
| Email/CRM | lifecycle email, WhatsApp/Zalo equivalents, lead handoff |
| SEO/GEO | search visibility, schema, directory |

If connectors are not available, users can paste CSV exports, screenshots, or summaries. If connectors are available, still require date range and source.

### Layer 6: Cadence

| Cadence | Checklist |
|---------|-----------|
| Daily | spend, delivery, tracking, inbox/comments, blockers |
| Weekly | KPI vs target, winners/losers, bottleneck, next action |
| Monthly | revenue, channel mix, content performance, offer, team capacity |
| Quarterly | market, positioning, Brand Hub, tool stack, governance |

Weekly review should end with 1-3 decisions. If there are 10 action items, the system lacks prioritization.

## Five role projects (Claude Projects or equivalent)

Deploy the OS as 5 role-based projects — each with its own custom instructions + skill SOPs + knowledge files:

| Project | Role | Focus |
|---------|------|-------|
| Leader/CEO | Strategy & management | Strategy, briefs, timeline, reviews, CEO reporting |
| Content | Fullstack content | Brand voice, captions, scripts, email, seeding, visual briefs |
| Designer | Visual & production | Asset lists, image/carousel briefs, design review, landing pages |
| Performance | Media buying & ads | Media plan, tracking, A/B tests, audits, scaling, ROAS reports |
| Knowledge Base | Foundational thinking | Brandformance mindset, funnels, KPI systems, offer architecture |

Setup flow (Claude Projects; other tools work the same way):

1. Create one project per role, named `[Brand] — Content`, `[Brand] — Performance`, etc.
2. Write role-specific custom instructions (Leader: revenue -> KPI -> channel -> content -> measurement; Content: always reference the uploaded brand voice; Designer: never start design without an approved brief; Performance: reverse-calculate from revenue, never scale on bad CPL, never launch without verified tracking).
3. Upload skill `.md` + knowledge `.md` files. Keep to ~20 files per project — prioritize the most-used skills.
4. Test each skill's trigger phrases; if the AI misses, name the skill explicitly in the prompt.

**Golden rule:** whenever a Brand Hub file changes, re-upload it to ALL affected projects — skipping this leaves projects running on stale context.

## Core frameworks

### Fullstack Brandformance

Fullstack is not knowing everything. Fullstack is the loop:

```
PLAN -> EXECUTE -> ANALYZE -> OPTIMIZE
```

Brandformance = every content/ad asset builds trust and moves conversion. Formula:

```
Brand message + Offer message + Data/Proof
```

### 8-part blueprint

1. Market.
2. Customer.
3. Product/Offer.
4. Channel.
5. Conversion funnel.
6. Content system.
7. Measurement system.
8. Revenue goal.

Read bottom-up: revenue -> customers -> leads -> budget -> channels -> content -> team.

### Funnel and channel system

Six-step funnel:

```
Reach -> Stop -> Follow -> Trust -> Route -> Close
```

Expanded seven-stage funnel:

```
Traffic -> Raw Lead -> Cold Lead -> Warm Lead -> Hot Lead -> Customer -> Loyal Customer
```

Four-layer channel system:

1. Traffic: UGC/FGC/brand channels/ads.
2. Trust: website, blog, social page, secondary landing page.
3. Conversion: landing page, Messenger/WhatsApp/Zalo equivalent, sales call.
4. Nurture: email, messaging, group/community, CRM.

### KPI and decision rules

Reverse math:

```
Revenue target / AOV = customers needed
Customers / close rate = leads needed
Leads * CPL = budget needed
```

Minimum dashboard:

- CEO: revenue, spend, leads, close rate, ROAS, cash risk.
- Marketing lead: channel, CPL, CAC, creative, funnel bottleneck.
- Executor: daily delivery, rejected ads, tracking, content status.

Industry benchmarks are guides; the account's own trend is the most important source.

## AI workflow map

Use tools by work layer:

| Work layer | Tool role |
|------------|-----------|
| Fast ideation | ChatGPT or equivalent |
| Deep synthesis and decisions | Claude/Codex or equivalent reasoning agent |
| Source document reading and citations | NotebookLM/knowledge base/RAG |
| Design/content production | Canva/Figma/editor/content tools |
| Live data reading | MCP/connectors/CSV exports |

Do not force one tool to do everything. A good system assigns tools to the right job.

## Governance checklist

- Do not paste PII, tokens, or sensitive cost data into unapproved workspaces.
- Do not let AI invent medical, financial, legal, or performance claims without proof.
- Do not grant write access to Ads/CRM without an approval gate.
- Check for prompt injection when loading websites, comments, inbox exports, or external files.
- Every campaign launch needs an owner and approval.
- Every Brand Hub update needs version and date.

## 30-60-90 day template

### First 30 days

- Create or update Brand Hub.
- Pick the 2-3 most important role workspaces.
- Standardize 3 workflows: campaign brief, weekly content, performance report.
- Create decision log and campaign archive.

### 60 days

- Connect dashboard/exports into weekly review.
- Standardize daily and weekly SOP.
- Create skill chains for launch and monthly cycle.
- Audit brand drift and context gaps.

### 90 days

- Connect MCP/connectors where feasible.
- Automate repeated reporting while keeping human approval.
- Create case study and learning loop.
- Review tool cost, team capacity, and governance.
