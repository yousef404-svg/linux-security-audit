#!/bin/bash

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m'

show_banner() {
    echo -e "${CYAN}"

    if command -v figlet >/dev/null 2>&1; then
        figlet "AUDIT"
    fi

    echo "╔══════════════════════════════════╗"
    echo "║     Linux Security Audit Tool    ║"
    echo "╚══════════════════════════════════╝"

    echo -e "${NC}"
}

loading() {
    echo -ne "${YELLOW}[*] Running Audit"

    for i in 1 2 3 4 5
    do
        echo -n "."
        sleep 0.3
    done

    echo
    echo -e "${NC}"
}

while true
do
    clear

    show_banner

    echo "╔══════════════════════════════════╗"
    echo "║     Linux Security Audit Tool    ║"
    echo "╠══════════════════════════════════╣"
    echo "║ 1. Full System Audit             ║"
    echo "║ 2. Users Audit                   ║"
    echo "║ 3. Network Ports Audit           ║"
    echo "║ 4. Services Audit                ║"
    echo "║ 5. Hardening Check               ║"
    echo "║ 6. Exit                          ║"
    echo "╚══════════════════════════════════╝"
    echo

    read -p "Enter your choice: " choice

    case "$choice" in

        1)
            clear
            show_banner
            loading

            ./modules/users.sh
            echo

            ./modules/ports.sh
            echo

            ./modules/services.sh
            echo

            ./modules/hardening.sh
            echo

            read -p "Press Enter to continue..."
            ;;

        2)
            clear
            show_banner

            ./modules/users.sh

            echo
            read -p "Press Enter to continue..."
            ;;

        3)
            clear
            show_banner

            ./modules/ports.sh

            echo
            read -p "Press Enter to continue..."
            ;;

        4)
            clear
            show_banner

            ./modules/services.sh

            echo
            read -p "Press Enter to continue..."
            ;;

        5)
            clear
            show_banner

            ./modules/hardening.sh

            echo
            read -p "Press Enter to continue..."
            ;;

        6)
            echo -e "${GREEN}[+] Goodbye!${NC}"
            exit 0
            ;;

        *)
            echo -e "${RED}[!] Invalid choice!${NC}"
            sleep 1
            ;;

    esac

done
