# AI Visibility Measurement

> Reference for skill `32-seo-growth-global`, section 4. Read when the client asks "are we showing up in ChatGPT / Perplexity / Gemini / AI Overviews, and is what they say about us correct?"
> Operating rules: `skills/en/references/operating-rules-global.md` (esp. rules 3 and 5). Label every finding `observed`, `reported` or `inferred`.

## What this measures, and what it does not

AI answers vary run to run, by account, by location and by model version. So one test run proves almost nothing. What you can build is a repeatable sample: the same prompts, the same wording, on a fixed cadence, logged the same way. Treat the results as a trend over a sample, never as a rank.

## 1. Build the prompt portfolio

Write 20-50 buyer questions. Spread them across the funnel, in the words a buyer would type, not the words in your marketing.

| Funnel stage | Prompt pattern | Example shape |
|--------------|----------------|---------------|
| Problem-aware (TOFU) | "How do I [solve problem]" / "What is [category]" | "How do I reduce [pain]?" |
| Solution-aware (MOFU) | "Best [category] for [segment / constraint]" | "Best [category] for a team of [size] with [requirement]" |
| Comparison (MOFU) | "[Brand] vs [competitor]" / "alternatives to [competitor]" | "[Brand] vs [competitor] for [use case]" |
| Decision (BOFU) | "Is [brand] worth it" / "[brand] pricing" / "[brand] reviews" | "Does [brand] integrate with [tool]?" |
| Local (if relevant) | "[service] in [city]" / "[service] near me" | "Best [service] in [city] for [need]" |
| Multi-turn | A buying conversation: 3-4 follow-ups that add constraints | Start broad, then add budget, then integrations, then "which would you pick" |

Rules for the portfolio:
- **Fix the wording.** Keep a versioned list. Changing the wording changes the test. If a prompt must change, retire the old one and note the date.
- **Include prompts where you should NOT win.** A portfolio where you always appear is probably too branded.
- **Add a branded set.** "What does [brand] cost", "What are [brand]'s limits". These feed the accuracy audit in section 2.
- **Run on 3-4 assistants.** For example ChatGPT, Perplexity, Gemini and Google AI Overviews / AI Mode. Pick the ones your buyers use (ask them) and keep the same set each run.
- **Fixed cadence.** Pick one interval (for example every 2 weeks or monthly) and keep it. Run all prompts in one sitting, logged out or in a clean profile, same location, so runs stay comparable.
- **Repeat each prompt more than once** per run. Answers are non-deterministic; record how often the brand appears across the repeats instead of a single yes or no.

## 2. Per-answer audit columns

One row per prompt x assistant x run.

| Column | Values | Evidence label |
|--------|--------|----------------|
| Prompt ID + run date | text | `observed` |
| Assistant + mode | e.g. "ChatGPT with search on" | `observed` |
| Mentioned? | yes / no | `observed` |
| Cited or linked? | yes (our URL) / yes (third-party page about us) / no | `observed` |
| Facts correct? | correct / wrong / partly / not stated | `observed` against the source of truth |
| Competitor named? | list | `observed` |
| Sentiment around the mention | favorable / neutral / hedged / negative | `inferred` (state the phrase that drove it) |
| Source URLs shown | list | `observed` |
| Notes | what the answer got wrong, or which source it leaned on | `inferred` |

**Source-of-truth sheet.** Before the first run, write the correct facts the answers will be checked against: product names, what is included, limits, availability and anything else that buyers ask about. Where price is a fact the model might state, record the current value with a date and link it to your pricing page. A fact missing from this sheet is marked `unknown`, never guessed.

**Status per check** follows rule 3: `pass`, `fail`, `unknown`, `n_a`. A prompt that could not be run on an assistant is `unknown`, not `fail`.

## 3. Metrics

Compute from the audit sheet, per assistant and overall.

| Metric | Definition | Note |
|--------|------------|------|
| Mention share | Share of sampled answers that name the brand | Report with the sample size next to it |
| Citation rate | Share of sampled answers that link or cite your own domain | Separate from mention share: a brand can be named without being cited |
| Third-party citation share | Share of answers where the cited source is a page about you on someone else's domain | Shows whether rung 4 of the visibility ladder is being fed |
| Accuracy-error count | Number of answers containing a wrong statement about you, with the error type | The most actionable number: each one has a source to fix |
| Competitor co-mention | Which competitors appear alongside you, and how often | Context for the shortlist question |
| Sentiment mix | Count by favorable / neutral / hedged / negative | Needed for the "recommended against" rung |

Benchmark: `[REAL DATA NEEDED]`. No industry baseline for mention share or citation rate is published that we can verify, so set the baseline from your first run and compare against that.

**Noise versus a real shift.** Before changing the content investment because a number moved, check three things: does the move hold across repeat runs, does it show on more than one assistant, and does it persist through the next scheduled run. One assistant changing for one run is noise until proven otherwise.

## 4. AI referral traffic

Some AI assistants send visitors with a referrer. You can group those in GA4.

1. In GA4 Admin, create a **custom channel group** and add a channel (for example "AI assistants") with a rule: source matches regex of the referrer domains.
2. Starting list of domains to match: `chatgpt.com`, `perplexity.ai`, `gemini.google.com`, `copilot.microsoft.com`, and others you see in your own reports. **Check the referrer list on the planning date**: domains and app behaviour change, and new assistants appear.
3. Put this channel above the default "Referral" rule in the group order so the visits are not absorbed there.
4. Compare like with like: same date windows, same property, and note that a custom channel group applies in reporting from the date it is set up, so annotate the setup date in the report.
5. Read landing pages for this channel. Which pages do AI visitors land on, and do those match the pages you want cited?

**Dark traffic.** Many AI-driven visits arrive with no referrer and land in "Direct". An AI channel group therefore undercounts, by an unknown amount (`unknown`). Pair it with:
- A **"How did you hear about us?"** field on forms, checkout or sign-up, with an option for AI assistants and a free-text box. This is `reported` data, labelled as such.
- A watch on branded search and direct traffic trends after content or citation changes. This is `inferred` attribution only, so never present it as proof.

## 5. Crawler log check

Goal: confirm the bots from section 4.3 of the skill actually fetch your key pages, and catch errors.

1. Pull server or CDN logs for a recent window. Filter by the bot user-agent tokens listed on the vendor's own bots page (OpenAI's bots page, Perplexity's, Anthropic's, Google's, Bing's). **Get the current tokens from the vendor page on the planning date; do not copy strings from memory.**
2. For each bot you intend to allow, check: does it request the money pages and the pages you most want cited? What status codes does it get (200 versus 403, 404, 429, 5xx)?
3. A bot that is allowed in robots.txt but gets 403 or challenge pages usually points to a CDN/WAF rule. See the "silent CDN/WAF blocking" check in the skill.
4. Check that `robots.txt` itself returns 200 and parses. A broken robots.txt gets read unpredictably.
5. Some fetches are user-triggered and may not follow robots.txt (ChatGPT-User is one). Do not treat those as search-inclusion signals.
6. Beware of spoofed user agents. For a high-stakes decision, verify the requesting IP against the vendor's published ranges.

Output: a short table of bot, allowed or not in robots.txt, pages fetched, error rate, and the fix owner.

## 6. The fix loop

```
Run -> find an inaccurate or missing answer -> find the source the answer used
   -> fix the source (your page, entity facts, or a third-party page)
   -> record the change and the date -> re-run after N weeks -> compare
```

Steps:
1. **Trace the source.** If the assistant shows citations, open them. If it does not, search for the wrong phrase on the web.
2. **Fix where the fact lives.** Common sources: your own pricing or feature page (stale or ambiguous), an old comparison article, a directory profile, a review site, a Wikipedia-style or knowledge-base entry, your own help docs, a community thread.
3. **Make entity facts consistent.** Same product name, same description, same facts across site, schema (Organization / Product), directory profiles and social profiles.
4. **State the fact plainly on a page of yours** in a self-contained passage (name, what it is, what it includes, limits, date updated), so a model can quote it without inference.
5. **Re-run after N weeks.** N depends on how fast the source updates and how often the assistant refreshes; choose N with the client and write it down. A fix to a third-party page may take longer than one to your own.
6. **Log it.** Prompt ID, error, source, fix, fix date, re-run result. An error that remains after two re-runs becomes a ticket with an owner.

Do not promise a date by which an assistant will change its answer. You control the sources, not the model.

## 7. Content type matters

Do not apply one strategy to every page. Reasonable starting split, each to be checked against your own run results (`inferred`):

| Content type | What assistants tend to need | Action |
|--------------|-----------------------------|--------|
| Product / pricing page | Clear facts, current, no contradictions with other pages | Keep one canonical page; date it |
| Docs / help center | Precise steps and limits | Make headings match how users phrase questions |
| Local page | NAP, hours, services, reviews | Align with the Google Business Profile |
| Ecommerce category / product | Specs, availability, real reviews | Product schema that matches the visible page |
| Comparison / alternative page | Fair criteria and sourced claims | See skill section 4.2 on self-ranked lists |

## 8. Honesty block: what is not measurable today

State these in every report so nobody over-reads the numbers.

- **True query volume.** No assistant gives you how many people asked a question, or how often you were shown.
- **Rank.** There is no stable position; answers are generated, not ranked lists. Say "appeared in X of N sampled answers".
- **Personalization.** Answers differ by user, history, location and model version. Your clean-profile sample is not what every buyer sees.
- **Dark traffic.** Visits without a referrer cannot be assigned to an assistant. The channel group is a floor, not a total.
- **Causality.** A rise in branded search after a citation change is correlation. Label it `inferred`.
- **Model and product changes.** An assistant can change behaviour overnight. Keep the run date and assistant mode in every row.
- **Closed answers.** Some assistants show no sources, so the "cited" column is `unknown` there, not `no`.
- **Vendor tools.** Prompt-tracking tools sample too; ask what prompts, how many repeats and which location they use before trusting a score.

## Report skeleton

```markdown
# AI Visibility Report: [Brand], [period]

## Sample
Prompts: [n] | Assistants: [list + mode] | Repeats per prompt: [n] | Run dates: [dates]

## Metrics (vs baseline run on [date])
| Metric | Baseline | This run | Sample size | Label |
Mention share, citation rate, third-party citation share, accuracy-error count, sentiment mix. Benchmarks: [REAL DATA NEEDED].

## Accuracy errors
| Prompt ID | Assistant | Wrong statement | Source found | Fix | Owner | Re-run date |

## AI referral traffic
Channel group sessions [from GA4], landing pages, form-field answers (reported). Note: dark traffic not counted.

## Crawler log check
| Bot | robots.txt | Pages fetched | Errors | Fix owner |

## Not measurable this period
[from section 8]

## Next actions
[top 3, each with owner and re-run date]
```
