# Connectors

## How tool references work

Plugin files use `~~category` as a placeholder for whatever tool the user connects in that category. For example, `~~marketing automation` might mean HubSpot, Marketo, or any other marketing platform with an MCP server.

Plugins are **tool-agnostic** — they describe workflows in terms of categories (design, SEO, email marketing, etc.) rather than specific products. The `.mcp.json` pre-configures specific MCP servers, but any MCP server in that category works.

## Connectors for ai-business-skills

| Category | Placeholder | Included servers | Other options |
|----------|-------------|-----------------|---------------|
| Chat | `~~chat` | Slack | Microsoft Teams, Discord |
| Design | `~~design` | Canva, Figma | Adobe Creative Cloud, Sketch |
| Marketing automation | `~~marketing automation` | HubSpot | Marketo, Pardot, Mailchimp, ActiveCampaign |
| Product analytics | `~~product analytics` | Amplitude | Mixpanel, Google Analytics, PostHog |
| Knowledge base | `~~knowledge base` | Notion | Confluence, Guru, Coda |
| SEO | `~~SEO` | Ahrefs, SimilarWeb | Semrush, Moz, Ubersuggest |
| Email marketing | `~~email marketing` | Klaviyo | Mailchimp, Brevo, Customer.io, ConvertKit |
| Marketing analytics | `~~marketing analytics` | Supermetrics | Google Analytics, Looker, Tableau |
| AI image generation | `~~ai image` | gpt-image-2 (OpenAI) | Midjourney, Leonardo, Flux, Imagen 3 |

## Customizing for your stack

Edit `.mcp.json` to swap connectors with your specific tools. Skills will auto-adapt because they reference categories (`~~marketing automation`) not specific products (HubSpot).

## Skills mapping (key skills only)

| Skill | Connectors used |
|-------|----------------|
| 00-ke-hoach-mkt | ~~marketing analytics, ~~knowledge base |
| 02-brief-chien-dich | ~~design, ~~knowledge base |
| 05-copy-quang-cao | ~~marketing automation, ~~chat |
| 07-bao-cao-marketing | ~~marketing analytics, ~~product analytics |
| 13-phan-tich-du-lieu | ~~marketing analytics, ~~product analytics |
| 14-email-marketing | ~~email marketing, ~~marketing automation |
| 15-social-listening | ~~SEO, ~~chat |
| 21-audit-ads-performance | ~~marketing analytics, ~~marketing automation |
| 30-thiet-ke-master | ~~ai image, ~~design |

## OPA Suite cross-references

Companion repo `opa-kit` has its own `.mcp.json` cho code/deploy connectors (GitHub, Coolify, Vercel). When using OPA Suite (both repos installed), all connectors stack — Claude has full toolkit cho build + market.
