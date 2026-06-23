#!/bin/bash

echo
echo "================================"
echo "Firewall Audit"
echo "================================"

if ! command -v ufw >/dev/null 2>&1; then
    echo "[!] UFW is not installed"
    exit 0
fi

sudo ufw status
