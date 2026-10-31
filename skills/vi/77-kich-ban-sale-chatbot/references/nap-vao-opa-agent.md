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
| `faq`, `policies` | tai lieu kho tri thuc (`faq` / `policy`) | `POST /api/rag/documents`, hoac nut "Tai file .txt/.md" |
| `objections`, `closing`, `intents[].templates` | tai lieu `faq` tieu de "Cau tra loi mau: <tinh huong>" | tao tai lieu thu cong |
| `products[].facts` | chua co noi chua cap san pham | (a) ghi vao mo ta san pham tren POS — dat y quan trong len dau; (b) FAQ theo san pham, tieu de "<ten SP>: <cau hoi>" |
| `post_product_map` | chua co | tam: FAQ "Bai/anh <mo ta> = <san pham>"; bot van chua biet bai nao |
| `bot_profile` | chon model cua trang | chon thu cong, xac nhan bang backtest |
| `evals`, `examples` | backtest | `POST /api/backtest/run` (inbox) |
| `autonomy` | cong tac AI cua trang, tam dung khi nhan vien nhan | dong quyen o context file (nguoi ghi); cong tac trang la kill switch |

Luu y: noi dung kho tri thuc duoc dua vao prompt nhu **du lieu tham khao**, khong phai chi dan he thong ⇒ **luat bat buoc** (nhan AI, khong chot som, khong PII binh luan…) nam o `systemPrompt`/`playbook`, **su kien** nam o kho.
Tao tai lieu qua giao dien / API co the **bat ngay** (khong co buoc nhap) ⇒ cong duyet nam o buoc nguoi doc `.md` truoc khi nap.

## 3. Gioi han (doc `limits` that truoc khi nap) — [DA KIEM 2026-10-31, doc tinh]

| Muc | Gioi han | Ghi chu |
|---|---|---|
| `systemPrompt` | ≤8000 ky tu | schema `exports.opa_agent.ai_config_patch` khop |
| `brandVoiceExamples` | ≤20 muc × ≤1000 ky tu | |
| So tai lieu / trang | ≤200 | |
| Tieu de tai lieu | ≤200 ky tu | |
| Noi dung tai lieu | ≤20.000 ky tu | khuyen nghi ≤900 / khoi (vua mot chunk) |
| Dua vao prompt moi luot | toi da 3 tai lieu × 700 ky tu | moi tai lieu phai tu du nghia |
| Tai file `.txt/.md` | ≤200 KB, cat o 20.000 ky tu → **mot** tai lieu | ⇒ `.md` cua skill chia khoi H2 ≤900 ky tu |
| Ghi tai lieu | ≈60 lan / 10 phut | co gioi han toc do |
| Backtest | `messages` ≤120, `maxTurns` ≤20; ≈5 lan / 10 phut, 20 lan / ngay | doc tinh: chua mo phong binh luan cong khai |

Gia tri dich that: `GET /api/rag/documents` → `limits`. Neu khac bang tren, theo gia tri that.

## 4. Dinh dang tri thuc "than thien truy xuat" (cho `.md` chia khoi va `knowledge_documents`)

1. Mot chu de mot tai lieu, ≤900 ky tu, tu du nghia (khong "nhu tren").
2. Tieu de viet **dung cach khach hoi** — tieu de khop duoc cong diem.
3. Truy van tim kiem la tin cuoi cua khach; ten san pham phai nam trong noi dung.
4. Them dong cuoi `Tu khoa khong dau: …` (tim kiem toan van nhay dau) — giai phap tam.
5. Khong ghi gia, ton, khuyen mai trong tai lieu.
6. Luat bat buoc o `systemPrompt`, su kien o kho.

## 5. Phep chieu `sales-playbook@1.0.0` → `opa.sales_playbook/v1`

Phep chieu **mat thong tin** (OPA khong co `autonomy`, `missing`, nhieu truong bang chung); giu pack lam ban goc.

| `opa.sales_playbook/v1` | Lay tu pack | Quy tac chieu |
|---|---|---|
| `schema` | hang so `"opa.sales_playbook/v1"` | — |
| `meta.title` | `shop.name` + "kich ban ban hang" | — |
| `meta.language` | `meta.language` | — |
| `meta.industry` | `industry.pack` | map ten goi → ma OPA (doi gach noi thanh gach duoi, vd `ten-goi` → `ten_goi`) |
| `meta.scope` | `"page"` | — |
| `meta.source` | `"skill:ai-business-skills/" + meta.skill` | vd `skill:ai-business-skills/77-kich-ban-sale-chatbot@1.0.0` |
| `meta.generated_at` | `meta.generated_at` | doi sang ISO-8601 |
| `meta.voice` | `voice.self`, `voice.customer`, `voice.tone`, `voice.emoji` | chi la **goi y** |
| `stages[].stage` | `intents[].stage` | `greet`→`opening`, `discover`→`discovery`, `recommend`→`recommendation`, `objection`→`objection`, `close`→`closing`, `post_sale`→`after_sales`, `support`→`after_sales` |
| `stages[].plays[].when` | `intents[].label` / `utterances` | — |
| `…plays[].channels` | `intents[].surfaces` | `inbox`→`inbox`, `public_comment`→`comment` |
| `…plays[].say[]` | `intents[].templates[].text` | **≤300 ky tu va ≤5 cau**; dai hon → cat hoac canh bao; cau chua `{price}`: OPA doi cu phap placeholder `{{…}}` |
| `…plays[].ask_next` | `intents[].next` | — |
| `…plays[].avoid` | `intents[].rules` | — |
| `…plays[].requires` | suy tu `price_policy.reveal` va `closing.not_buy_signals` | pack chua co khoi rieng |
| `…plays[].escalate_when` | `handoff[]` lien quan | — |
| `…plays[].evidence` | `intents[].frequency` | — |
| `objections[]` | `objections[]` | `trigger_phrases` ← `utterances.text` + `ascii`; `responses` ← `moves[].text`; `escalate_if` ← `handoff_if`; `category` chua co trong pack 1.0.0 (OPA dung `other` hoac bo trong) |
| `faqs[]` | `faq[]` | `tags` ← `scope`; `aliases_ascii` thanh dong "Tu khoa khong dau" |
| `product_notes[]` | `products[]` | **chi chieu fact `observed`/`reported`**; fact `inferred` KHONG chieu; `ref` ← `match` |
| `policies{}` | `policies[]` | **chi** `status: confirmed`; `missing`/`conflict` thanh cau hoi cho chu shop |
| `guardrails.never_say` | `never_say[]` muc `hard` | muc `soft` vao van ban, khong vao guardrail |
| `guardrails.always` | `surfaces.*.rules` | — |
| `follow_up[]` | (chua co trong pack 1.0.0) | bo trong; them o ban 1.1.0 |
| (khong chieu) | `price_policy.promotions` | khuyen mai khong vao kho tri thuc; gia luon tu POS |
| (khong chieu) | `autonomy`, `missing`, `evals`, `bot_profile`, `exports` | giu trong pack |

OPA kiem khi nhap (theo de xuat hop dong): khoa `price`/`stock` bi tu choi; cau co so tien kem `k|d|nghin|trieu` bi gan co; "con N cai" bi tu choi; luot choi o `comment` khong duoc xin PII; PII bi che lai. Pack 1.0.0 da tuan theo ca bon dieu (khong gia/ton; khong PII; luat binh luan).

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
