#!/bin/bash
# FalconHack v1.0 - Multi-Tool Installer
# Author: Paul Mendoza
# GitHub: https://github.com/paulmendoza24/FalconHack

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Banner
clear
echo -e "${RED}
░█▀▀░█▀█░█░░░█▀▀░█▀█░█▀█░░░░░▀█▀░█▀█░█▀█░█░░░█▀▀░
░█▀▀░█▀█░█░░░█░░░█░█░█░█░▄▄▄░░█░░█░█░█░█░█░░░▀▀█░   ${NC}v1.0${RED}
░▀░░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░
${NC}"

# Check root
if [[ $EUID -eq 0 ]]; then
    echo -e "${YELLOW}[!] Warning: Running as root!${NC}"
    sleep 2
fi

# Main Menu
menu() {
    echo -e "${BLUE}
[1] Requests & Update       [2] Phishing Tool
[3] WebCam Hack             [4] Subscan
[5] Gmail Bomber            [6] DDOS Attack
[7] How to use?             [8] Uninstall Tools
[9] Ip Info                [10] Dorks Eye
[11] HackerPro             [12] RED_HAWK
[13] VirusCrafter          [14] Info-Site
[15] BadMod                [16] Facebash
[17] DARKARMY              [18] AUTO-IP-CHANGER
[0] Exit
${NC}"
}

# Dependencies
install_deps() {
    echo -e "${GREEN}[*] Installing dependencies...${NC}"
    pkg update -y
    pkg install -y git python python2 php curl wget tor
    pip install --upgrade pip
    echo -e "${GREEN}[+] Dependencies installed!${NC}"
}

# Main Function
main() {
    while true; do
        clear
        echo -e "${RED}$(cat << 'EOF'
░█▀▀░█▀█░█░░░█▀▀░█▀█░█▀█░░░░░▀█▀░█▀█░█▀█░█░░░█▀▀░
░█▀▀░█▀█░█░░░█░░░█░█░█░█░▄▄▄░░█░░█░█░█░█░█░░░▀▀█░
░▀░░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░
EOF
)${NC}"
        menu
        read -p "Select an option (0-18): " choice

        case $choice in
            1) # System Update
                install_deps
                ;;
            2) # Zphisher
                git clone https://github.com/htr-tech/zphisher.git
                cd zphisher && bash zphisher.sh
                ;;
            # ... (Add other tool cases following same pattern)
            0)
                echo -e "${GREEN}[+] Exiting...${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}[-] Invalid option!${NC}"
                ;;
        esac
        read -p "Press [Enter] to continue..."
    done
}

# Execution
if [[ ! -d "Tools" ]]; then
    mkdir Tools
fi
main
