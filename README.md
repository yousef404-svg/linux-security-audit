# 🛡️ Linux Security Audit Tool

![Linux](https://img.shields.io/badge/Linux-Audit-blue?style=for-the-badge)
![Bash](https://img.shields.io/badge/Bash-Scripting-black?style=for-the-badge)
![Security](https://img.shields.io/badge/Cyber-Security-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

---

## 📌 Overview

Linux Security Audit Tool is a Bash-based security auditing utility that scans a Linux system and evaluates its security posture based on common hardening practices.

It provides:
- Security score
- Automated detailed reports
- Interactive menu-based interface

---

## ⚙️ Features

- Firewall status check (UFW)
- SSH configuration audit
- Automatic updates check
- Sudo users detection
- Critical directory permissions check
- World-writable files detection
- Security scoring system (0–10)
- Automated report generation
- Modular architecture design

---

## 🧱 Project Structure

```bash
linux-security-audit/
│
├── audit.sh
├── README.md
├── .gitignore
│
├── modules/
│   ├── users.sh
│   ├── ports.sh
│   ├── services.sh
│   ├── ssh_audit.sh
│   ├── firewall.sh
│   ├── hardening.sh
│   └── world_writable.sh
│
├── reports/
└── screenshots/

🚀 Installation

git clone https://github.com/yousef404-svg/linux-security-audit.git
cd linux-security-audit
chmod +x audit.sh modules/*.sh




