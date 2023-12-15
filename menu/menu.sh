#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 
ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
data_ip="https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini"

BURIQ () {
    curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/heruahmad1/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
UDPX="https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1S3IE25v_fyUfCLslnujFBSBMNunDHDk2"
# // Exporting Language to UTF-8
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
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

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


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

# // Clear
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
ressh="${green}🍀${NC}"
else
ressh="${red}🍁${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}🍀${NC}"
else
resst="${red}🍁${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}🍀${NC}"
else
ressshws="${red}🍁${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}🍀${NC}"
else
resngx="${red}🍁${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}🍀${NC}"
else
resdbr="${red}🍁${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}🍀${NC}"
else
resv2r="${red}🍁${NC}"
fi

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
echo -e "${BIWhite}      □ ISP VPS             = ${GREEN}${ISP} ${NC}"           
echo -e "${BIWhite}      □ CITY                = ${GREEN}${CITY} ${NC}"
echo -e "${BIWhite}      □ IP-VPS              = ${GREEN}$(curl -sS ipv4.icanhazip.com)${NC}"           
echo -e "${BIWhite}      □ Current Domain      = ${GREEN}$( cat /etc/xray/domain )${NC}"
echo -e "${BIWhite}      □ NS Domain           = ${GREEN}$(cat /root/nsdomain)${NC}"
echo -e " ${BIWhite}     □ User script Exp     = ${GREEN}$useexp ${NC} \033[1;31m$Name \e[0m${NC} "
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
