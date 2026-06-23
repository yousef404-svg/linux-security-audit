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
- Color-coded CLI output
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
- Color-coded CLI output (PASS / WARN / FAIL)
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

📸 Screenshots

![Menu](<img width="1920" height="1020" alt="MENU" src="https://github.com/user-attachments/assets/44b3cf6c-e8f5-42d3-8936-0c03889e9a56" />
)
![Users](<img width="1920" height="1020" alt="users" src="https://github.com/user-attachments/assets/abb176e6-b75a-4203-bb67-877bb158c7c3" />
)
![Score](<img width="1911" height="961" alt="hardening" src="https://github.com/user-attachments/assets/773e869b-bcd1-422f-8677-7e1a56a86cab" />
)
