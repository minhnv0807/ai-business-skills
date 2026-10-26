# Deliverability, Tool, Phap Ly Va KPI Email

> Reference cua skill 14-email-marketing. Doc khi can setup ky thuat gui (SPF/DKIM/DMARC, warm-up), chon tool, kiem tra cach lam email theo thuc hanh tot ve du lieu ca nhan, hoac tra benchmark KPI email cho thi truong Viet Nam.

## Deliverability — Dam bao email vao Inbox

### Checklist ky thuat bat buoc

| Hang muc | Yeu cau | Cach kiem tra |
|----------|---------|-------------|
| SPF | Them record SPF vao DNS | MXToolbox.com |
| DKIM | Ky so email bang DKIM key | MXToolbox.com |
| DMARC | Them record DMARC vao DNS | MXToolbox.com |
| Domain rieng | Gui email tu domain cua thuong hieu, khong dung @gmail.com | Cai dat trong Brevo |
| Warm-up | Tang dan so luong gui: 50 → 100 → 200 → 500/ngay | Theo doi bounce rate |
| List hygiene | Xoa email bounce, khong mo 6 thang | Chay moi quy |

### Lich warm-up domain moi

| Tuan | So email/ngay | Doi tuong gui | Muc dich |
|------|-------------|--------------|---------|
| Tuan 1 | 50–100 | Noi bo + khach hang than | Test ky thuat, xay reputation |
| Tuan 2 | 100–300 | Subscriber moi nhat (engaged) | Tang reputation |
| Tuan 3 | 300–500 | Mo rong them nhom Active | On dinh |
| Tuan 4+ | 500–1000+ | Toan bo list (tru Cold) | Van hanh binh thuong |

### Quy tac tranh spam

- Khong mua list email — chi gui cho nguoi da dong y (opt-in)
- Khong dung ALL CAPS trong subject line
- Tranh tu spam: "Mien phi 100%", "Nhan ngay", qua nhieu dau "!!!"
- Ti le text/image: toi thieu 60% text, toi da 40% image
- Co link unsubscribe o cuoi moi email
- Gi cung test truoc khi gui hang loat

## Tool khuyen dung — Viet Nam

| Tool | Free tier | Gia | Diem manh | Khi dung |
|------|----------|-----|----------|---------|
| **Brevo** (khuyen dung) | 300 email/ngay, unlimited contacts | Tu $9/thang | Automation manh, UI tieng Viet, server chau A | Mac dinh cho thi truong VN |
| Mailchimp | 500 contacts, 1000 email/thang | Tu $13/thang | Template dep, tich hop nhieu | Khi can nhieu template |
| Kit (ConvertKit) | 1000 subscribers | Tu $15/thang | Tot cho creator, landing page built-in | Personal brand, educator |

### Setup Brevo co ban

1. Tao tai khoan tai brevo.com
2. Them domain gui email (SPF + DKIM + DMARC)
3. Import contacts + phan nhom
4. Tao Welcome automation
5. Thiet ke email template (brand colors, logo)
6. Test gui 50 email noi bo
7. Bat dau warm-up theo lich o tren

## Tuan thu phap luat

### Du lieu ca nhan trong email — thuc hanh tot

> **Nghia vu phap ly:** Luat Bao ve du lieu ca nhan 91/2025/QH15 + ND 356/2025/ND-CP (hieu luc 2026-01-01) — xem `skills/vi/references/phap-ly-marketing-vn.md` muc 2. Bang duoi la **thuc hanh tot cho email**, khong phai trich dieu luat; doi chieu van ban goc truoc khi dua vao chinh sach / hop dong.

| Viec can lam | Cach thuc hien (thuc hanh tot) |
|--------------|-------------------------------|
| Double opt-in | Gui email xac nhan sau khi dang ky; chi them vao list khi khach bam xac nhan |
| Khong tick san | O dong y nhan email de trong, tach rieng khoi o dong y dieu khoan dich vu |
| Muc dich ro rang | Ghi ro "Dang ky nhan email ve [noi dung gi]" canh nut dang ky + link chinh sach du lieu |
| Consent log | Luu thoi diem, nguon form, noi dung da dong y cho tung dia chi |
| Huy dang ky 1 cham | Link unsubscribe trong moi email, bam la huy, khong bat dang nhap; xu ly som va that |
| Khong mua list | Khong mua / thue danh sach email, SDT; chi gui cho nguoi da dong y |
| Custom Audience | Chi upload danh sach khach len Meta / Google khi da co co so dong y cho muc dich quang cao |
| Yeu cau xoa | Co kenh de khach yeu cau xoa du lieu; ghi nguoi phu trach xu ly |

### Checklist truoc khi gui

- [ ] Form dang ky co o dong y khong tick san + double opt-in
- [ ] Moi email co link Unsubscribe 1 cham o footer
- [ ] Co dia chi lien he / ten doanh nghiep trong footer
- [ ] Khong gui cho nguoi chua dong y; khong dung list mua
- [ ] Yeu cau huy dang ky duoc xu ly truoc lan gui ke tiep
- [ ] Luu consent log cho moi dia chi

## KPI va Benchmark

### Chi so theo doi hang tuan

| KPI | Cong thuc | Benchmark VN | Kem | Tot | Xuat sac |
|-----|----------|-------------|-----|-----|----------|
| Open rate | So mo / So gui | 15–25% | <15% | 25–35% | >35% |
| Click rate (CTR) | So click / So gui | 1–3% | <1% | 3–5% | >5% |
| Click-to-open rate (CTOR) | So click / So mo | 10–15% | <10% | 15–25% | >25% |
| Unsubscribe rate | So huy / So gui | 0.3–1% | >1% | 0.1–0.3% | <0.1% |
| Bounce rate | So bounce / So gui | 1–3% | >3% | 0.5–1% | <0.5% |
| Spam complaint | So complaint / So gui | 0.05–0.1% | >0.1% | <0.05% | <0.01% |

### Chi so theo doi hang thang

| KPI | Cong thuc | Muc tieu |
|-----|----------|---------|
| List growth rate | (Sub moi - Unsub) / Tong sub | >5%/thang |
| Revenue per email | Doanh thu tu email / So email gui | Tang MoM |
| Conv rate | So mua hang / So click | >2% |
| Email ROI | (Revenue - Cost) / Cost | >30x |
