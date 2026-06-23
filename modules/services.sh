#!/bin/bash

echo
echo "================================"
echo "Running Services Audit"
echo "================================"

systemctl list-units --type=service --state=running
