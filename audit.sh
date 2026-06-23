#!/bin/bash

while true; do
clear

echo "================================"
echo " Linux Security Audit Tool "
echo "================================"
echo
echo "1) Full System Audit"
echo "2) Users Audit"
echo "3) Network Ports Audit"
echo "4) Services Audit"
echo "5) Hardening Check"
echo "6) Exit"
echo
read -p "Enter your choice: " choice

case $choice in

1)
    echo
    echo "[*] Running Full Audit..."
    ./modules/users.sh
    ./modules/ports.sh
    ./modules/services.sh
    ./modules/hardening.sh
    read -p "Press Enter to continue..."
    ;;

2)
    ./modules/users.sh
    read -p "Press Enter to continue..."
    ;;

3)
    ./modules/ports.sh
    read -p "Press Enter to continue..."
    ;;

4)
    ./modules/services.sh
    read -p "Press Enter to continue..."
    ;;

5)
    ./modules/hardening.sh
    read -p "Press Enter to continue..."
    ;;

6)
    echo "Exiting..."
    exit 0
    ;;

*)
    echo "Invalid choice!"
    read -p "Press Enter to continue..."
    ;;
esac

done
