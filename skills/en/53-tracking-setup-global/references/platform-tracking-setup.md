# Platform Tracking Setup Reference

> Reference for skill `53-tracking-setup-global`. Read when installing or auditing tracking on a specific platform, implementing consent mode v2, or setting up server-side GTM.

## 1. Meta — Pixel plus Conversions API

Both are required. Browser-only tracking loses a large share of events to blockers, ITP, and iOS ATT.

- [ ] Create the dataset (pixel) in Events Manager.
- [ ] Install via GTM **or** the platform integration **or** the head tag — exactly one method.
- [ ] Configure standard events: `PageView`, `ViewContent`, `AddToCart`, `InitiateCheckout`, `Lead`, `Purchase`. Send `value` and `currency` on revenue events.
- [ ] Verify with Meta Pixel Helper — status Active, no duplicate fires.
- [ ] Set up the Conversions API. Order of preference: native platform integration (Shopify, WooCommerce, Webflow app), then server-side GTM, then a direct server implementation.
- [ ] Send the same `event_id` from browser and server so events deduplicate. Confirm deduplication in Events Manager.
- [ ] Send customer parameters server-side — hashed email, phone, first name, last name, city, country, external ID, plus `fbc` and `fbp` cookies. Target Event Match Quality >= 6.0.
- [ ] Verify the domain in Business Manager.
- [ ] Configure Aggregated Event Measurement: rank up to 8 web events per domain, highest priority on the event you optimize for. Reordering the list triggers a 72-hour delay.
- [ ] Run Test Events: complete one real conversion and confirm it appears from both browser and server.
- [ ] For California traffic, enable Limited Data Use.

**Attribution:** post-ATT default is 7-day click / 1-day view. Fix the window before comparing periods.

## 2. Google Ads — conversion tracking plus Enhanced Conversions

- [ ] Create conversion actions for the real business outcomes only (purchase, qualified lead, booked call).
- [ ] Install the Google tag via GTM or directly. Do not run both.
- [ ] Mark exactly one primary conversion action per objective as eligible for bidding. Leave the rest as secondary/observation.
- [ ] Enable **Enhanced Conversions for web**: send hashed first-party data (email, phone, name, address) with the conversion. Enable via GTM, the Google tag, or the API.
- [ ] For lead-gen, enable **Enhanced Conversions for Leads** so offline closes can be imported by matching hashed email rather than GCLID alone.
- [ ] Link GA4 to Google Ads and import key events where useful, but avoid importing an event that is already tracked natively — that double counts.
- [ ] Implement consent mode v2 (see section 5). Without it, EEA/UK remarketing and audience features degrade.
- [ ] Verify with Tag Assistant and the conversion diagnostics panel; confirm "recording conversions" status.

**Attribution:** Google defaults to data-driven attribution. It will not match Meta's last-click view. Do not add platform-reported conversions together across platforms.

## 3. GA4

- [ ] Create the property and data stream; install the GA4 tag through the same container as everything else.
- [ ] Enable enhanced measurement, then verify it is not double counting events you also send manually.
- [ ] Configure the ecommerce or lead events: `view_item`, `add_to_cart`, `begin_checkout`, `generate_lead`, `purchase`. Always include `value` and `currency`.
- [ ] Mark the events that matter as **key events**.
- [ ] Set the reporting identity and data retention appropriately for the markets served.
- [ ] Configure cross-domain measurement if checkout sits on a different domain.
- [ ] Filter internal traffic and known bot/office IPs.
- [ ] Confirm consent mode is wired so GA4 uses modeled data rather than nothing when consent is denied.
- [ ] Verify with DebugView and Realtime: complete one real conversion and watch it arrive with the right parameters.

## 4. TikTok — Pixel plus Events API

- [ ] Create and install the TikTok Pixel.
- [ ] Configure events: `ViewContent`, `AddToCart`, `InitiateCheckout`, `SubmitForm`, `CompletePayment`.
- [ ] Set up the Events API, ideally via the native ecommerce integration or server-side GTM.
- [ ] Send a shared `event_id` for deduplication between pixel and Events API.
- [ ] Send hashed email and phone to raise match quality.
- [ ] Verify with TikTok Pixel Helper and the events diagnostics panel.

## 5. Google consent mode v2

Four signals must be sent and updated by the CMP:

| Signal | Controls |
|--------|----------|
| `ad_storage` | Advertising cookies and identifiers |
| `analytics_storage` | Analytics cookies and identifiers |
| `ad_user_data` | Sending user data to Google for advertising |
| `ad_personalization` | Use of data for personalized advertising and remarketing |

Implementation rules:

- Set defaults **before** any Google tag loads. For EEA/UK visitors default all four to `denied`.
- The CMP calls an update once the visitor chooses. Region-scope the defaults so non-EEA traffic is not needlessly restricted.
- Use a Google-certified CMP. Without certified consent mode v2, EEA/UK remarketing lists stop populating and audience features degrade.
- Advanced implementation (tags load in a cookieless state and send pings) preserves conversion modeling. Basic implementation (tags blocked entirely) loses modeling — choose deliberately and document the choice.
- Test with Tag Assistant: verify the consent state before and after the banner interaction.

## 6. Meta and non-Google consent

Meta does not use consent mode. Requirements instead:

- A CMP must gate the pixel for EU/UK visitors; the pixel must not fire before consent.
- For California, set the Limited Data Use flag.
- For customer list uploads (Custom Audiences, Customer Match), the list must be covered by marketing consent, hashed before upload, and refreshed when people opt out.

## 7. Server-side GTM

Use when the account has real revenue at stake, a developer available, or heavy iOS/EU traffic.

- [ ] Provision a server container on a subdomain of the main site so cookies remain first-party.
- [ ] Route the web container's events to the server container via the GA4 client.
- [ ] Fan out from the server container to Meta CAPI, Google Ads, GA4, and TikTok Events API tags.
- [ ] Preserve `event_id` on every forwarded event so client and server deduplicate.
- [ ] Enrich server-side with hashed user data available at the session or order level.
- [ ] Respect consent state in the server container too — consent does not stop being required because the call moved server-side.
- [ ] Monitor container cost and request volume; a runaway tag can be expensive.

Benefits: longer first-party cookie lifetime under ITP, resilience to blockers, one place to control what leaves the site. It is not a way to bypass consent.

## 8. Verification tools quick list

| Tool | Checks |
|------|--------|
| Meta Pixel Helper / Test Events | Pixel fires, event names, deduplication |
| Meta Events Manager diagnostics | EMQ, duplicates, missing parameters |
| Google Tag Assistant | Tag firing, consent state, Enhanced Conversions payload |
| Google Ads conversion diagnostics | Recording status, unverified domains |
| GA4 DebugView / Realtime | Event parameters, key event marking |
| TikTok Pixel Helper | Pixel firing, event names |
| Browser network tab | Duplicate requests, blocked calls, consent gating |

## 9. Reconciliation thresholds

| Comparison | Acceptable gap | Above that, investigate |
|-----------|---------------:|-------------------------|
| Server-side match rate | > 70% | Missing hashed customer parameters |
| Ads manager leads vs CRM leads | < 20% | Tracking gap, source capture missing, or attribution window mismatch |
| GA4 sessions vs ads manager clicks | < 20% | UTM missing, redirect stripping parameters, slow page load |
| Purchase count vs order system | < 5% | Duplicate or missing purchase events |
