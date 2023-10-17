clear
echo -e "\e[0;35m
██████╗░░█████╗░░██████╗██╗░░██╗
██╔══██╗██╔══██╗██╔════╝██║░░██║
██████╦╝███████║╚█████╗░███████║
██╔══██╗██╔══██║░╚═══██╗██╔══██║
██████╦╝██║░░██║██████╔╝██║░░██║
╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝\e[0m"
echo "1 = python, 2 = update and upgrade apt, 3 = apache, 4 = php stuff, 5 = all, 6 = update"
read choice

if [ "${choice}" -eq 1 ]; then
    apt install python python2 python3
    clear
elif [ "${choice}" -eq 2 ]; then
    apt update && apt upgrade
    clear
elif [ "${choice}" -eq 3 ]; then
    apt install apache2
    cd /data/data/com.termux/files/home
    clear
elif [ "${choice}" -eq 4 ]; then
    apt install php php-apache phpmyadmin  mariadb
elif [ "${choice}" -eq 5 ]; then
    apt install python python2 python3
    apt update && apt upgrade
    apt install apache2
    apt install php php-apache phpmyadmin  mariadb
    ~/Bash-termux/update.sh
    clear
elif [ "${choice}" -eq 6 ]; then
    ~/Bash-termux/update.sh
else
    echo -e "\e[0;31mchoose a valid number!\e[0m"
fi
