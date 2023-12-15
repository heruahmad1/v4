#!/bin/bash
# =========================================
GREEN='\033[0;32m'
RED='\033[0;31m'
ipsaya=$(wget -qO- ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini"
checking_sc() {
  useexp=$(wget -qO- $data_ip | grep $ipsaya | awk '{print $3}')
  if [[ $date_list < $useexp ]]; then
    echo -ne
  else
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e "\033[42m          404 NOT FOUND AUTOSCRIPT          \033[0m"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    echo -e ""
    echo -e "            ${RED}PERMISSION DENIED !${NC}"
    echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
    echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
    echo -e "             \033[0;33mContact Admin :${NC}"
    echo -e "      \033[0;36mTelegram${NC} t.me/Kytxz"
    echo -e "      ${GREEN}WhatsApp${NC} wa.me/6281774970898"
    echo -e "\033[1;93m────────────────────────────────────────────\033[0m"
    exit
  fi
}
checking_sc
clear

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | grep $MYIP | awk '{print $2}')
if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi

# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")
let vla=$vlx/2
vmc=$(grep -c -E "^### " "/etc/xray/config.json")
let vma=$vmc/2
ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")
let tra=$trx/2
ssx=$(grep -c -E "^## " "/etc/xray/config.json")
let ssa=$ssx/2

UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="FranataSTORE"

#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
clear

data_ip="https://kytvpn.xcodehoster.com/izin"
d2=$(date -d "$date_list" +"+%s")
d1=$(date -d "$Exp" +"+%s")
dayleft=$(( ($d1 - $d2) / 86400 ))

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
                echo -e "${EROR} Please Run This Script As Root User !"
                exit 1
fi


# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi

clear
clear
function add-host(){
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • ADD VPS HOST •                ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/ssnvpn-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}
clear
clear
echo -e ""
echo -e "\e[33m    ┌─────────────────────────────────────────────────┐\033[0m"
echo -e "\e[33m ───│\033[0m  ${BICyan}   ┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐┬─┐┬┌─┐┌┬┐  ┬  ┬┌┬┐┌─┐ \033[0m \e[33m  │───\033[0m"
echo -e "\e[33m ───│\033[0m  ${BICyan}   ├─┤│ │ │ │ │└─┐│  ├┬┘│├─┘ │   │  │ │ ├┤   \033[0m \e[33m │───\033[0m"
echo -e "\e[33m ───│\033[0m  ${BICyan}   ┴ ┴└─┘ ┴ └─┘└─┘└─┘┴└─┴┴   ┴   ┴─┘┴ ┴ └─┘  \033[0m \e[33m │───\033[0m"
echo -e "\e[33m ───│\033[0m  ${BIWhite}       HR-vpn (C)https://t.me/HRstores      \033[0m \e[33m  │───\033[0m"
echo -e "\e[33m    └─────────────────────────────────────────────────┘\033[0m"
echo -e "${red}                  ♦️ SERVER INFORMATION ♦️   ${NC}"
echo -e "${BIYellow}                 ──────────────────────────${NC}"
echo -e "${BIWhite}      □ Server Uptime       = ${GREEN}$( uptime -p  | cut -d " " -f 2-10000 ) ${NC}"
echo -e "${BIWhite}      □ Operating System    = ${GREEN}$( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' )${NC}"
echo -e "${BIWhite}      □ ISP VPS             = ${GREEN}$(curl -s ipinfo.io/org | cut -d " " -f 2-10 ) ${NC}"           
echo -e "${BIWhite}      □ CITY                = ${GREEN}$(curl -s ipinfo.io/city ) ${NC}"
echo -e "${BIWhite}      □ IP-VPS              = ${GREEN}$(curl -sS ipv4.icanhazip.com)${NC}"           
echo -e "${BIWhite}      □ Current Domain      = ${GREEN}$( cat /etc/xray/domain )${NC}"
echo -e "${BIWhite}      □ NS Domain           = ${GREEN}$(cat /root/nsdomain)${NC}"
echo -e " ${BIWhite}     □ User script Exp     = ${GREEN}$exp ${NC} \033[1;31m$Name \e[0m${NC} "
echo -e "${BIYellow}  ┌─────────────────────────────────────────────────────┐${NC}" 
echo -e "${BIYellow}  │\033[0m ${BOLD}${YELLOW}  ---- SSH ---- VMESS ---- VLESS ---- TROJAN ----$NC" 
echo -e "${BIYellow}  │\033[0m ${BIWhite}        $ssh1        $vma          $vla           $tra $NC" 
echo -e "${BIYellow}  └─────────────────────────────────────────────────────┘${NC}"  
echo -e "${BICyan}       SSH ${NC}: $ressh"" ${BICyan} NGINX ${NC}: $resngx"" ${BICyan}  XRAY ${NC}: $resv2r"" ${BICyan} TROJAN ${NC}: $resv2r"
echo -e "${BICyan}          STUNNEL ${NC}: $resst" "${BICyan} DROPBEAR ${NC}: $resdbr" "${BICyan} SSH-WS ${NC}: $ressshws"
echo -e "${BIYellow}  ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIYellow}  │  ${BICyan}[${BIWhite} 1 ${BICyan}] SSH OPVN MANAGER"       "    ${BICyan}[${BIWhite} 5 ${BICyan}] TROJAN GO MANAGER${NC}" "${BIYellow}│"
echo -e "${BIYellow}  │  ${BICyan}[${BIWhite} 2 ${BICyan}] VMESS MANAGER   "       "    ${BICyan}[${BIWhite} 6 ${BICyan}] MENU BACKUP   ${NC}" "${BIYellow}   │"
echo -e "${BIYellow}  │  ${BICyan}[${BIWhite} 3 ${BICyan}] VLESS MANAGER   "       "    ${BICyan}[${BIWhite} 7 ${BICyan}] BOT TELEGRAM  ${NC}" "${BIYellow}   │"
echo -e "${BIYellow}  │  ${BICyan}[${BIWhite} 4 ${BICyan}] TROJAN MANAGER  "       "    ${BICyan}[${BIWhite} 8 ${BICyan}] OTHER SETING  ${NC}" "${BIYellow}   │"
echo -e "${BIYellow}  └─────────────────────────────────────────────────────┘${NC}"
echo -e "${BIYellow}  ┌─────────────────────────────────────────────────────┐${NC}"
echo -e "${BIYellow}  │ $NC${BICyan}HARI ini${NC}: ${red}$ttoday$NC ${BICyan}KEMARIN${NC}: ${red}$tyest$NC ${BICyan}BULAN${NC}: ${red}$tmon$NC $NC"
echo -e "${BIYellow}  └─────────────────────────────────────────────────────┘${NC}"
echo -e "                   Version script  3.0.1           \E[0m" | lolcat
echo -e "                ${BOLD}${BIRed}━━━${BIWhite}━━━${GREEN}━━━${BIYellow}━━━${BIWhite}━━━${BICyan}━━━${BIPurple}━━━${BIWhite}━━━${BIRed}━━━${NC}"
echo -e 
read -p " Select From Options [ 1 - 8 ] : " opt
echo -e ""
case $opt in
1) clear ; menu-ssh ;;
2) clear ; menu-vmess ;;
3) clear ; menu-vless ;;
4) clear ; menu-tr ;;
5) clear ; menu-trgo ;;
6) clear ; menu-backup ;;
7) clear ; bot ;;
8) clear ; menu-set ;;
0) clear ; menu ;;
x) exit ;;
*) echo -e "" ; echo "Press any key to back exit" ; sleep 1 ; exit ;;
esac
