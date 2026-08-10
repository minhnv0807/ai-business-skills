---
name: 66-crisis-playbook
description: "Dung khi thuong hieu DANG bi tan cong hoac campaign gay phan ung xau — phan loai 5 cap L1 den L5, quy trinh 4 gio dau, template phan hoi tung tinh huong, ai duoc phat ngon, danh sach TUYET DOI khong lam va post-mortem sau khung hoang. Kich hoat khi user nhac 'khung hoang truyen thong', 'crisis', 'bi bao xau', 'review 1 sao lan rong', 'content gay phan ung', 'khach to tren mang', 'dang bi tay chay', 'phai xin loi the nao'. Khong dung cho — theo doi va canh bao som khi chua co su co thi dung skill 15-social-listening; campaign kem ve so lieu chu khong phai su co thi dung skill 03-danh-gia-hieu-suat; tong ket bai hoc sau khi da yen thi dung skill 63-campaign-retrospective."
metadata:
  version: 1.0.1
  category: operations
license: MIT
triggers:
  - "xu ly khung hoang"
  - "crisis playbook"
  - "campaign dang fail"
  - "content gay phan ung tieu cuc"
  - "review xau lan rong"
  - "brand bi tan cong"
  - "complaint viral"
  - "khung hoang truyen thong"
output: "File .md — phan loai crisis, response plan theo gio, ai lam gi, noi gi va khong noi gi, escalation matrix, post-mortem"
related:
  - 15-social-listening
  - 03-danh-gia-hieu-suat
  - 63-campaign-retrospective
  - 07-bao-cao-marketing
  - 62-marketing-review
---

# Crisis Playbook

> Khung hoang den bat ngo — playbook phai co san truoc khi can dung. Ba quy tac goc: (1) khong phan ung khi chua du thong tin, phan lon crisis trong te hon thuc te trong 30 phut dau; (2) khong im lang qua 4 gio voi crisis dang lan, im lang bi hieu la thua nhan; (3) xu ly dung la co hoi xay trust, xu ly sai la mat trust vinh vien.

## Thu thap thong tin

Doc `15-social-listening` report neu co (phat hien som). Truoc khi lam bat cu gi, tra loi 4 cau:

1. **Crisis loai gi?** Doi chieu bang phan loai L1-L5 ben duoi.
2. **Toc do lan?** 10 nguoi biet hay 10.000 nguoi? Dang o mot kenh hay da nhay kenh?
3. **Nguon goc tu dau?** Mot khach hang khong hai long, KOL/influencer, doi thu, hay bao chi?
4. **Su that la gi?** Fact nao dang bi tranh cai, minh co bang chung khong, va co du thong tin de phan hoi chua?

Neu chua du thong tin: cong bo mot cau ngan xac nhan dang kiem tra, va hen gio cap nhat cu the. Khong im lang, cung khong phan hoi voi tin chua kiem chung.

## Nguyen tac

1. **Assess truoc, react sau.** Danh 30-60 phut dieu tra con hon phan hoi sai trong 5 phut.
2. **Khong im lang qua 4 gio** voi crisis dang lan.
3. **Khong xoa comment tieu cuc chinh dang** (tru spam/hate speech ro rang) — xoa lam crisis nang them.
4. **Khong tranh cai cong khai.** Keo nguoi complaint vao kenh rieng de xu ly.
5. **Khong phan hoi khi dang cam xuc.** Viet nhap, cho 30 phut, doc lai, roi gui.
6. **Khong hua dieu chua chac lam duoc**, khong noi giam su that.
7. **L3 tro len bat buoc bao leader**, khong tu xu ly.

## Phan loai crisis

| Cap | Loai | Vi du | Do uu tien | Thoi gian phan hoi |
|-----|------|-------|------------|--------------------|
| L1 | Operational — campaign/he thong loi, KPI miss nang | Ads khong chay, landing page down, tracking hong | High | 2-4 gio |
| L2 | Content — noi dung sai su that, vo y gay hieu lam | Caption gay hieu nham, so lieu sai, hinh anh khong phu hop | High | 2-4 gio |
| L3 | Reputation — complaint khach hang lan rong | Review 1 sao viral, bai boc phot | Critical | 1-2 gio |
| L4 | Brand attack — tan cong co to chuc | Fake review hang loat, doi thu boi nho | Critical | Ngay |
| L5 | Legal/Compliance — vi pham quy dinh, claim sai luat | Claim y te khong duoc phep, vi pham ban quyen | Critical + luat su | Ngay |

## Quy trinh theo tung cap

### L1 — Operational

Trong 2 gio dau: keo data day du de biet so that dang o dau; chan doan nguyen nhan goc (goi `03-danh-gia-hieu-suat`); bao CEO kem hypothesis va action; trien khai fix khan.

Mau bao cao: "Campaign [X] dang o [so thuc] so voi target [so muc tieu]. Nguyen nhan so bo: [gia thuyet]. Dang lam: [3 hanh dong]. Cap nhat tiep luc [gio]."

### L2 — Content

Ngay lap tuc: chup man hinh luu bang chung TRUOC khi go; go bai lien quan (nhanh hon la di xin loi tren bai cu); bao leader, khong tu xu ly.

Trong 2-4 gio: dieu tra sai o dau, anh huong ai, reach bao nhieu; viet nhap phan hoi, leader duyet truoc khi dang (goi `62-marketing-review`).

Mau phan hoi: "Chung toi vua phat hien [noi dung X] trong bai dang ngay [Y] co [loi/thong tin khong chinh xac]. Chung toi da [go/sua] va xin loi vi su nham lan. Thong tin dung la: [...]. Cam on [nguoi phat hien] da phan anh."

### L3 — Reputation

Ngay lap tuc: KHONG xoa comment, KHONG tranh cai cong khai, luu lai toan bo bang chung kem thoi gian.

Trong 1-2 gio: xac minh complaint co chinh dang khong.

- Neu chinh dang: thua nhan, xin loi, sua, den bu. Mau: "[Ten], chung toi rat tiec ve trai nghiem nay. Day khong phai tieu chuan chung toi muon mang den. Ban nhan tin rieng giup chung toi de xu ly truc tiep duoc khong?"
- Neu khong chinh dang: trinh bay su that binh tinh, kem bang chung, khong day cang thang len.

### L4 — Brand attack

Luu bang chung co thoi gian; bao CEO ngay; can nhac im lang (neu quy mo nho, phan hoi se khuech dai) hay len tieng (neu dang lan); tuyet doi khong phan hoi theo cam xuc; tham van phap ly neu co dau hieu vu khong.

### L5 — Legal/Compliance

Dung toan bo campaign lien quan NGAY; bao CEO ngay; tham van luat su truoc khi lam bat cu dieu gi; khong phat ngon cong khai truoc khi co y kien phap ly.

## Escalation matrix

| Cap | Ai xu ly | Ai phai biet | Timeline |
|-----|----------|--------------|----------|
| L1 | Media buyer + leader | CEO trong ngay | 2-4 gio |
| L2 | Content + leader | CEO neu reach > 10K | 2-4 gio |
| L3 | Leader | CEO ngay | 1-2 gio |
| L4 | CEO + leader | Ban lanh dao neu can | Ngay |
| L5 | CEO + luat su | Ban lanh dao | Ngay |

## Danh sach KHONG lam

- Xoa comment tieu cuc chinh dang.
- Tranh cai hoac doi dau cam xuc voi nguoi dang gian.
- Phan hoi khi chua kiem chung fact.
- Hua den bu/xu ly dieu chua chac thuc hien duoc.
- Noi doi hoac noi giam muc do nghiem trong.
- Im lang qua 4 gio khi crisis dang lan.
- De junior tu quyet dinh phan hoi tu cap L2 tro len.

## Cau truc ket qua

```markdown
# Crisis Response — [Ten su viec] — [Date/Gio]

## 1. Danh gia ban dau
| Hang muc | Noi dung |
|----------|----------|
| Phan loai | L[1-5] — [ten loai] |
| Nguon goc | |
| Quy mo hien tai | [reach uoc tinh, so kenh] |
| Fact da xac minh | |
| Fact chua xac minh | |

## 2. Response plan theo gio
| Moc thoi gian | Hanh dong | Owner | Trang thai |
|---------------|-----------|-------|------------|
| 0-1h | | | |
| 1-4h | | | |
| 4-24h | | | |
| Ngay 2-7 | | | |

## 3. Thong diep
Noi gi (da duyet): [...]
Khong noi gi: [...]
Nguoi phat ngon: [...]
Kenh phat ngon: [...]

## 4. Xu ly noi bo
| Viec | Owner | Deadline |
|------|-------|----------|

## 5. Theo doi
| Chi so | Truoc | Sau 24h | Sau 7 ngay |
|--------|-------|---------|------------|
| Sentiment | | | |
| Volume nhac ten | | | |
| Inbox/complaint | | | |
```

## Sau khung hoang

Sau 1 tuan: viet post-mortem (chuyen gi xay ra, xu ly the nao, ket qua), cap nhat playbook voi bai hoc moi, hop team de tranh lap lai. Neu crisis lien quan campaign, gop vao `63-campaign-retrospective`.

## Lien ket skill

- `15-social-listening`: phat hien som truoc khi thanh crisis; theo doi sentiment trong va sau.
- `03-danh-gia-hieu-suat`: chan doan nguyen nhan goc cho crisis L1.
- `62-marketing-review`: duyet noi dung phan hoi truoc khi dang.
- `63-campaign-retrospective`: rut bai hoc he thong sau khi xu ly xong.
- `07-bao-cao-marketing`: bao cao anh huong len KPI thang.

## Checklist chat luong

- [ ] Da phan loai dung cap truoc khi phan hoi.
- [ ] Da luu bang chung co thoi gian truoc khi go bat cu thu gi.
- [ ] Fact trong phan hoi da duoc xac minh.
- [ ] Phan hoi da qua nguoi duyet (leader tro len voi L2+).
- [ ] Co nguoi phat ngon duy nhat — khong de nhieu nguoi tra loi lech nhau.
- [ ] Khong vi pham danh sach KHONG lam.
- [ ] Co lich theo doi sentiment sau 24h va 7 ngay.
- [ ] Da len lich post-mortem trong vong 1 tuan.
