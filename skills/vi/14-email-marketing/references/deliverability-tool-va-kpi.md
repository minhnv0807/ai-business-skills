# Deliverability, Tool, Phap Ly Va KPI Email

> Reference cua skill 14-email-marketing. Doc khi can setup ky thuat gui (SPF/DKIM/DMARC, warm-up), chon tool, kiem tra tuan thu PDPA, hoac tra benchmark KPI email cho thi truong Viet Nam.

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

### PDPA Viet Nam (Nghi dinh 13/2023/ND-CP)

| Yeu cau | Cach thuc hien |
|---------|---------------|
| Dong y (Consent) | Form dang ky co checkbox dong y nhan email (khong tick san) |
| Quyen rut dong y | Link unsubscribe trong moi email, xu ly trong 24h |
| Bao mat du lieu | Ma hoa danh sach email, khong chia se voi ben thu 3 |
| Muc dich ro rang | Ghi ro "Dang ky nhan email ve [noi dung gi]" |
| Quyen xoa du lieu | Cung cap cach de user yeu cau xoa toan bo du lieu |

### Checklist compliance

- [ ] Form dang ky co o tick dong y (khong tu dong tick)
- [ ] Moi email co link Unsubscribe o footer
- [ ] Co dia chi lien he/doanh nghiep trong footer
- [ ] Khong gui email cho nguoi chua dong y
- [ ] Xu ly unsubscribe trong vong 24h
- [ ] Luu tru bang chung dong y (consent log)

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
