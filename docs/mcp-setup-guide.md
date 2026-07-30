# Huong Dan Setup MCP — Ket Noi AI Voi Tai Khoan Quang Cao

> **Muc dich:** Huong dan TUNG BUOC de ket noi Claude/ChatGPT voi tai khoan Meta Ads, Google Ads, TikTok Ads.
> Sau khi setup, AI co the tu dong pull data thay vi ban phai paste so lieu.
>
> **Reference ky thuat day du:** `skills/vi/references/mcp-ads-integration.md`

---

## MCP la gi?

MCP (Model Context Protocol) = "cau noi" giua AI va tai khoan quang cao cua ban.

```
Truoc MCP:
  Ban: "Phan tich ads cua toi"
  AI:  "Cho toi so lieu di"
  Ban: [mo Ads Manager → export → paste → doi]
  AI:  [phan tich]

Sau MCP:
  Ban: "Phan tich ads cua toi"
  AI:  [tu dong pull data tu tai khoan] → [phan tich ngay]
```

---

## Chon MCP nao? (1 phut)

### Neu ban chi dung Meta Ads

| Lua chon | Do kho | Chi phi | Kha nang |
|----------|--------|---------|----------|
| **Meta Official MCP** | De nhat | Mien phi | Doc + Ghi (tao campaign, cap nhat budget) |
| **Pipeboard** | De | Free tier | Doc + Ghi + Targeting research |
| **brijr/meta-mcp** | Trung binh (can npm) | Mien phi | Doc + Ghi + Diagnostics |

**Khuyen dung:** Bat dau voi **Meta Official MCP** — setup 5 phut, khong can ky thuat.

### Neu ban dung nhieu nen tang

| Lua chon | Platforms | Do kho | Chi phi |
|----------|----------|--------|---------|
| **Adspirer** | Meta + Google + TikTok + LinkedIn | De | Co paid plan |
| **Flyweel** | Meta + Google + TikTok | De | Free tier |

### Neu ban muon nghien cuu doi thu

| Lua chon | Lam gi | Chi phi |
|----------|--------|---------|
| **facebook-ads-library-mcp** | Xem quang cao doi thu dang chay | Mien phi |

---

## Setup tung buoc

### A. Meta Official MCP (Khuyen dung — 5 phut)

**Buoc 1:** Truy cap Meta Business Suite va xac nhan ban co quyen Admin tren tai khoan ads.

**Buoc 2 (Claude Desktop):**

Mo file config:
- **Mac:** `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows:** `%APPDATA%\Claude\claude_desktop_config.json`

Them vao:
```json
{
  "mcpServers": {
    "meta-ads": {
      "url": "YOUR_META_PROVISIONED_MCP_URL"
    }
  }
}
```

**Buoc 3 (Claude Code):**
```bash
npm install -g @meta/ads-cli
```

Chay lan dau → Meta hoi dang nhap (OAuth) → Cap quyen → Xong.

**Buoc 4:** Test bang cach hoi: "List cac chien dich dang chay tren Meta Ads cua toi"

---

### B. Pipeboard (Agency — 10 phut)

**Buoc 1:** Truy cap [pipeboard.co](https://pipeboard.co) → Dang ky (mien phi)

**Buoc 2:** Ket noi tai khoan Meta Ads qua OAuth.

**Buoc 3:** Them vao Claude config:
```json
{
  "mcpServers": {
    "meta-ads": {
      "url": "https://mcp.pipeboard.co/meta-ads-mcp"
    }
  }
}
```

Hoac voi token truc tiep:
```json
{
  "mcpServers": {
    "meta-ads": {
      "url": "https://mcp.pipeboard.co/meta-ads-mcp?token=YOUR_PIPEBOARD_TOKEN"
    }
  }
}
```

**Buoc 4:** Restart Claude Desktop → Test: "Show ad accounts"

---

### C. Google Ads Official MCP (15 phut — can Google Cloud)

> **Luu y:** Google Ads MCP chi **DOC** — khong tao/sua campaign duoc.

**Buoc 1:** Tao project tren [Google Cloud Console](https://console.cloud.google.com)

**Buoc 2:** Bat Google Ads API → Lay Developer Token

**Buoc 3:** Tao OAuth 2.0 credentials (Client ID + Secret)

**Buoc 4:** Them vao Claude config:
```json
{
  "mcpServers": {
    "google-ads-mcp": {
      "command": "pipx",
      "args": [
        "run", "--spec",
        "git+https://github.com/googleads/google-ads-mcp.git",
        "google-ads-mcp"
      ],
      "env": {
        "GOOGLE_PROJECT_ID": "your-project-id",
        "GOOGLE_ADS_DEVELOPER_TOKEN": "your-dev-token",
        "GOOGLE_ADS_CLIENT_ID": "your-client-id",
        "GOOGLE_ADS_CLIENT_SECRET": "your-client-secret",
        "GOOGLE_ADS_REFRESH_TOKEN": "your-refresh-token"
      }
    }
  }
}
```

**Buoc 5:** Test: "List cac tai khoan Google Ads cua toi"

---

### D. Facebook Ads Library MCP (Nghien cuu doi thu — 10 phut)

**Buoc 1:** Tao Facebook Access Token tai [Graph API Explorer](https://developers.facebook.com/tools/explorer/)
- Chon quyen: `ads_read`
- Copy token

**Buoc 2:**
```bash
git clone https://github.com/RamsesAguirre777/facebook-ads-library-mcp.git
cd facebook-ads-library-mcp
pip install -r requirements.txt
```

**Buoc 3:** Them vao Claude config:
```json
{
  "mcpServers": {
    "fb-ads-library": {
      "command": "python",
      "args": ["path/to/facebook-ads-library-mcp/server.py"],
      "env": {
        "FB_ACCESS_TOKEN": "your-token-here"
      }
    }
  }
}
```

**Buoc 4:** Test: "Tim tat ca quang cao dang chay cua [ten doi thu]"

---

## Kiem tra MCP da hoat dong

Sau khi setup, chay cac lenh nay de kiem tra:

| Test | Lenh | Ky vong |
|------|------|---------|
| Meta Ads | "List ad accounts cua toi" | Tra ve ten tai khoan + ID |
| Meta Insights | "Lay so lieu 30 ngay gan nhat: spend, CPMess, ROAS" | Tra ve bang so lieu |
| Google Ads | "List campaigns dang active" | Tra ve danh sach campaign |
| Ads Library | "Tim ads dang chay cua [doi thu]" | Tra ve danh sach quang cao |

---

## Loi thuong gap

### "Token expired" / "Invalid token"

- **Meta:** Token het han sau 60 ngay. Vao Graph API Explorer → Generate token moi
- **Google:** Refresh token thuong khong het han, nhung Client ID/Secret co the bi revoke

### "Permission denied"

- Kiem tra quyen: can `ads_read` (doc) va `ads_management` (ghi)
- Neu dung Business Manager: phai co quyen Admin tren tai khoan ads

### "Rate limit exceeded"

- Meta: Doi 5 phut roi thu lai. Giam tan suat query
- Google: Toi da 15,000 requests/ngay. Giam so query phuc tap

### MCP khong hien trong Claude

- Kiem tra file config dung duong dan
- Restart Claude Desktop / Claude Code
- Kiem tra MCP server dang chay (neu local)

---

## Bao mat

1. **KHONG** commit access token vao git
2. Dung environment variables hoac `.env` file (them vao `.gitignore`)
3. Chi cap quyen can thiet (`ads_read` neu chi can doc)
4. Review quyen dinh ky — revoke token khong dung
5. Token Meta het han 60 ngay — dat lich refresh

---

## Mapping MCP → Skill

Sau khi setup MCP, cac skill sau se tu dong pull data:

| Skill | Khong co MCP | Co MCP |
|-------|-------------|--------|
| **03 danh-gia-hieu-suat** | User paste so lieu | AI pull insights tu dong |
| **07 bao-cao-marketing** | User export CSV | AI pull 30-day data tu dong |
| **08 nghien-cuu-doi-thu** | User screenshot ads doi thu | AI search Ads Library tu dong |
| **10 tinh-kpi-nguoc** | User nhap so hien tai | AI pull current metrics tu dong |
| **21 audit-ads-performance** | User paste data | AI pull + chay 84 checkpoints tu dong |

> **Khong co MCP van dung duoc tat ca skill.** MCP chi lam workflow nhanh hon — khong bat buoc.
