---
name: 34-ai-marketing-os-global
description: "Use when a team wants to design, audit, or operate an AI Marketing OS — a Brand Hub source of truth, role-based AI projects for leader, content, design, performance, and knowledge, skill chains, ChatGPT plus Claude plus NotebookLM workflows, MCP connectors, a Notion or Drive second brain, ads data loops, SOPs, weekly reviews, and handoffs. Trigger on 'AI marketing OS', 'set up our marketing AI system', 'Brand Hub', 'AI workflow for the team', 'MCP for ads data', 'how do I make AI actually useful for marketing'. Not for — one campaign brief, see `02-campaign-brief-global`; the weekly report, see `07-marketing-report-global`; the brand visual rules, see `46-brand-guideline-global`; the product context file, see `product-marketing-context-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "AI marketing OS"
  - "marketing AI system"
  - "Brand Hub"
  - "AI workflow"
  - "AI team SOP"
  - "MCP marketing"
  - "second brain marketing"
related:
  - product-marketing-context-global
  - 00-marketing-plan-global
  - 02-campaign-brief-global
  - 07-marketing-report-global
  - 10-reverse-kpi-global
  - 13-data-analysis-global
  - 21-ads-audit-global
  - 31-offer-design-global
---

# AI Marketing OS (Global)

This skill designs the operating system for AI-assisted marketing: source of truth, roles, skill chains, data loops, review cadence, and handoffs. The goal is to help a team use AI as an operating system, not as scattered one-off prompts.

## Information gathering

Read `.agents/product-marketing-context-global.md` if available. If the user has a plan, dashboard, SOP, Notion/Drive structure, ads report, or campaign brief, use it as input. Ask up to 4 questions: team structure, 90-day goal, current AI/tool stack, and biggest workflow pain. For detailed patterns, read `references/ai-marketing-os-playbook.md`.

## When to use

Use this skill when the user needs to:

- Build an AI Marketing OS for an SMB, agency, SaaS team, creator-led business, education business, service business, or B2B team.
- Audit how the team uses AI: repeated prompts, lost context, disconnected chats, weak reporting, or no source of truth.
- Design a Brand Hub, skill chain, role-based agent/project setup, MCP/connectors, and Notion/Drive second brain.
- Create daily, weekly, and monthly SOPs for content, performance, campaigns, reporting, and handoffs.

Do not use this skill for a single artifact. Use the relevant older skill instead: `00-marketing-plan-global`, `01-content-calendar-global`, `02-campaign-brief-global`, `05-ad-copy-global`, `07-marketing-report-global`, `10-reverse-kpi-global`, or `31-offer-design-global`.

## Principles

1. **Brand Hub is the source of truth.** Scattered context creates inconsistent agent output.
2. **Roles before tools.** Define Strategy, Campaign, Content, Design, Performance, and Sales/RevOps before choosing tools.
3. **Skill chains beat one-off prompts.** Every workflow should define input, skill, output, and next skill.
4. **Old data before new plans.** New plans should read previous reports, dashboards, bottlenecks, and lessons.
5. **Human approval at risk points.** Budget, claims, legal/privacy, brand voice, and campaign launch need review.
6. **Small cycles, steady review.** Daily check, weekly decision review, monthly retro, quarterly refresh.

## Workflow

### 1. Audit the current AI stack

Score maturity from 0-4:

| Level | Signal |
|-------|--------|
| 0 | Ad hoc AI use, no saved context |
| 1 | Prompt templates, but manual copy/paste |
| 2 | Context files and individual skills exist |
| 3 | Brand Hub, role workspaces, and review cadence exist |
| 4 | Connectors/data loops, dashboards, second brain, and governance exist |

If maturity is below 2, build foundation before adding automation.

### 2. Design the Brand Hub

Minimum Brand Hub:

1. Brand Guidelines: logo, color, typography, tone, voice, do/don't.
2. Customer Insight: persona, pain, trigger, objection, customer language.
3. Positioning & Offer: promise, proof, path, offer ladder.
4. Content Pillars: pillars, angles, source content, platform rules.
5. KPI Framework: revenue target, funnel KPI, benchmarks, decision rules.
6. Campaign Template: phases, budget split, asset list, approval flow.

When a file changes, update the relevant role workspaces.

### 3. Map role workspaces

| Role | Main work | Common repo skills |
|------|-----------|--------------------|
| Strategy | Market, offer, budget, KPI | 00, 08, 09, 10, 31 |
| Campaign Lead | Brief, timeline, assets, handoff, retro | 02, 07, 20, 34 |
| Content | Calendar, scripts, copy, UGC, email | 01, 04, 05, 06, 14 |
| Design | Visual brief, brand system, landing page | 12, 30 |
| Performance | Tracking, audit, reporting, data decisions | 03, 07, 13, 19, 21 |
| Sales/RevOps | Lead quality, handoff, outreach | 18, 33 |

If the user uses Claude Projects, ChatGPT Projects/GPTs, NotebookLM, Notion, Drive, or MCP, map each tool to these roles. Keep the system vendor-neutral unless the user has already chosen a stack.

### 4. Build skill chains

Default workflow chains:

| Workflow | Suggested chain |
|----------|-----------------|
| Brand/client onboarding | product-marketing-context-global -> 09 -> 08 -> 31 -> 10 -> 34 |
| Campaign launch | 02 -> 31 -> 10 -> 01/04/05/06 -> 12 -> 21 -> 07 |
| Weekly performance | 13 -> 03/21 -> 07 -> 34 updates Brand Hub |
| Content engine | 09 -> 01 -> 04/05/06 -> 15 -> 07 |

If previous-period data exists, read it before creating a new plan.

### 5. Set up data and second brain

Minimum stack:

- Storage: Drive/SharePoint/Dropbox for files and assets.
- Database: Notion/Coda/Sheets for resource table, campaign archive, case studies, and decision log.
- Analytics: Meta Ads, TikTok Ads, Google Ads, GA4, CRM, email, UTM.
- Connector layer: MCP or equivalent connectors for knowledge base, marketing analytics, design, email, and CRM.

Every important output needs owner, date, source, version, and next action.

### 6. Create operating cadence

| Cadence | Focus | Output |
|---------|-------|--------|
| Daily 15m | Spend, delivery, comments/inbox, tracking issues | Blocker list |
| Weekly 30-60m | KPI vs target, winners/losers, bottleneck, next actions | Weekly decision log |
| Monthly | Revenue, channel mix, offer, team load, Brand Hub changes | OS retro + roadmap |
| Quarterly | Market, positioning, offer ladder, tool stack | Strategy refresh |

### 7. Governance and risk

Check:

- Access: who can see customer data, ads data, CRM, and revenue.
- Claims and proof: do not let AI invent proof or regulated claims.
- Privacy: do not paste PII into unapproved tools.
- Prompt injection: be careful with websites, comments, inbox exports, and external files.
- Brand drift: compare new outputs against the Brand Hub.

## Output template

```markdown
# AI Marketing OS — [Business/team]

## 1. Current diagnosis
| Area | Level 0-4 | Evidence | Priority |

## 2. Brand Hub
| File | Status | Owner | Update cadence |

## 3. Role workspaces
| Role | Tool/workspace | Context loaded | Main output |

## 4. Skill chains
| Workflow | Skill chain | Required input | Output |

## 5. Data loop and connectors
| Data source | Tool/connector | Metric | Cadence |

## 6. Operating SOP
| Cadence | Owner | Checklist | Output location |

## 7. 30-60-90 day roadmap
| Phase | Work | Owner | Done when |

## 8. Risks and governance
| Risk | Mitigation | Approver |
```

## Related skills

- `product-marketing-context-global`: create the initial source context.
- `00-marketing-plan-global`: create marketing plans inside the OS.
- `02-campaign-brief-global`: convert strategy into campaign execution.
- `07-marketing-report-global`: create the reporting layer for the data loop.
- `13-data-analysis-global` and `21-ads-audit-global`: analyze data and find bottlenecks.
- `31-offer-design-global`, `32-seo-growth-global`, `33-b2b-lead-gen-global`: growth modules inside the OS.

## Quality checklist

- Has a clear Brand Hub, not scattered chat context.
- Has role workspaces and skill chains, not just a tool list.
- Uses previous data before creating new plans.
- Defines daily/weekly/monthly cadence and output locations.
- Includes owners, deadlines, and approval gates for campaigns, budget, and claims.
- Covers privacy, access, prompt injection, and brand drift.
