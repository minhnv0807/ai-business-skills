# Getting Started

Full onboarding guide from install to first marketing plan.

---

## Prerequisites

- One of: Claude Code, Claude Pro, ChatGPT Plus, Gemini, Cursor, Windsurf, or any AI agent that reads Markdown
- Git (for cloning the repo)
- A product/service you want to market

Optional but recommended:
- Basic understanding of marketing funnels (TOFU/MOFU/BOFU)
- Familiarity with Meta Ads or TikTok Ads Manager

---

## Install

### Path A: Claude Code Plugin (fastest)

```bash
# In Claude Code, type:
/plugin marketplace add minhnv0807/ai-business-skills
/plugin install ai-business-skills
```

Skills auto-activate based on trigger phrases. Just describe what you need.

### Path B: Clone + Global Install

```bash
git clone https://github.com/minhnv0807/ai-business-skills.git
cd ai-business-skills

# macOS / Linux
./install.sh --global

# Windows PowerShell
.\install.ps1 -Global
```

This copies all skills to `~/.claude/skills/marketing/`.

### Path C: Project-scoped install

If you want the skills only for a specific project (not globally):

```bash
cd /path/to/your/project
/path/to/ai-business-skills/install.sh --project
```

This creates `.claude/skills/marketing/` in your project.

### Path D: ChatGPT / Gemini / Cursor

1. Open the skill file you need (e.g., `skills/05-copy-quang-cao/SKILL.md`)
2. Copy the entire content
3. Paste as:
   - **ChatGPT:** Custom Instructions or new GPT's instructions
   - **Gemini:** System prompt or document upload
   - **Cursor:** `.cursorrules` file in your project
   - **Windsurf:** Global rules

---

## First Run — 10 Minutes

### Step 1: Set up product context (5 min)

This is the ONE-TIME setup. Every other skill depends on it.

```
> Set up product marketing context for [your product/service name]
```

AI will ask 12 questions about:
1. Product overview
2. Target audience
3. Personas
4. Pain points
5. Competitors (3 tiers)
6. Differentiation
7. Objections
8. Switching dynamics
9. Customer language (verbatim quotes)
10. Brand voice
11. Proof points
12. Goals

**Tip:** Have your website/landing page open. AI can auto-draft from existing copy.

**Output:** `.agents/product-marketing-context.md` — a 12-section document.

### Step 2: Run any marketing skill (5 min)

Now try any of these. AI reads the context file, doesn't repeat questions:

```
# Strategy
> Plan fullstack marketing for next 3 months

# Content
> Write 30-second TikTok script for launch campaign
> Generate monthly content calendar for May
> Write 6 Facebook ad copy variations

# Performance
> Reverse-calculate budget for 200M VND revenue target
> Audit my last campaign: CPMess 45K, ROAS 1.8x

# Operations
> Brief a landing page for free trial signup
> Set up welcome email sequence (3 emails)
> Check what competitors are posting this month
```

**Expected output:** A complete `.md` file (not a chat response) with:
- Structured sections
- Tables with numbers
- Specific deadlines and owners
- Cross-references to other skills

---

## Core Concepts

### Foundation Skill — `product-marketing-context`

The secret sauce. Instead of re-explaining your product every time, AI reads the context file first.

**Before foundation skill:**
```
You: "Write TikTok script"
AI:  "Sure, what's your product?"
You: "[explains product]"
AI:  "Who's your audience?"
You: "[explains audience]"
AI:  "What's the angle?"
You: "[explains angle]"
AI:  [finally writes script]
```

**With foundation skill:**
```
You: "Write TikTok script"
AI:  [reads .agents/product-marketing-context.md]
AI:  [writes script in 1 response, 2 A/B variants]
```

### Skill Categories

| Category | Color | Focus |
|----------|-------|-------|
| Foundation | Pink | Read first (product-marketing-context) |
| Strategy | Purple | Plan, research, position |
| Content | Orange | Write scripts, copy, calendars |
| Performance | Red | Analyze data, optimize, report |
| Operations | Blue | Set up channels, automation |

### Role SOP Packs (v3.5.0) — skills 35-67

Four role-based operating procedure packs sit on top of the core skills. Each one covers the day-to-day process of a specific seat on a marketing team, with decision rules and quality gates built in:

- **Content system (35-40)** — brand voice, content brief, organic captions, seeding, audit, next plan
- **Design production (41-50)** — asset list, visual briefs, brand guideline, design review, resize
- **Performance ops (51-57)** — audience, media plan, tracking, account structure, scaling, retargeting
- **Leader ops (58-67)** — positioning, GTM, launch, budget, approval gates, retro, team, crisis, vendors

Start here: [Getting Started with Role SOP Packs](getting-started-role-sop.md).

### Workflows — Skill Chains

Some tasks chain multiple skills:

- **Campaign Launch** (14-21 days): 08 → 09 → 00 → 02 → 01+04+05 → 06 → 11+12
- **Monthly Cycle** (3-5 days): 13 → 03 → 07 → 10 → 01
- **Content Production** (weekly): 04 → film → 05 → schedule
- **Content Engine** (monthly loop): 35 → 09 → 01 → 36 → production → visual briefs → 39 → 07 → 40
- **Performance Loop** (ads cycle): 51 → 10 → 54 → 53 → 52 → 19 → 21 → 55/56 → 07 → 57
- **Design Pipeline** (T-14 to D+1): 41 → briefs → 47 → 50
- **Leader Cadence** (quarter/campaign/week): 00 → 61 → 02 → 64 → 62/47 → 07 → 63

See `workflows/` folder for details.

### Agents — Skill Bundles

Think of agents as "marketing employees":

- **MKT Strategist** — planning, research, positioning (skills 00, 02, 08, 09, 16, 17, 58-61)
- **Content Producer** — brand voice, scripts, copy, briefs (skills 01, 04, 05, 06, 35-40, 42-44)
- **Performance Analyst** — data, media plan, reports, scaling (skills 03, 07, 10, 13, 19, 21, 51-57)
- **Channel Operator** — channels, landing pages, email, crisis (skills 11, 12, 14, 15, 18, 49, 66)
- **Design Producer** — asset lists, visual briefs, design review (skills 12, 30, 41-50)
- **Personal Brand Builder** — personal brand, AI avatar (skills 22-28)

### Knowledge Library

The `knowledge/` folder holds foundation thinking (brandformance mindset, funnel and channel systems, KPI measurement, offer architecture) as opposed to the executable SOPs in `skills/`. Upload these into role-based AI projects for context, or use them to onboard new team members. See [`knowledge/README.md`](../knowledge/README.md).

---

## Common Use Cases

### Launching a new product (beauty/spa example)

```
1. > Set up product marketing context for "Luna Spa facial service"
2. > Research competitors in premium facial segment HCMC
3. > Plan fullstack marketing for 3-month launch, budget 50M/month
4. > Write campaign brief for May launch
5. > Generate content calendar for May (TikTok + Facebook + Zalo)
6. > Write 6 Facebook ad copy variants for launch
7. > Write 2 TikTok scripts (A/B) for top-performing ad angle
8. > Brief UGC creators for 5 review videos
9. > Set up landing page for free consultation form
```

9 outputs in ~45 minutes. Each is a production-ready `.md` file.

### Monthly reporting (any business)

```
1. > Analyze Meta Ads data for April (paste CSV or describe numbers)
2. > Audit performance vs KPI target
3. > Write monthly marketing report
4. > Reverse-calculate KPI for May based on April results
5. > Generate content calendar for May
```

### Auditing ad performance

```
> My CPMess is 45K (benchmark says should be 25K). What's wrong?
```

AI walks through diagnostic tree:
- Creative fatigue?
- Audience saturation?
- Wrong targeting?
- Weak offer?

With specific fix suggestions and priority.

---

## Tips for Better Results

### 1. Fill out product-marketing-context completely

The more detail in the context file, the better every skill performs. Spend the full 30-45 minutes filling it out carefully.

### 2. Use customer language verbatim

Don't paraphrase what customers say. Copy exact quotes from reviews, inbox messages, sales calls. Section 9 of context file.

### 3. Update context when you pivot

If target audience changes, update the context. Every skill will reflect the change automatically.

### 4. Start with a skill, not a chat

```
BAD:  "Help me with marketing"
GOOD: "Run skill 00-ke-hoach-mkt for my spa"
GOOD: "Plan marketing for next month" (AI recognizes trigger)
```

### 5. Chain skills via workflows

Instead of running 7 skills separately, use a workflow:

```
> Run campaign-launch workflow for my new product
```

AI chains all 7 skills with handoffs.

### 6. Review outputs, don't accept blindly

AI is smart but not always right. Always review:
- KPI numbers (are they realistic?)
- Channel mix (matches your actual capabilities?)
- Timeline (achievable with your team size?)

Adjust and re-run.

---

## Troubleshooting

### AI doesn't recognize trigger phrases

Make sure:
- Skills installed to right path (`~/.claude/skills/` for Claude Code)
- Restart Claude Code after install
- Try explicit command: `> Use skill 05-copy-quang-cao`

### Output is generic, not specific

Check that `.agents/product-marketing-context.md` exists and is filled out. Without it, AI can't personalize.

### Skills folder not found

```bash
# Verify install path
ls ~/.claude/skills/marketing/

# Re-install
cd ai-business-skills
./install.sh --global
```

### Benchmarks seem off

Benchmarks in `references/benchmarks-vietnam.md` are Vietnam 2025-2026 medians. Your numbers will vary by:
- Industry (F&B vs BDS wildly different)
- Season (Tet +30-50% CPM)
- Creative quality
- Audience competition

Use benchmarks as reference, not absolute.

---

## Next Steps

1. **Read [best-practices.md](best-practices.md)** for power-user patterns
2. **Star the repo** to stay updated
3. **Join discussions** on GitHub Discussions tab
4. **Contribute** your own skill — see CONTRIBUTING.md

Questions? Open an issue: [github.com/minhnv0807/ai-business-skills/issues](https://github.com/minhnv0807/ai-business-skills/issues)
