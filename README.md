# 🛡️ Linux Security Audit Tool

![Linux](https://img.shields.io/badge/Linux-Audit-blue?style=for-the-badge)
![Bash](https://img.shields.io/badge/Bash-Scripting-black?style=for-the-badge)
![Security](https://img.shields.io/badge/Cyber-Security-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-success?style=for-the-badge)

##  Overview

Linux Security Audit Tool is a Bash-based security auditing utility that scans a Linux system and evaluates its security posture based on common hardening practices.  

It generates a security score, color-coded CLI output, and detailed reports for system analysis.

## Features

- Firewall status check (UFW)
- SSH configuration audit
- Automatic updates check
- Sudo users detection
- Critical directory permissions check
- Security scoring system (out of 10)
- Color-coded CLI output (PASS / WARN / FAIL)
- Automated report generation

## 📂 Project Structure


linux-security-audit/
│
├── audit.sh
├── README.md
├── modules/
│ ├── users.sh
│ ├── ports.sh
│ ├── services.sh
│ ├── ssh_audit.sh
│ └── hardening.sh
│
├── reports/
└── screenshots/

##  Installation

```bash
git clone https://github.com/your-username/linux-security-audit.git

cd linux-security-audit

chmod +x audit.sh modules/*.sh

---

# ▶️ 5) Usage

```md
## ▶️ Usage

Run full system audit:

```bash
./audit.sh

##  What I Learned

- Linux system administration basics
- File permissions and security risks
- Bash scripting automation
- System auditing techniques
- Security hardening concepts
- CLI tool development
