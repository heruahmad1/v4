#!/bin/bash

ipsaya=$(curl -sS ipinfo.io/ip)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
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
red='\e[1;31m'
green='\e[0;32m'
yell='\e[1;33m'
tyblue='\e[1;36m'
NC='\e[0m'
purple() { echo -e "\\033[35;1m${*}\\033[0m"; }
tyblue() { echo -e "\\033[36;1m${*}\\033[0m"; }
yellow() { echo -e "\\033[33;1m${*}\\033[0m"; }
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
# domain random
CDN="https://raw.githubusercontent.com/botak8/v4/main/ssh"
cd /root
if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi

localip=$(hostname -I | cut -d\  -f1)
hst=( `hostname` )
dart=$(cat /etc/hosts | grep -w `hostname` | awk '{print $2}')
if [[ "$hst" != "$dart" ]]; then
echo "$localip $(hostname)" >> /etc/hosts
fi

mkdir -p /etc/xray
mkdir -p /etc/v2ray
touch /etc/xray/domain
touch /etc/v2ray/domain
touch /etc/xray/scdomain
touch /etc/v2ray/scdomain

totet=`uname -r`
REQUIRED_PKG="linux-headers-$totet"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo Checking for $REQUIRED_PKG: $PKG_OK
if [ "" = "$PKG_OK" ]; then
  sleep 2
  echo -e "[ ${yell}WARNING${NC} ] Try to install ...."
  echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
  apt-get --yes install $REQUIRED_PKG
fi

ttet=`uname -r`
ReqPKG="linux-headers-$ttet"
if ! dpkg -s $ReqPKG  >/dev/null 2>&1; then
  rm /root/setup.sh >/dev/null 2>&1 
  exit
else
  clear
fi


secs_to_human() {
    echo "Installation time : $(( ${1} / 3600 )) hours $(( (${1} / 60) % 60 )) minute's $(( ${1} % 60 )) seconds"
}
start=$(date +%s)
ln -fs /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
sysctl -w net.ipv6.conf.all.disable_ipv6=1 >/dev/null 2>&1
sysctl -w net.ipv6.conf.default.disable_ipv6=1 >/dev/null 2>&1

coreselect=''
cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
END
chmod 644 /root/.profile

echo -e "[ ${green}INFO${NC} ] Preparing the install file"
apt install git curl -y >/dev/null 2>&1
apt install python -y >/dev/null 2>&1
echo -e "[ ${green}INFO${NC} ] Aight good ... installation file is ready"
sleep 2

mkdir -p /var/lib/SIJA >/dev/null 2>&1
echo "IP=" >> /var/lib/SIJA/ipvps.conf

echo ""
wget -q https://raw.githubusercontent.com/heruahmad1/v4/main/tools.sh;chmod +x tools.sh;./tools.sh
rm tools.sh
clear
 echo -e "\e[32m      ┌───────────────────────────────────────────────┐\033[0m"
  echo -e "\e[32m   ───│                                               │───\033[0m"
  echo -e "\e[32m   ───│    ┌─┐┬ ┬┌┬┐┌─┐┌─┐┌─┐┬─┐┬┌─┐┌┬┐  ┬  ┬┌┬┐┌─┐   │───\033[0m"
  echo -e "\e[32m   ───│    ├─┤│ │ │ │ │└─┐│  ├┬┘│├─┘ │   │  │ │ ├┤    │───\033[0m"
  echo -e "\e[32m   ───│    ┴ ┴└─┘ ┴ └─┘└─┘└─┘┴└─┴┴   ┴   ┴─┘┴ ┴ └─┘   │───\033[0m"
  echo -e "\e[32m      │\033[0m  \e[33m      HR-vpn (C)https://t.me/HRstores      \033[0m \e[32m │\033[0m"
  echo -e "\e[32m      └───────────────────────────────────────────────┘\033[0m"
#echo " "
#read -rp "Input ur domain : " -e pp
   # if [ -z $pp ]; then
   #     echo -e "
   #     Nothing input for domain!
    #    Then a random domain will be created"
   #else
   #     echo "$pp" > /root/scdomain
#	echo "$pp" > /etc/xray/scdomain
#	echo "$pp" > /etc/xray/domain
#	echo "$pp" > /etc/v2ray/domain
#	echo $pp > /root/domain
 #       echo "IP=$pp" > /var/lib/SIJA/ipvps.conf
  #  fi
    
 echo -e "${red}                ♦️ CUSTOM SETUP DOMAIN VPS ♦️   ${NC}"
    echo -e "\e[32m      ┌───────────────────────────────────────────────┐\033[0m"
    echo "          1. Gunakan Domain Dari Script 1"
    echo "          2. Gunakan Domain Dari Script 2"
    echo "          3. Pilih Domain Sendiri"
    echo -e "\e[32m      └───────────────────────────────────────────────┘\033[0m"
    read -rp " Tentukan domain anda : " dom 

if test $dom -eq 1; then
clear
wget -q -O /root/cf.sh "https://raw.githubusercontent.com/heruahmad1/v4/main/cf.sh"
chmod +x /root/cf.sh
./cf.sh
elif test $dom -eq 2; then
wget -q -O /root/cf1.sh "https://raw.githubusercontent.com/heruahmad1/v4/main/cf1.sh"
chmod +x /root/cf1.sh
./cf1.sh
elif test $dom -eq 3; then
read -rp "Domain/Host: " -e host
echo "IP=$host" >> /var/lib/SIJA/ipvps.conf
 "IP=$host" >> /etc/xray/domain
 
fi
echo -e "${GREEN}Done!${NC}"
sleep 2
clear
echo "IP=$host" >> /var/lib/SIJA/ipvps.conf
#echo "IP=$host" >> /var/lib/scrz-prem/ipvps.conf
echo "$host" >> /root/domain
#clear

sleep 2
wget https://raw.githubusercontent.com/heruahmad1/main/cfslow.sh && chmod +x cfslow.sh && ./cfslow.sh
rm -f /root/cfslow.sh
clear
#install ssh ovpn
echo -e " install ssh ws"
sleep 2
wget https://raw.githubusercontent.com/heruahmad1/v4/main/ssh/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
#Instal Xray
clear
echo -e "install xray"
sleep 2
wget https://raw.githubusercontent.com/heruahmad1/v4/main/xray/ins-xray.sh && chmod +x ins-xray.sh && ./ins-xray.sh
wget https://raw.githubusercontent.com/heruahmad1/v4/main/Sshws/insshws.sh && chmod +x insshws.sh && ./insshws.sh
clear
#pasang rc clone ssh ovpn 
### Pasang Rclone
echo -e "install menu backup"
sleep 2
wget https://raw.githubusercontent.com/heruahmad1/v4/main/backup/set-br.sh &&  chmod +x set-br.sh && ./set-br.sh >/dev/null 2>&1
clear  
#Instal slowdns
### Pasang SlowDNS
echo -e "install sloDNS"
sleep 2
wget -q -O slow.sh https://raw.githubusercontent.com/heruahmad1/v4/main/slowdns/slow.sh && chmod +x slow.sh && ./slow.sh
clear 
#Instal udp
echo -e "install udp"
sleep 2
wget https://raw.githubusercontent.com/heruahmad1/v4/main/udp/udp.sh && bash udp.sh
clear
#Instal udp
echo -e "install menu server"
sleep 2
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
wget https://raw.githubusercontent.com/heruahmad1/v4/main/xray/up.sh && chmod +x up.sh && ./up.sh
}
netfilter-persistent
clear
fun_bar 'res1'

cat> /root/.profile << END
# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n || true
clear
menu
END
chmod 644 /root/.profile

if [ -f "/root/log-install.txt" ]; then
rm /root/log-install.txt > /dev/null 2>&1
fi
if [ -f "/etc/afak.conf" ]; then
rm /etc/afak.conf > /dev/null 2>&1
fi
if [ ! -f "/etc/log-create-user.log" ]; then
echo "Log All Account " > /etc/log-create-user.log
fi
history -c
echo $serverV > /opt/.ver
aureb=$(cat /home/re_otm)
b=11
if [ $aureb -gt $b ]
then
gg="PM"
else
gg="AM"
fi
curl -sS ifconfig.me > /etc/myipvps
echo -e ""
echo -e "install selesai"
echo ""
echo "===============-[ Script By HR-vpn ]-==============="
echo -e ""
echo ""
echo "" | tee -a log-install.txt
rm /root/setup.sh >/dev/null 2>&1
rm /root/ins-xray.sh >/dev/null 2>&1
rm /root/insshws.sh >/dev/null 2>&1
secs_to_human "$(($(date +%s) - ${start}))" | tee -a log-install.txt
echo -e "
"
read -n 1 -s -r -p "Press enter to reboot"
reboot
