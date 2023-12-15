#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
clear 
        # background validation
        green_background="\033[42;37m"
        red_background="\033[41;37m"
        # color text 
        yelow="\e[1;33m"
        NC="\033[0m"
        cyan="\e[1;36m"
        white="\e[1;37m"
clear    
echo -e ""
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[36m             SYSTEM SETING    \033[0m"
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo -e ""
echo -e "\e[33m ┌──────────────────────────────────┐\033[0m"
echo -e "\e[36m      1. Cek System Running   \033[0m  "
echo -e "\e[36m      2. Chnge Domain server  \033[0m   "
echo -e "\e[36m      3. Change Banner server\033[0m "
echo -e "\e[36m      4. Chnge Auto Reboot \033[0m  "
echo -e "\e[36m      5. Speedtest server  \033[0m "
echo -e "\e[36m      6. Restart All Service  \033[0m  "
echo -e "\e[36m      7. Cek Bandwith  \033[0m  "
echo -e "\e[36m      8. Clear log all service \033[0m  "
echo -e "\e[36m      9. Update script  \033[0m   "
echo -e "\e[36m      10. About Script   \033[0m  "
echo -e "\e[36m      11. Reboot server  \033[0m   "
echo -e "\e[31m      0. Back to menu   \033[0m  "
echo -e "\e[33m └──────────────────────────────────┘\033[0m"
echo ""
read -p " Select From Options [ 1 - 11 ] : "  opt
echo -e ""
case $opt in
1) clear ; running ; exit ;;
2) clear ; add-host ; exit ;;
3) clear ; nano /etc/issue.net ; exit ;; #ssh-vpn banner.conf
4) clear ; jam ; exit ;;
5) clear ; speedtest ; exit ;;
6) clear ; restart ; exit ;;
7) clear ; bw ; exit ;;
8) clear ; clearcache ; exit ;;
9) clear ; update ; exit ;;
10) clear ; about ; exit ;;
11) clear ; reboot ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; menu-set ;;
esac