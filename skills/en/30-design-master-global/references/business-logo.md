# Business Logo Mode

**The highest-stakes of the 4 modes** — a logo is a long-term asset used across every touchpoint for years. Requires extra care and a mandatory human-review disclaimer.

## When to use business-logo mode

**Right fit**:
- New brand — brainstorming direction (explore 3-5 variants before picking)
- Logo refresh / redesign — exploring alternatives against the current logo
- Sub-brand / product line logo (e.g. OPA → OPA Academy sub-logo)
- App icon design (square format, scalable down to favicon)

**Wrong fit — switch modes**:
- Personal logo → `personal-brand` monogram
- One-off campaign logo → `business-campaign`
- Mascot character (complex illustrated character) → recommend hiring a human designer; AI does not handle this well
- Pure wordmark (text only) → still use this mode, but flag the output so a human can refine the text in vector

## Human review disclaimer (REQUIRED in output)

🚨 AI-generated logo for brainstorming only. Logo is a long-term asset
— human designer must refine to vector + create monochrome variants
+ test scalability before final ship. Reasons:
- Text in AI-generated logos often warped or misspelled
- Not scalable to vector (raster only)
- No automatic monochrome version
- Not readable when shrunk small (favicon size)
- Stroke weight inconsistent across variants

Always append this note at the end of the output:

> AI-generated logo for brainstorming only. Before shipping final, a human designer should refine the vector (Illustrator/Figma), test scalability from favicon → billboard, and create monochrome variants (single color, inverted, outline).

## Brand identity required (full set — do not skip)

- **Brand name**: exact characters and casing (e.g. "Lumière", "Lattéa")
- **Industry**: one line (e.g. "project management app for SMEs", "specialty coffee chain")
- **Values**: 3-5 words (e.g. "trustworthy + simple + warm")
- **Competitor logos**: paths or descriptions — used in negative prompts to avoid copying (e.g. "avoid Starbucks-style circle + mermaid")
- **Color palette preference**: 1-3 hex codes if available; otherwise suggest based on industry + values
- **Style direction**: minimalist / illustrative / wordmark / icon-based / abstract

If ANY of these 6 fields is missing → BLOCK and grill 5 questions before generating.

## Section anti-patterns

- Generating one final logo — always produce 3-5 variants to brainstorm direction (user picks one → human designer refines)
- Skipping monochrome consideration — generating only full-color marks that won't survive black-and-white printing
- Logo with detailed multi-stroke illustration — not scalable; at favicon size it collapses into a blob
- Logo that copies a competitor's style — forgetting the negative prompt to avoid similar marks
- Mixing languages or accents incorrectly (e.g. dropping accent marks from a brand name like "Lattéa")
- Skipping the human-review disclaimer — user assumes they can ship as-is and pays for it later
- Complex gradients inside the mark — gradients are only acceptable inside a wordmark; the mark itself must be flat

## Prompt composition (multi-variant strategy)

Generate 3-5 variants across 5 different directions:

1. **Wordmark**: stylized brand name typography, no symbol, focus on letterform character
2. **Symbol + wordmark**: simple icon next to or above the text, balanced composition
3. **Mark only**: abstract symbol with no text — for app icons and social avatars
4. **Monogram**: 1-2 stylized initials (e.g. "OP" for OPA)
5. **Letterform**: a single character as the logo (e.g. "L" for Lumière)

Each variant template:
- **Subject**: clean logo design centered, white background, single color or 2-color palette
- **Lighting**: flat, no shadows (logos need to be flat for later vector tracing)
- **Style**: minimalist, scalable, modern, geometric precision
- **Negatives**: "no detailed illustration, no shadows, no gradients (unless wordmark), no extra elements, no warped letters, no spelling errors, no 3D effects, no mockup context (just logo on white)"

## Examples

- **OPA — AI marketing platform**: 5 variants — (1) "OPA" geometric sans wordmark, (2) abstract circuit + "OPA", (3) circular mark with hidden A, (4) "O" letterform, (5) interlocking "OPA" monogram — palette teal #00A8A8 + slate #2C3E50
- **Lattéa coffee chain**: 5 variants — (1) "Lattéa" handwritten warmth, (2) coffee cherry icon + wordmark, (3) abstract bean mark, (4) "L" letterform leaf style, (5) full "Lattéa" lockup — palette earth brown #2B1810 + cream #F5E6D3

## Grill questions (BLOCK if any are missing)

1. Exact brand name (including any accents or special characters)?
2. Industry, one line (e.g. "project management app for SMEs")?
3. 3-5 brand values (e.g. "trustworthy + simple + professional")?
4. Primary style direction: minimalist / illustrative / abstract / wordmark / monogram?
5. Preferred color palette (hex codes if available, otherwise describe the mood)?
6. Competitor logos to AVOID (paste 2-3 links or descriptions for the negative prompt)?
