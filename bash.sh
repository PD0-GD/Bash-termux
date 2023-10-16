clear
echo -e "\e[0;35m
██████╗░░█████╗░░██████╗██╗░░██╗
██╔══██╗██╔══██╗██╔════╝██║░░██║
██████╦╝███████║╚█████╗░███████║
██╔══██╗██╔══██║░╚═══██╗██╔══██║
██████╦╝██║░░██║██████╔╝██║░░██║
╚═════╝░╚═╝░░╚═╝╚═════╝░╚═╝░░╚═╝\e[0m"
echo "1 = python, 2 = update and upgrade apt, 3 = apache, 4 = all"
read choice

if [ "${choice}" -eq 1 ]; then
    apt install python python2 python3
elif [ "${choice}" -eq 2 ]; then
    apt update && apt upgrade
elif [ "${choice}" -eq 3 ]; then
    apt install apache2
elif [ "${choice}" -eq 4 ]; then
    apt install python python2 python3
    apt update && apt upgrade
    apt install apache2
else
    echo -e "\e[0;31mchoose a valid number!\e[0m"
fi
