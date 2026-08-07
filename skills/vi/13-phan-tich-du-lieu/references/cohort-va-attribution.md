# Cohort Analysis Va Attribution Model

> Reference cua skill 13-phan-tich-du-lieu. Doc khi can phan tich giu chan khach theo nhom thang / theo nguon traffic, hoac khi can chon va so sanh mo hinh attribution cho nhieu kenh.

## Phan tich nhom (Cohort Analysis)

### Template cohort theo thang

| Cohort (thang tham gia) | Thang 1 | Thang 2 | Thang 3 | Thang 6 | Thang 12 |
|--------------------------|---------|---------|---------|---------|----------|
| T1/2025 (100 khach) | 100% | [X%] con hoat dong | [X%] | [X%] | [X%] |
| T2/2025 (120 khach) | 100% | [X%] | [X%] | [X%] | — |
| T3/2025 (95 khach) | 100% | [X%] | [X%] | — | — |

**Cach doc:**
- Ti le giam deu qua cac thang → Churn tu nhien, can chuong trinh retention
- Ti le giam manh o thang 2 → Trai nghiem dau tien kem, can cai thien onboarding
- Ti le on dinh tu thang 3 → Da dat "retention floor", tap trung vao nhom nay

### Cohort theo nguon traffic

| Nguon | So khach | CAC | LTV 90 ngay | LTV:CAC |
|-------|---------|-----|------------|---------|
| Meta Ads | [X] | [X] | [X] | [X:1] |
| TikTok Ads | [X] | [X] | [X] | [X:1] |
| Organic | [X] | [X] | [X] | [X:1] |
| Referral | [X] | [X] | [X] | [X:1] |

## Attribution Model

### So sanh 3 mo hinh

| Mo hinh | Cach tinh | Dung khi |
|---------|----------|----------|
| Last Click | 100% credit cho diem cham cuoi | Mac dinh, don gian, pheu ngan |
| First Click | 100% credit cho diem cham dau | Danh gia kenh TOFU, xay awareness |
| Linear | Chia deu cho moi diem cham | Pheu dai, nhieu kenh, can cai nhin cong bang |

**Template so sanh attribution:**

| Kenh | Last Click | First Click | Linear | Nhan xet |
|------|-----------|-------------|--------|----------|
| Meta Ads | [X don] | [X don] | [X don] | [Vai tro chinh: TOFU/BOFU?] |
| TikTok Ads | [X don] | [X don] | [X don] | [Vai tro chinh?] |
| Google Search | [X don] | [X don] | [X don] | [Vai tro chinh?] |
| Organic | [X don] | [X don] | [X don] | [Vai tro chinh?] |

**Khuyen nghi:**
- Pheu ngan (1–3 ngay): dung Last Click
- Pheu trung binh (7–14 ngay): dung Linear
- Pheu dai (30+ ngay): dung First Click cho TOFU, Last Click cho BOFU
