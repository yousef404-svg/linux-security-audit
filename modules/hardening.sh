#!/bin/bash

echo
echo "================================"
echo "System Hardening Check"
echo "================================"

SCORE=0
MAX=10

REPORT_FILE="reports/audit-$(date +%F).txt"
mkdir -p reports

echo "Linux Security Audit Report" > "$REPORT_FILE"
echo "Date: $(date)" >> "$REPORT_FILE"
echo "================================" >> "$REPORT_FILE"

log() {
    echo -e "$1"
    echo -e "$1" >> "$REPORT_FILE"
}

add_score() {
    SCORE=$((SCORE + $1))
}

echo "[*] Starting checks..."

# =========================
# 1. Firewall Check (UFW)
# =========================
log ""
log "[1] Firewall Status"

if command -v ufw >/dev/null 2>&1; then
    STATUS=$(sudo ufw status 2>/dev/null)

    if echo "$STATUS" | grep -q "Status: active"; then
        log "[PASS] Firewall is ACTIVE"
        add_score 2
    else
        log "[WARN] Firewall is INSTALLED but INACTIVE"
        add_score 1
    fi
else
    log "[FAIL] UFW not installed"
fi

# =========================
# 2. Auto Updates Check
# =========================
log ""
log "[2] Automatic Updates"

if systemctl list-unit-files | grep -q unattended-upgrades; then
    if systemctl is-enabled unattended-upgrades >/dev/null 2>&1; then
        log "[PASS] Auto updates enabled"
        add_score 2
    else
        log "[WARN] Auto updates available but disabled"
        add_score 1
    fi
else
    log "[WARN] Auto updates not configured"
    add_score 1
fi

# =========================
# 3. SSH Root Login Check
# =========================
log ""
log "[3] SSH Root Login"

if [ -f /etc/ssh/sshd_config ]; then

    if grep -q "^PermitRootLogin no" /etc/ssh/sshd_config; then
        log "[PASS] Root login is DISABLED"
        add_score 2
    elif grep -q "^PermitRootLogin yes" /etc/ssh/sshd_config; then
        log "[FAIL] Root login is ENABLED"
    else
        log "[WARN] Root login not explicitly set"
        add_score 1
    fi

else
    log "[INFO] SSH not installed"
fi

# =========================
# 4. Sudo Users Check
# =========================
log ""
log "[4] Sudo Users"

SUDO_USERS=$(getent group sudo 2>/dev/null | cut -d: -f4)

if [ -n "$SUDO_USERS" ]; then
    log "[INFO] Sudo users: $SUDO_USERS"
    add_score 1
else
    log "[FAIL] No sudo users found"
fi

# =========================
# 5. Critical Writable Paths
# =========================
log ""
log "[5] Critical Writable Directories"

VULN=0

for dir in /etc /bin /sbin /usr/bin; do
    if [ -w "$dir" ]; then
        log "[FAIL] Writable critical dir: $dir"
        VULN=$((VULN + 1))
    else
        log "[PASS] Safe: $dir"
    fi
done

if [ "$VULN" -eq 0 ]; then
    add_score 2
fi

# =========================
# FINAL SCORE
# =========================
log ""
log "================================"
log "SECURITY SCORE: $SCORE / $MAX"
log "================================"

echo
echo "Report saved to: $REPORT_FILE"
