# GH Tun (g2ray)

> Simple Xray VLESS tunnel for GitHub Codespaces

---

## ⚠️ DISCLAIMERS

> [!WARNING]
> **Educational use only.** You are responsible for complying with all laws and GitHub's Terms of Service.

> [!CAUTION]
> Don't use this for illegal activities, bypassing restrictions, or violating any platform rules.

---

## ✅ Pre-Connection Test

**Before connecting, ping these IPs from your LOCAL machine:**

```bash
ping 63.141.252.203
ping 50.7.5.83
ping 94.130.50.12
```

> [!NOTE]
> - **If they ping back** → You can connect directly
> - **If they don't ping** → Your ISP is blocking them. Try changing it or use Shecan DNS. (visit [shecan.ir](https://shecan.ir) for setup guide)

---

## 🚀 Quick Start

1. **Create Codespace** from this repo
2. **Wait for build** (~1-2 minutes)
3. **Copy the VLESS link** from terminal
4. **Connect** using any VLESS client (Hiddify, Nekobox, v2rayNG, etc.)

## ✅ Verification

Script runs automatically in every terminal:

```bash
Checking Xray status...
✅ Xray is running (PID: 1234)
Port 443: 1 listener(s)
```

## 🔧 Manual Commands

| What | Command |
|------|---------|
| Check status | `/app/verify.sh` |
| Restart Xray | `pkill xray && /usr/local/bin/xray -c /etc/config.json &` |
| View port | `ss -tlnp \| grep 443` |

## ⚙️ Configuration

- **Protocol:** VLESS
- **Port:** 443
- **Transport:** xHTTP (packet-up)
- **Security:** TLS

> [!NOTE]
> You could change the UUID, but I won't cover step by step guide here.

## 🙏 Credits — [!["Buy Me A Coffee"](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-ffdd00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/amiremohamadi)

I am **not** the original author of this work. I only expanded on it and use it for my personal needs.

The original repository could not be found, but you can support him directly using the Buy Me a Coffee link.

---
