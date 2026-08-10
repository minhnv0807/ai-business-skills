# Schema JSON-LD — Copy-Paste Block Library

> Reference for skill `32-seo-growth-global`. Read when implementing structured data, auditing existing schema, or answering "what schema should this page have".

## How to use this file

1. Pick the block that matches the page type.
2. Replace every `[...]` placeholder with real data.
3. Paste into `<head>`:

```html
<script type="application/ld+json">
{ ...JSON here... }
</script>
```

4. Validate with the Rich Results Test before shipping (see "Testing and debugging").

## Five rules before you copy anything

1. **Schema must match what the user sees.** A 4.9 rating in JSON-LD on a page with no visible reviews is a structured-data spam violation — Google can apply a manual action to the whole site, not just that page.
2. **One page, one schema payload.** If a page needs several types, merge them with `@graph` (block 11) instead of scattering five `<script>` tags.
3. **UTF-8 always.** Non-ASCII characters (accents, currency symbols, CJK) must be served as UTF-8 or parsers silently drop the block.
4. **Prices use a period as the decimal separator and no thousands separator.** `"price": "1299.00"` — never `"1.299,00"` or `"1,299.00"`. This is the single most common error on EU and LATAM sites, where local formatting uses a comma decimal.
5. **Google does not accept self-serving reviews.** Ratings a business collects and displays about itself are not eligible for `Organization` or `LocalBusiness`. They are fine on `Product` and `Service` as long as the reviews are genuine and visible on the page.

## Rich result status on Google — 2026 update

A lot of SEO advice still says "add FAQ schema to take up more space on the SERP". That is no longer true. Current status:

| Schema | Still produces a Google rich result? | Still worth adding? | Why |
|--------|--------------------------------------|---------------------|-----|
| Organization | Yes (logo, site name, knowledge panel) | Yes | Foundation of entity recognition |
| WebSite + SearchAction | **No** — Google retired the sitelinks search box in late 2024 | Yes, with adjusted expectations | `WebSite` still influences the site name Google displays |
| Article / BlogPosting | Yes | Yes | Image, date, author in news surfaces and Discover |
| Product + Offer | Yes (price, availability, rating) | Yes | Direct CTR impact |
| SoftwareApplication | Not guaranteed | Yes | Mainly helps AI engines classify what the product is |
| **FAQPage** | **No** — since Aug 2023 Google limits FAQ rich results to authoritative government and health sites | Yes | No rich result, but ChatGPT, Perplexity and Gemini still parse the Q&A pairs |
| **HowTo** | **No** — Google removed HowTo rich results entirely in Sept 2023 | Low priority | Only add when content genuinely is an ordered procedure and you want AI to extract step order |
| BreadcrumbList | Yes | Yes | Replaces the raw URL in the SERP |
| LocalBusiness | Does not replace Google Business Profile | Yes | Corroborates NAP; GBP is what drives the local pack |
| Event | Yes | Yes | Date, venue, ticket price on the SERP |
| Course | Yes | Yes | Valuable for education and online-course businesses |

**What to tell the client about FAQPage and HowTo:** keep shipping them, but write the correct reason into the plan — "so AI engines can extract it", not "to take more SERP real estate". If the brief is signed with the wrong expectation, that is on you.

## Picking the right type

Always use the most specific type that is still accurate:

| Business | `@type` to use | Note |
|----------|---------------|------|
| B2B SaaS | `Organization` + `SoftwareApplication` | Do not use `LocalBusiness` if you have no walk-in location |
| DTC e-commerce | `Organization` + `Product` per product page | `OnlineStore` is a valid `Organization` subtype |
| Marketing / dev agency | `ProfessionalService` | Add `Service` items via `hasOfferCatalog` |
| Dental / medical practice | `Dentist`, `MedicalClinic` | Content must not claim treatment outcomes |
| Restaurant, cafe | `Restaurant`, `CafeOrCoffeeShop` | Add `servesCuisine`, `menu`, `acceptsReservations` |
| Gym, studio | `HealthClub`, `SportsActivityLocation` | |
| Online course, bootcamp | `Course` + `EducationalOrganization` | See block 12 |
| Media / publisher | `Organization` + `NewsArticle` | `NewsArticle` for news, `BlogPosting` for blogs |

---

## 1. Organization

Place on the homepage or about page.

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "@id": "https://[domain].com/#organization",
  "name": "[Registered company name]",
  "alternateName": "[Common brand name]",
  "url": "https://[domain].com",
  "logo": {
    "@type": "ImageObject",
    "url": "https://[domain].com/logo.png",
    "width": 512,
    "height": 512
  },
  "description": "[One sentence: what you do, for whom]",
  "foundingDate": "[YYYY-MM-DD]",
  "vatID": "[VAT number for EU entities]",
  "taxID": "[EIN or local tax ID]",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[Street and number]",
    "addressLocality": "[City]",
    "addressRegion": "[State or region]",
    "postalCode": "[Postal code]",
    "addressCountry": "US"
  },
  "contactPoint": [
    {
      "@type": "ContactPoint",
      "telephone": "+1-555-0100",
      "contactType": "customer support",
      "areaServed": ["US", "CA", "GB"],
      "availableLanguage": ["en"]
    },
    {
      "@type": "ContactPoint",
      "email": "sales@[domain].com",
      "contactType": "sales"
    }
  ],
  "sameAs": [
    "https://www.linkedin.com/company/[company]",
    "https://x.com/[handle]",
    "https://github.com/[org]",
    "https://www.youtube.com/@[channel]",
    "https://www.crunchbase.com/organization/[slug]"
  ]
}
```

**Notes:**
- `telephone` in E.164 format with country code.
- `sameAs` is how you connect the site to profiles the model already trusts. LinkedIn, Crunchbase and Wikipedia (if you have an entry) carry the most weight for entity resolution.
- `vatID` matters for EU B2B: it is a hard verification signal that the entity is real and registered.

---

## 2. WebSite + SearchAction

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "@id": "https://[domain].com/#website",
  "url": "https://[domain].com",
  "name": "[Short site name you want Google to display]",
  "alternateName": "[Abbreviation if any]",
  "inLanguage": "en-US",
  "publisher": { "@id": "https://[domain].com/#organization" },
  "potentialAction": {
    "@type": "SearchAction",
    "target": {
      "@type": "EntryPoint",
      "urlTemplate": "https://[domain].com/search?q={search_term_string}"
    },
    "query-input": "required name=search_term_string"
  }
}
```

**Correction to older guidance:** many tutorials still describe this block as "enables the sitelinks search box". Google retired the sitelinks search box in late 2024, so `SearchAction` no longer renders a search field on the SERP. Keep the block anyway: `name` and `alternateName` still feed the **site name** Google shows under the result title, which is worth having.

---

## 3. Article / BlogPosting

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "[Post title, 110 characters max]",
  "image": ["https://[domain].com/posts/[slug]-1200x630.jpg"],
  "datePublished": "2026-03-12T08:00:00-05:00",
  "dateModified": "2026-08-01T10:30:00-05:00",
  "inLanguage": "en-US",
  "author": {
    "@type": "Person",
    "name": "[Real author name]",
    "jobTitle": "[Title]",
    "url": "https://[domain].com/authors/[slug]",
    "sameAs": ["https://www.linkedin.com/in/[profile]"]
  },
  "publisher": { "@id": "https://[domain].com/#organization" },
  "description": "[1-2 sentence summary]",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://[domain].com/blog/[slug]"
  }
}
```

**Notes:**
- Always include a timezone offset. Without it, parsers assume UTC and the publish date can shift a day.
- `author` must be a real person with a real author page. Setting the company as author weakens E-E-A-T and gives AI engines no expertise to attribute.
- Only bump `dateModified` when content actually changed. Changing a date without changing content is detectable by version comparison.

---

## 4. Product + Offer + AggregateRating

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "[Product name]",
  "image": [
    "https://[domain].com/products/[slug]-1.jpg",
    "https://[domain].com/products/[slug]-2.jpg"
  ],
  "description": "[1-3 sentence product description]",
  "sku": "[internal SKU]",
  "gtin13": "[13-digit barcode if applicable]",
  "brand": { "@type": "Brand", "name": "[Brand]" },
  "offers": {
    "@type": "Offer",
    "url": "https://[domain].com/products/[slug]",
    "priceCurrency": "USD",
    "price": "129.00",
    "priceValidUntil": "2026-12-31",
    "availability": "https://schema.org/InStock",
    "itemCondition": "https://schema.org/NewCondition",
    "seller": { "@id": "https://[domain].com/#organization" },
    "shippingDetails": {
      "@type": "OfferShippingDetails",
      "shippingRate": {
        "@type": "MonetaryAmount",
        "value": "0",
        "currency": "USD"
      },
      "shippingDestination": {
        "@type": "DefinedRegion",
        "addressCountry": "US"
      },
      "deliveryTime": {
        "@type": "ShippingDeliveryTime",
        "handlingTime": {
          "@type": "QuantitativeValue",
          "minValue": 0,
          "maxValue": 1,
          "unitCode": "DAY"
        },
        "transitTime": {
          "@type": "QuantitativeValue",
          "minValue": 2,
          "maxValue": 5,
          "unitCode": "DAY"
        }
      }
    },
    "hasMerchantReturnPolicy": {
      "@type": "MerchantReturnPolicy",
      "applicableCountry": "US",
      "returnPolicyCategory": "https://schema.org/MerchantReturnFiniteReturnWindow",
      "merchantReturnDays": 30,
      "returnMethod": "https://schema.org/ReturnByMail",
      "returnFees": "https://schema.org/FreeReturn"
    }
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.7",
    "reviewCount": "128",
    "bestRating": "5"
  }
}
```

**Notes:**
- `shippingDetails` and `hasMerchantReturnPolicy` are the two fields most guides omit. Without them the listing is still valid but you lose the chance to show shipping cost and return window directly in the result — the two things that decide the click for cold buyers.
- Multi-currency: publish one `Offer` per market on the localized URL rather than listing several currencies on one page. Pair with `hreflang`.
- Only include `aggregateRating` when reviews are actually rendered on the page. Reviews that live on Amazon or a marketplace do not count for your own domain.

---

## 5. SoftwareApplication

```json
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "[Product name]",
  "applicationCategory": "BusinessApplication",
  "operatingSystem": "Web, iOS, Android",
  "url": "https://[domain].com",
  "description": "[What problem it solves, for whom]",
  "inLanguage": "en-US",
  "offers": [
    {
      "@type": "Offer",
      "name": "Free",
      "price": "0",
      "priceCurrency": "USD"
    },
    {
      "@type": "Offer",
      "name": "Pro",
      "price": "29.00",
      "priceCurrency": "USD",
      "billingIncrement": 1,
      "unitText": "month"
    },
    {
      "@type": "Offer",
      "name": "Business",
      "price": "99.00",
      "priceCurrency": "USD",
      "billingIncrement": 1,
      "unitText": "month"
    }
  ],
  "featureList": [
    "[Feature 1]",
    "[Feature 2]",
    "[Feature 3]"
  ],
  "softwareVersion": "[version]"
}
```

**Note:** declaring `offers` per tier is what lets an AI engine answer "how much does [product] cost" correctly. That query sits at the bottom of the funnel and converts — getting it wrong in an AI answer is a direct revenue leak.

---

## 6. FAQPage

**Status:** no longer produces a rich result on Google for most sites (limited to authoritative government and health sites since Aug 2023). Still worth shipping: ChatGPT, Perplexity, Gemini and other engines parse these Q&A pairs and use them as citation sources.

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "inLanguage": "en-US",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "[Question phrased the way users actually ask it]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Direct answer in the first sentence. Context in 2-3 more. 50-100 words total.]"
      }
    },
    {
      "@type": "Question",
      "name": "[Question 2]",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "[Answer 2]"
      }
    }
  ]
}
```

**Rule:** every question and answer in the JSON must appear verbatim on the page. Marking up content that is not visible is a policy violation.

---

## 7. HowTo

**Status:** Google removed HowTo rich results entirely in Sept 2023. No step carousel on the SERP. Low priority — add only when the content genuinely is an ordered procedure and you want AI engines to extract the step sequence correctly.

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "[How to do X]",
  "description": "[Short process description]",
  "totalTime": "PT30M",
  "inLanguage": "en-US",
  "supply": [
    { "@type": "HowToSupply", "name": "[Required material or prerequisite]" }
  ],
  "tool": [
    { "@type": "HowToTool", "name": "[Tool needed]" }
  ],
  "step": [
    {
      "@type": "HowToStep",
      "position": 1,
      "name": "[Step 1 name]",
      "text": "[Concrete action]",
      "url": "https://[domain].com/[slug]#step-1"
    },
    {
      "@type": "HowToStep",
      "position": 2,
      "name": "[Step 2 name]",
      "text": "[Concrete action]",
      "url": "https://[domain].com/[slug]#step-2"
    }
  ]
}
```

`PT30M` is ISO 8601 duration: `PT` + number + `M` (minutes) or `H` (hours). 1h15m = `PT1H15M`.

---

## 8. BreadcrumbList

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Home",
      "item": "https://[domain].com"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Blog",
      "item": "https://[domain].com/blog"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "[Current page title]"
    }
  ]
}
```

The last item (current page) needs no `item`. Breadcrumbs must mirror the URL path — if the URL is `/blog/seo-guide` but the breadcrumb says `Home > Resources > SEO Guide`, Google ignores it.

---

## 9. LocalBusiness

Example: a dental practice with a physical location.

```json
{
  "@context": "https://schema.org",
  "@type": "Dentist",
  "@id": "https://[domain].com/#downtown-location",
  "name": "[Practice name] - Downtown",
  "image": "https://[domain].com/locations/downtown.jpg",
  "url": "https://[domain].com/locations/downtown",
  "telephone": "+1-555-0100",
  "priceRange": "$$",
  "currenciesAccepted": "USD",
  "paymentAccepted": "Cash, Credit Card, Insurance",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "[Street and number]",
    "addressLocality": "[City]",
    "addressRegion": "[State code]",
    "postalCode": "[ZIP]",
    "addressCountry": "US"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "40.7128",
    "longitude": "-74.0060"
  },
  "hasMap": "https://maps.app.goo.gl/[short-code]",
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday"],
      "opens": "08:00",
      "closes": "18:00"
    },
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": "Friday",
      "opens": "08:00",
      "closes": "14:00"
    }
  ],
  "specialOpeningHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "opens": "00:00",
      "closes": "00:00",
      "validFrom": "2026-12-24",
      "validThrough": "2026-12-26",
      "description": "Closed for the holidays"
    }
  ],
  "areaServed": [
    { "@type": "City", "name": "[City]" }
  ],
  "parentOrganization": { "@id": "https://[domain].com/#organization" },
  "sameAs": [
    "https://www.facebook.com/[page]",
    "https://www.yelp.com/biz/[slug]"
  ],
  "hasOfferCatalog": {
    "@type": "OfferCatalog",
    "name": "Services",
    "itemListElement": [
      {
        "@type": "Offer",
        "itemOffered": { "@type": "Service", "name": "[Service name]" },
        "price": "150.00",
        "priceCurrency": "USD"
      }
    ]
  }
}
```

**Six practical rules:**

1. **Pull `latitude`/`longitude` from the actual Google Maps pin**, not from geocoding the address string. Suite numbers, corner units and business parks geocode badly.
2. **Split shifts need two entries for the same day** (e.g. 11:00-14:00 and 17:00-22:00), not one 11:00-22:00 range.
3. **Holiday hours** use `specialOpeningHoursSpecification` with `opens` and `closes` both `00:00` to signal closed. Schedule the update two weeks ahead — stale holiday hours are the most common cause of a one-star "they were closed" review.
4. **`priceRange`** accepts `$` through `$$$$` or free text. For non-US markets, a written range is clearer than dollar signs.
5. **Multiple locations = multiple pages with separate `@id` values**, each pointing back to the parent `Organization` via `parentOrganization`. Do not stuff three addresses into one block.
6. **Do not put `aggregateRating` on `LocalBusiness`** if you collected the reviews yourself. Google does not accept self-serving reviews for this type. Google Business Profile reviews are what count, and they need no schema.

**Important:** `LocalBusiness` schema does not replace Google Business Profile. The local pack and Maps run on GBP data. Schema is a corroborating signal. If GBP does not exist yet, do that first — see `11-channel-setup-global`.

---

## 10. Event

```json
{
  "@context": "https://schema.org",
  "@type": "Event",
  "name": "[Event name]",
  "startDate": "2026-09-20T09:00:00-07:00",
  "endDate": "2026-09-20T17:00:00-07:00",
  "eventAttendanceMode": "https://schema.org/MixedEventAttendanceMode",
  "eventStatus": "https://schema.org/EventScheduled",
  "inLanguage": "en-US",
  "location": [
    {
      "@type": "Place",
      "name": "[Venue name]",
      "address": {
        "@type": "PostalAddress",
        "streetAddress": "[Street and number]",
        "addressLocality": "[City]",
        "addressRegion": "[State]",
        "addressCountry": "US"
      }
    },
    {
      "@type": "VirtualLocation",
      "url": "https://[domain].com/events/[slug]/live"
    }
  ],
  "image": "https://[domain].com/events/[slug].jpg",
  "description": "[What it covers, who should attend]",
  "offers": {
    "@type": "Offer",
    "url": "https://[domain].com/events/[slug]/register",
    "price": "199.00",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "validFrom": "2026-08-15T00:00:00-07:00"
  },
  "organizer": { "@id": "https://[domain].com/#organization" },
  "performer": {
    "@type": "Person",
    "name": "[Speaker name]"
  }
}
```

**Variants:**
- Online only: `eventAttendanceMode` = `OnlineEventAttendanceMode`, `location` = a single `VirtualLocation`.
- In person only: `OfflineEventAttendanceMode`, `location` = a single `Place`.
- Free events: still declare `offers` with `"price": "0"`. Dropping `offers` loses the "Free" label on the SERP.
- Cancelled or moved: update `eventStatus` to `EventCancelled`, `EventPostponed`, or `EventMovedOnline` instead of deleting the page.

---

## 11. Combining types with @graph

Use for the homepage or any page needing several types. One `<script>` tag, nodes cross-referencing each other by `@id`.

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "@id": "https://[domain].com/#organization",
      "name": "[Company]",
      "url": "https://[domain].com",
      "logo": "https://[domain].com/logo.png",
      "sameAs": ["https://www.linkedin.com/company/[company]"]
    },
    {
      "@type": "WebSite",
      "@id": "https://[domain].com/#website",
      "url": "https://[domain].com",
      "name": "[Site name]",
      "inLanguage": "en-US",
      "publisher": { "@id": "https://[domain].com/#organization" }
    },
    {
      "@type": "WebPage",
      "@id": "https://[domain].com/pricing#webpage",
      "url": "https://[domain].com/pricing",
      "name": "Pricing",
      "isPartOf": { "@id": "https://[domain].com/#website" },
      "about": { "@id": "https://[domain].com/#software" },
      "breadcrumb": { "@id": "https://[domain].com/pricing#breadcrumb" }
    },
    {
      "@type": "BreadcrumbList",
      "@id": "https://[domain].com/pricing#breadcrumb",
      "itemListElement": [
        { "@type": "ListItem", "position": 1, "name": "Home", "item": "https://[domain].com" },
        { "@type": "ListItem", "position": 2, "name": "Pricing" }
      ]
    },
    {
      "@type": "SoftwareApplication",
      "@id": "https://[domain].com/#software",
      "name": "[Product]",
      "applicationCategory": "BusinessApplication",
      "publisher": { "@id": "https://[domain].com/#organization" }
    }
  ]
}
```

**`@id` rule:** use the real URL plus a fragment (`#organization`, `#website`, `#breadcrumb`). Never reuse the same `@id` across two nodes of different types — parsers will merge them into one broken entity.

---

## 12. Course

```json
{
  "@context": "https://schema.org",
  "@type": "Course",
  "name": "[Course name]",
  "description": "[What learners can do after finishing]",
  "url": "https://[domain].com/courses/[slug]",
  "inLanguage": "en-US",
  "provider": { "@id": "https://[domain].com/#organization" },
  "educationalLevel": "Beginner",
  "hasCourseInstance": {
    "@type": "CourseInstance",
    "courseMode": "online",
    "courseWorkload": "PT12H",
    "startDate": "2026-09-05",
    "endDate": "2026-10-10",
    "instructor": { "@type": "Person", "name": "[Instructor name]" }
  },
  "offers": {
    "@type": "Offer",
    "price": "499.00",
    "priceCurrency": "USD",
    "availability": "https://schema.org/InStock",
    "category": "Paid"
  }
}
```

---

## Testing and debugging

| Tool | What it checks | Caveat |
|------|----------------|--------|
| Google Rich Results Test (`search.google.com/test/rich-results`) | Whether the page qualifies for any rich result | Renders JavaScript like Googlebot — use "Test URL" mode for SPAs |
| Schema Markup Validator (`validator.schema.org`) | General schema.org syntax, including types Google does not support | Safest to paste the code directly rather than enter a URL |
| Search Console > Enhancements | Site-wide schema errors after deploy | Data lags 3-7 days; use for monitoring, not fast debugging |

**Critical technical warning:** `web_fetch`, `curl` and most simple crawlers retrieve raw HTML and **do not execute JavaScript**. A large share of sites inject JSON-LD via Google Tag Manager, an SEO plugin, or client-side rendering — the schema only exists after JS runs.

Concluding "this page has no schema" from a single fetch is **methodologically wrong**. Before writing it into an audit, verify with at least one of:
1. Rich Results Test in "Test URL" mode (renders JS).
2. DevTools > Elements, search for `application/ld+json` in the rendered DOM.
3. Run `document.querySelectorAll('script[type="application/ld+json"]')` in the Console.

This cuts both ways: when auditing competitors, do not conclude "they have no structured data" because a fetch came back empty.

## Common mistakes

| Mistake | Consequence | Fix |
|---------|-------------|-----|
| `"price": "1.299,00"` (EU formatting) | Parsed as 1.299 or rejected | Period decimal, no separators: `"1299.00"` |
| Missing country code in `telephone` | No click-to-call on mobile | Use E.164 |
| JSON-LD served as non-UTF-8 | Entire block silently ignored | Set `charset=UTF-8` in the response header |
| SEO plugin emitting 3-4 duplicate Organization blocks | Google picks the wrong entity | Merge with `@graph`, disable the theme's built-in schema |
| Ratings in schema with no reviews on the page | Risk of a site-wide manual action | Remove `aggregateRating` or render real reviews |
| Address in schema differs from Google Business Profile | Conflicting NAP signals, weaker local ranking | Copy the address string verbatim from GBP |
| Holiday hours never updated | Customers arrive to a closed door, one-star reviews | Calendar reminder two weeks before each closure |
| Sample code shipped with `example.com` left in | Schema points at someone else's domain | Grep for `example.com` before deploy |
| `hreflang` alternates all sharing one `Product` schema with one currency | Wrong price shown per market | One `Offer` per localized URL |
