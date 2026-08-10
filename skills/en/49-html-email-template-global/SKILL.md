---
name: 49-html-email-template-global
description: "Use when responsive HTML email has to render correctly in every client — table-based structure, inline CSS, 600px max width, dark mode handling, quirks for Gmail, Apple Mail, Outlook and Yahoo, bulletproof buttons, and a pre-send test checklist, shipping a self-contained .html file to paste into Klaviyo, Mailchimp, HubSpot, or Brevo. Trigger on 'HTML email', 'code an email template', 'responsive email', 'why does my email break in Outlook', 'email dark mode is broken', 'the newsletter looks wrong on mobile'. Not for — sequence strategy and subject lines, see `14-email-marketing-global`; a web page, see `12-landing-page-brief-global`; brand colors and fonts, see `46-brand-guideline-global`."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "HTML email"
  - "code an email"
  - "email template"
  - "responsive email"
  - "email broadcast HTML"
  - "why does my email break in Outlook"
  - "email dark mode"
output: "A single self-contained .html file — paste it into the ESP (Klaviyo, Mailchimp, HubSpot, Brevo) and send. Ships with a client test checklist."
related:
  - product-marketing-context-global
  - 14-email-marketing-global
  - 46-brand-guideline-global
  - 47-design-review-global
  - 12-landing-page-brief-global
---

# HTML Email Template (Global)

Email HTML is not web HTML: it needs table layout, inline CSS, and avoidance of everything clients do not support. The bar is simple — it looks right in Gmail, Apple Mail, Outlook, and Yahoo, and it reads on a 375px phone. No exceptions. Content and sequence come from `14-email-marketing-global`; this skill handles the code.

## Information gathering

Read the brand guideline (`46-brand-guideline-global`) and the email content from `14-email-marketing-global` if available. If information is missing, ask up to 4 questions:

1. **Email type and layout?** Welcome, broadcast, nurture, offer, or transactional — single column, two columns with a product image, or a multi-section newsletter?
2. **Which sections?** Header, hero, body, social proof, CTA, footer — is there a hero image?
3. **Is the copy written?** Or should the template ship with placeholders? Where does the primary CTA link?
4. **Which ESP sends it?** Klaviyo, Mailchimp, HubSpot, Brevo, Braze, or other — merge tag syntax differs per platform.

## Principles

1. **Table layout only — no div/flexbox/grid/float/position:absolute.** Outlook on Windows renders through the Word engine and does not support them.
2. **Inline all CSS.** Gmail can strip `<style>` blocks; keep only media queries and dark-mode rules in `<style>`, and inline everything else.
3. **600px maximum width**, degrading to 375px.
4. **System-font fallbacks:** '[body font]', Arial, Helvetica, sans-serif. Never depend on a web font — many clients will not load it.
5. **Every `img` needs alt text plus width and height attributes** so a blocked-image inbox still reads correctly.
6. **Unsubscribe link and a physical postal address are legally required** (CAN-SPAM in the US, GDPR and PECR in the EU/UK, CASL in Canada). Honor opt-outs promptly.
7. **Test on mobile first.** The majority of opens are on a phone.
8. **One self-contained .html file, under 100KB** — Gmail clips messages past roughly 102KB.

## Workflow

### 1. Choose the layout

| Layout | Use for |
|--------|---------|
| Single column | Broadcast, nurture — most readable, fewest rendering bugs |
| Two column (image + text) | Offer emails with a product image |
| Multi-section newsletter | Digest, updates — one table block per section |

### 2. Build to the technical spec

```
Container: 600px desktop / 100% mobile
Outer background: light neutral (e.g. #F4F4F4)
Body background: [background color] (usually white)
Font: '[body font]', Arial, Helvetica, sans-serif
Body font-size: 16px / line-height: 1.6
Mobile breakpoint: max-width 480px
```

Design tokens come from the brand guideline:

- Header: ground [primary color], reversed logo, padding 20px.
- Hero: ground [primary color] or a gradient from [primary color] to [secondary color]; headline bold 28px in a light fill; subtext 16px; CTA button.
- Body: light ground, padding 40x48px desktop / 24x20px mobile; H2 bold 22px in [strong text color]; body 16px, line-height 1.7.
- CTA button: ground [primary color], bold 16px light text, padding 14x32px, radius 8px, `display:inline-block`, no underline. Outlook Windows will not draw `border-radius` — accept the square fallback, and never use an image as the button.
- Social proof: quote on [light background color], 4px left border in [primary color], attributed name and role.
- Footer: light neutral ground, 13px [muted text color] — small logo around 80px, website and social links, postal address, unsubscribe, copyright.

### 3. Fill the sections

- Header: logo, centered.
- Hero: optional preheader text, headline (max 60 characters), subtext (max 100 characters), CTA button, optional hero image 600x300 with alt text.
- Body: greeting with a merge tag, 2-3 opening sentences, main content in short paragraphs (max four sentences), bulleted content built as table rows rather than `ul` for safer rendering, optional secondary CTA.
- Footer (mandatory): company postal address, unsubscribe line ("You are receiving this because you signed up at [website] | Unsubscribe"), copyright.

### 4. Handle mobile and dark mode

```css
@media only screen and (max-width: 480px) {
  /* container: 100% width */
  /* body font: 15px */
  /* CTA: full width, centered */
  /* padding: 24px 20px */
  /* images: 100% width */
}
```

Dark mode:

- Add `<meta name="color-scheme" content="light dark">` and `<meta name="supported-color-schemes" content="light dark">`.
- `@media (prefers-color-scheme: dark)` is only partially supported: Apple Mail honors it well; Gmail typically applies its own color inversion and ignores the media query; Outlook may force a full invert.
- Safe rules when dark mode cannot be controlled: use a transparent-background PNG logo that reads on both light and dark grounds (or add a light stroke); never use pure black text on a transparent ground; give important blocks such as the CTA a solid background color; test in at least one dark-mode client before sending.

### 5. Fill the required placeholders

- First-name merge tag — syntax depends on the ESP
- Unsubscribe link — legally required
- Company postal address — must be real
- Primary CTA link — real URL with UTM parameters per `14-email-marketing-global`

| ESP | First-name merge tag | Unsubscribe |
|-----|----------------------|-------------|
| Klaviyo | `{{ first_name\|default:"there" }}` | `{% unsubscribe %}` |
| Mailchimp | `*\|FNAME\|*` | `*\|UNSUB\|*` |
| HubSpot | `{{ contact.firstname }}` | injected automatically |
| Brevo | `{{ contact.FIRSTNAME }}` | `{{ unsubscribe }}` |

Always confirm the exact syntax in the sending platform before the final send — an unrendered merge tag in a live send is a visible error.

## Email client matrix

| Client | Rendering behavior | What to do about it |
|--------|--------------------|---------------------|
| Gmail (web and app) | May strip `<style>` in some contexts; applies its own dark-mode inversion | Inline everything; the single-column layout must read even if media queries are dropped |
| Apple Mail (macOS/iOS) | WebKit — the most capable renderer | Supports media queries and `prefers-color-scheme` properly; use it as the dark-mode reference |
| Outlook desktop (Windows) | Word rendering engine | Tables only; no `border-radius`, unreliable background images (use solid colors); test separately |
| Outlook.com / new Outlook | Chromium-based, much better than desktop | Still avoid flex and grid for consistency with desktop |
| Outlook mobile (iOS/Android) | Reasonable modern rendering | Verify CTA tap targets at 44px minimum height |
| Yahoo Mail / AOL | Decent support, varies by build | Send a real test to a live account |
| Mobile in general | 375px screens | Body font 15px or larger, CTA at least 44px tall for thumbs |

## Measurement note

Apple Mail Privacy Protection pre-fetches tracking pixels, which inflates reported open rates for any list with a meaningful Apple Mail share — and Gmail image proxying adds noise of its own. Treat open rate as a directional signal only. Judge template and campaign performance on click-through rate, click-to-open rate, and conversions. Global email medians for context: open 22-27%, CTR 2.5-3.5%, CTOR 10-14%, unsubscribe below 0.5%.

## Pre-send test checklist

- [ ] Gmail desktop and Gmail mobile app
- [ ] Apple Mail on iPhone
- [ ] Outlook desktop on Windows (if the list skews corporate)
- [ ] Yahoo or another webmail account
- [ ] Dark-mode preview in at least one client
- [ ] Every link works — especially the CTA and the unsubscribe
- [ ] Alt text on every image; the email still makes sense with images blocked
- [ ] HTML file under 100KB (avoids Gmail clipping)
- [ ] Merge tags use the sending platform's syntax and render correctly
- [ ] Real seed send to 2-3 different inboxes before the list send
- [ ] Subject line and preheader filled in (from `14-email-marketing-global`)
- [ ] Postal address and unsubscribe present and accurate

## Related skills

- `14-email-marketing-global`: strategy, sequence, content, and subject lines — written before the code.
- `46-brand-guideline-global`: colors, fonts, and logo for the email design tokens.
- `47-design-review-global`: review the email before sending (brand, readability, CTA, platform fit).
- `12-landing-page-brief-global`: the CTA usually lands on a landing page — keep the message consistent across both.

## Quality checklist

- [ ] Table layout, no flexbox, grid, float, or absolute positioning
- [ ] All CSS inline except media queries and dark-mode rules
- [ ] 600px width, degrading to 375px without breaking
- [ ] System font fallbacks, no dependency on web fonts
- [ ] CTA button is solid, at least 44px tall on mobile, not an image
- [ ] Footer carries postal address, unsubscribe, and copyright
- [ ] Dark-mode meta tags added and the safe rules applied
- [ ] Full test checklist executed before sending
- [ ] One self-contained .html file, under 100KB
