# Nap kich ban vao OPA Agent — adapter v0 va phep chieu sang `opa.sales_playbook/v1`

> **Reference cua skill 77.** Phan nay gan voi mot san pham cu the (OPA Agent) nen co **ngay kiem** (quy tac 4: so lieu co ngay, co nguon, co hang).
> **Ngay kiem: 2026-10-31.** Hang: doc tinh ma nguon va tai lieu cua OPA Agent, **chua chay**. Gioi han ky thuat doi theo phien ban — doc lai `limits` that (muc 3) truoc khi nap.
> Loi cua skill trung lap ve nen tang: schema va `capabilities` trung tinh. Chi file nay noi ve OPA Agent.
> Hoi nguon su that: **skill so huu ban goc dinh dang** (`sales-playbook@1.0.0`); OPA Agent nhap theo. Dinh dang nhap cua OPA la `opa.sales_playbook/v1`; skill chieu sang do (muc 5). Script xuat tu dong: **v1.1**.

---

## 1. Ba giai doan nap

| Giai doan | Lam gi | Doi code OPA? |
|---|---|---|
| **0 — dung ngay** | Nap `.md` / `exports.opa_agent` bang cac man hinh va API co san (muc 2–4), thu bang backtest va thu tay | Khong |
| **1 — vai thay doi nho** | Nhap pack thanh **nhap** cho chu shop duyet; `aiConfig.playbook`; hoc tu lich su co `surface`; backtest nhan `surface` | Co (nho) |
| **2 — can chu san pham quyet** | Tri thuc theo san pham (`product_knowledge`), hoc tu anh, che do "AI soan – nguoi duyet" | Co (lon) |

Pack chi la **nhap** cho toi khi nguoi duyet co ten doc ban `.md` va chu shop tra loi cac muc `missing[]` loai `blocker`.

## 2. Anh xa khoi pack → noi nap (v0)

| Khoi pack | Noi nap hien tai | Cach nap v0 |
|---|---|---|
| `voice` | `aiConfig.tone`, `brandVoiceExamples`, `systemPrompt` | `PATCH /api/fanpages/:id/ai-config` ← `exports.opa_agent.ai_config_patch` |
| `shop.disclosure`, `never_say`, `handoff`, `surfaces`, `price_policy` | `systemPrompt` | gop thanh **delta** (chi phan khac cac quy tac mac dinh) |
| `faq`, `policies` (chi `confirmed`), `products[].facts` (chi `observed`/`reported`) | tai lieu kho tri thuc (`faq` / `policy`) | **"file nap"** theo `SKILL.md` (moi H2 mot cau khach hoi, ≤900 ky tu, ≤18.000 ky tu/file): `POST /api/rag/documents` hoac nut "Tai file .txt/.md" |
| `objections`, `closing`, `intents[].templates` | tai lieu `faq` tieu de "Cau tra loi mau: <tinh huong>" | tao tai lieu thu cong |
| `products[].facts` | chua co noi chua cap san pham | (a) ghi vao mo ta san pham tren POS — dat y quan trong len dau; (b) FAQ theo san pham, tieu de "<ten SP>: <cau hoi>" |
| `post_product_map` | chua co | tam: FAQ "Bai/anh <mo ta> = <san pham>"; bot van chua biet bai nao |
| `bot_profile` | chon model cua trang | chon thu cong, xac nhan bang backtest |
| `evals`, `examples` | backtest | `POST /api/backtest/run` (inbox) |
| `autonomy` | cong tac AI cua trang, tam dung khi nhan vien nhan | dong quyen o context file (nguoi ghi); cong tac trang la kill switch |

Luu y: noi dung kho tri thuc duoc dua vao prompt nhu **du lieu tham khao**, khong phai chi dan he thong ⇒ **luat bat buoc** (nhan AI, khong chot som, khong PII binh luan…) nam o `systemPrompt`/`playbook`, **su kien** nam o kho.
Tao tai lieu qua giao dien / API co the **bat ngay** (khong co buoc nhap) ⇒ cong duyet nam o buoc nguoi doc ban `.md` (13 muc) truoc khi tao file nap.

## 3. Gioi han (doc `limits` that truoc khi nap) — [DA KIEM 2026-10-31, doc tinh]

| Muc | Gioi han | Ghi chu |
|---|---|---|
| `systemPrompt` | ≤8000 ky tu | schema `exports.opa_agent.ai_config_patch` khop |
| `brandVoiceExamples` | ≤20 muc × ≤1000 ky tu | |
| So tai lieu / trang | ≤200 | |
| Tieu de tai lieu | ≤200 ky tu | |
| Noi dung tai lieu | ≤20.000 ky tu | khuyen nghi ≤900 / khoi (vua mot chunk) |
| Dua vao prompt moi luot | toi da 3 tai lieu × 700 ky tu | moi tai lieu phai tu du nghia |
| Tai file `.txt/.md` | ≤200 KB, cat o 20.000 ky tu → **mot** tai lieu | ⇒ dung "file nap" (SKILL.md): moi H2 ≤900 ky tu, moi file ≤18.000 ky tu |
| Ghi tai lieu | ≈60 lan / 10 phut | co gioi han toc do |
| Backtest | `messages` ≤120, `maxTurns` ≤20; ≈5 lan / 10 phut, 20 lan / ngay | doc tinh: chua mo phong binh luan cong khai |

Gia tri dich that: `GET /api/rag/documents` → `limits`. Neu khac bang tren, theo gia tri that.

## 4. Dinh dang tri thuc "than thien truy xuat" (cho "file nap" va `knowledge_documents`)

1. Mot chu de mot tai lieu, ≤900 ky tu, tu du nghia (khong "nhu tren").
2. Tieu de viet **dung cach khach hoi** — tieu de khop duoc cong diem.
3. Truy van tim kiem la tin cuoi cua khach; ten san pham phai nam trong noi dung.
4. Them dong cuoi `Tu khoa khong dau: …` (tim kiem toan van nhay dau) — giai phap tam.
5. Khong ghi gia, ton, khuyen mai trong tai lieu.
6. Luat bat buoc o `systemPrompt`, su kien o kho.

## 5. Phep chieu `sales-playbook@1.0.0` → `opa.sales_playbook/v1`

Doi chieu voi hop dong de xuat `opa.sales_playbook/v1` (bao cao audit OPA Agent muc D.10, 2026-10-31). Phep chieu **mat thong tin** (OPA khong co `autonomy`, `missing`, `evals`, nhieu truong bang chung); pack giu lam ban goc. Script xuat tu dong: v1.1; truoc do nguoi nap chieu theo bang nay.

### 5.1 Truong dau

| `opa.sales_playbook/v1` | Lay tu pack | Quy tac |
|---|---|---|
| `schema` | hang so `"opa.sales_playbook/v1"` | — |
| `meta.title` | `shop.name` + " — kich ban ban hang" | — |
| `meta.language` | `meta.language` | — |
| `meta.industry` | `{code, label}` tu `industry.pack` | `code`: doi gach noi thanh gach duoi (`ten-goi` → `ten_goi`); `label`: ten goi tieng Viet trong `README.md` cua skill (vd ten hien thi cua goi) |
| `meta.scope` | `"page"` | — |
| `meta.source` | `"skill:ai-business-skills/" + meta.skill` | vd `skill:ai-business-skills/77-kich-ban-sale-chatbot@1.0.0` |
| `meta.generated_at` | `meta.generated_at` | doi sang ISO-8601 |
| `meta.voice` | `voice.self`, `voice.customer`, `voice.tone`, `voice.emoji` | chi la goi y. `emoji`: pack `none/rare/ok`; D.10 moi neu gia tri `light` → chieu `rare`→`light`, `none`→`none`, `ok`→`ok` va bao OPA chot enum |

### 5.2 `stages[]`

Gom `intents[]` theo `stage`: `greet`→`opening`, `discover`→`discovery`, `recommend`→`recommendation`, `objection`→`objection`, `close`→`closing`, `post_sale`→`after_sales`, `support`→`after_sales` (`support` chi dung cho cau hoi **sau khi mua**; cau hoi truoc khi mua da la `discover`).

| Truong stage | Lay tu pack |
|---|---|
| `goal` | nhan `label` cua y dinh dau tien trong stage, hoac cau mac dinh cua skill cho stage (vd `discovery` → "Hieu nhu cau truoc khi bao gia") |
| `entry_signals` | toi da 5 cum `utterances.text` dai dien cua cac y dinh trong stage |
| `exit_criteria` | `goal` cua cac buoc `closing.steps` (stage `closing`) hoac gia tri `intents[].next` (stage khac) |

### 5.3 `stages[].plays[]` — **moi template la mot luot, tach theo be mat**

- Moi `intents[].templates[]` thanh **mot** play (`id` = `templates[].id`). Y dinh khong co template (vd `resolve: handoff`) khong tao play; chung di qua `escalate_when` / `guardrails.always`.
- `channels` lay tu **`templates[].surface`** (khong lay tu `surfaces` cua y dinh): `inbox`→`["inbox"]`, `public_comment`→`["comment"]`, `both`→`["inbox","comment"]`. Cau inbox **khong** duoc lan sang binh luan.
- `say[]` ← `templates[].text` (≤300 ky tu, ≤5 cau; dai hon → cat hoac canh bao). Placeholder `{x}` doi thanh `{{x}}` — do nguoi nap / script xuat doi, khong phai OPA.
- `when` ← `intents[].label`; `ask_next` ← `intents[].next`; `avoid` ← `intents[].rules`; `evidence` ← `intents[].frequency`.
- `tool_hint`: `pos_lookup` → tool tra san pham cua OPA (neu ten chua chot, bo trong); cac `resolve` khac bo trong.
- `requires`: `price_allowed` = true chi voi play cua y dinh hoi gia (`ask_price`) hoac sau `buy_signal`; `purchase_intent` = true cho moi luot cua stage `closing`.
- `escalate_when` ← `condition` cua `handoff[]` lien quan toi y dinh.
- **`closing.steps[]` → play cua stage `closing`**: moi buoc mot play, `say` ← `steps[].text`, `channels` = `["inbox"]` (**ca `confirm_item`, `collect_contact`, `confirm_order`**: binh luan khong bao gio gio hang / xin thong tin ca nhan), `requires.purchase_intent = true`.

### 5.4 `objections[]`, `faqs[]`, `product_notes[]`, `policies{}`

| `opa.sales_playbook/v1` | Lay tu pack | Quy tac |
|---|---|---|
| `objections[].id` | `objections[].id` | — |
| `…category` | (pack 1.0.0 chua co) | dat `other`; pack 1.1.0 se them `objections[].category` |
| `…trigger_phrases` | `utterances.text` + `utterances.ascii` | — |
| `…responses` | `moves[].text` voi `step` ∈ `acknowledge`, `evidence`, `option` | — |
| `…follow_up` | `moves[].text` voi `step` ∈ `clarify`, `soft_close` | — |
| `…escalate_if` | `handoff_if` | — |
| (khong co cho) | `do_not` | day vao `guardrails.never_say` dang "Khi xu ly tu choi <label>: khong <do_not>" |
| `faqs[]` | `faq[]` | `tags` ← `scope`; `aliases_ascii` thanh dong "Tu khoa khong dau: …" cuoi `a` |
| `product_notes[].ref` | `products[].match` | `external_product_id` → `{pos_product_id}`; khong co thi `{category}` (tu `products[].category`); **khong** dung `sku_prefix` lam `sku` (la tien to, khong phai ma) |
| `product_notes[].use_cases / selling_points / care / faq` | `uses`, `facts` theo `key`, `care`, `faq_ids` | **chi** fact `observed`/`reported`; fact `inferred` KHONG chieu |
| `policies{shipping,returns,warranty,payment}` | `policies[]` voi `topic` trung ten | **chi** `status: confirmed`. Cac topic khac (`production_time`, `custom_order`, `wholesale`, `showroom`, `invoice`, `other`) khong co khoa trong `policies{}` → chieu thanh `faqs[]` voi `tags:["policy","<topic>"]`; `missing`/`conflict` thanh cau hoi cho chu shop |

### 5.5 `guardrails` (noi giu nhan AI va luat cung)

| `guardrails.*` | Lay tu pack |
|---|---|
| `always` | (1) **nhan AI**: `shop.disclosure.text` (tin dau inbox) va `shop.disclosure.comment_text` (cau dau moi chuoi binh luan), kem `human_keyword`; (2) `surfaces.*.rules`; (3) `handoff[]`: moi muc thanh "Chuyen nhan vien khi <condition> (<trigger>, <priority>)", va `autonomy.always_human` |
| `never_say` | `never_say[]` muc `hard` (kem `instead`); muc `soft` vao van ban, khong vao guardrail |
| (khong chieu) | `price_policy.promotions` — khuyen mai khong vao kho tri thuc; gia luon tu POS |
| (khong chieu) | `autonomy`, `missing`, `evals`, `bot_profile`, `exports` — giu trong pack |
| `follow_up[]` | bo trong (pack 1.0.0 chua co; them o 1.1.0) |

Neu khong chieu `shop.disclosure` thi OPA nhap v1 se **mat nhan AI** — day la loi chan phep chieu.

### 5.6 OPA kiem khi nhap (theo de xuat hop dong) va pack 1.0.0 dap ung toi dau

| OPA kiem | Pack 1.0.0 |
|---|---|
| khoa `price`/`stock` bi tu choi | schema chan khoa la (`additionalProperties: false`) |
| luot o `comment` khong xin PII | schema ghim `pii.request = never` va cam `cart/create_order/order_status/payment_check` o binh luan |
| PII bi che lai | pack chi chua cum da an danh (nguoi duyet kiem) |
| cau co so tien kem `k/d/nghin/trieu` bi gan co; "con N cai" bi tu choi | **schema khong do duoc** van ban tu do — nguoi duyet va importer phai quet |

**Pack co `meta.is_example = true` phai bi importer tu choi.**

## 6. Thieu sot da biet cua OPA Agent (doc tinh, 2026-10-31) — lien quan toi ca nghiem thu

| Thieu sot | Anh huong len skill |
|---|---|
| Quy tac mac dinh co the dan bot khong nhan la AI neu khach khong hoi | `shop.disclosure` co the bi mau thuan; viet nhan AI vao `systemPrompt` nhung nen sua mac dinh |
| Nhan dien y dinh (hoi gia, muon mua) co the **nhay dau** | ca `ev_ascii_price` co the **that bai**; khong dau → bo lo ban hang |
| Tim kiem kho tri thuc nhay dau | dong "Tu khoa khong dau" la giai phap tam |
| Bot chua biet noi dung bai viet cho binh luan | `post_product_map` chua dung duoc; theo quyet dinh: khong doan, moi nhan tin rieng |
| Mac dinh dung chung co the chua vi du theo nganh | model co the chep vi du sai nganh; ca "nganh la" can kiem |
| Backtest chua mo phong binh luan cong khai | ca binh luan thu tay |

Cac muc nay co the da duoc sua: **kiem lai** truoc khi coi la con ton tai.

## 7. Quy trinh nap v0 (tom tat)

1. Nguoi duyet co ten doc ban `.md`; chu shop tra loi `missing[]` loai `blocker`.
2. `PATCH ai-config` bang `ai_config_patch` (xem `systemPrompt` truoc khi luu).
3. Nap `knowledge_documents` (mot chu de mot tai lieu).
4. Chay backtest cac `evals` inbox; thu tay cac ca binh luan; ghi ca nao *fail*.
5. Bat **tung be mat** mot; ra soat 20 hoi thoai ngau nhien / tuan; san sang tat trong <5 phut.
