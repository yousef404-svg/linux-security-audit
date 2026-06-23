#!/bin/bash

echo
echo "================================"
echo "SSH Audit"
echo "================================"

if systemctl list-unit-files | grep -q ssh; then
    echo "[INFO] SSH is installed"

    if systemctl is-active ssh >/dev/null 2>&1; then
        echo "[PASS] SSH is running"
    else
        echo "[WARN] SSH is installed but not running"
    fi

else
    echo "[FAIL] SSH is not installed"
fi

echo
echo "[INFO] Note: SSH config checks will be skipped (no active service)"
