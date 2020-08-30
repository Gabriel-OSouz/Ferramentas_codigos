#!/bin/bash

echo -e "\033[0;31m

▓█████▄  ██▓ ██▀███   ▄▄▄▄        ▄████  ▄▄▄       ▄▄▄▄    ██▀███   ██▓▓█████  ██▓    
▒██▀ ██▌▓██▒▓██ ▒ ██▒▓█████▄     ██▒ ▀█▒▒████▄    ▓█████▄ ▓██ ▒ ██▒▓██▒▓█   ▀ ▓██▒    
░██   █▌▒██▒▓██ ░▄█ ▒▒██▒ ▄██   ▒██░▄▄▄░▒██  ▀█▄  ▒██▒ ▄██▓██ ░▄█ ▒▒██▒▒███   ▒██░    
░▓█▄   ▌░██░▒██▀▀█▄  ▒██░█▀     ░▓█  ██▓░██▄▄▄▄██ ▒██░█▀  ▒██▀▀█▄  ░██░▒▓█  ▄ ▒██░    
░▒████▓ ░██░░██▓ ▒██▒░▓█  ▀█▓   ░▒▓███▀▒ ▓█   ▓██▒░▓█  ▀█▓░██▓ ▒██▒░██░░▒████▒░██████▒
 ▒▒▓  ▒ ░▓  ░ ▒▓ ░▒▓░░▒▓███▀▒    ░▒   ▒  ▒▒   ▓▒█░░▒▓███▀▒░ ▒▓ ░▒▓░░▓  ░░ ▒░ ░░ ▒░▓  ░
 ░ ▒  ▒  ▒ ░  ░▒ ░ ▒░▒░▒   ░      ░   ░   ▒   ▒▒ ░▒░▒   ░   ░▒ ░ ▒░ ▒ ░ ░ ░  ░░ ░ ▒  ░
 ░ ░  ░  ▒ ░  ░░   ░  ░    ░    ░ ░   ░   ░   ▒    ░    ░   ░░   ░  ▒ ░   ░     ░ ░   
   ░     ░     ░      ░               ░       ░  ░ ░         ░      ░     ░  ░    ░  ░
 ░                         ░                            ░                                                       
                        
                                             Verlom - [Gabriel Oliveira] \033[0m"
echo -e "================ \033[0;33mDIRB\033[0m ================"
echo -e " => email = gabrieloliveirasouza720@gmail.com"
echo -e "============================================================"
echo -e " Olá `whoami`\n você está no diretório =>[`pwd`]<="
echo -e "============================================================"

echo "`whoami` Escreva o domínio:"
read site
echo "site digitado =>[$site]"

echo "Você está no diretório =>[`pwd`]"
echo "Qual wordlist você deseja usar?"
read w_list1

contador=0
cat $w_list1 | while read linha
do
    site_site="$site/$linha"
    
    #command
    status_code=`curl -I $site_site 2> /dev/null| head -n 1 | cut -d " " -f2`
    
    echo -ne "\\r$site_site"
    
    if [ $status_code -eq 200 ]
    then
            echo -e " ==> \033[0;32m $status_code \033[0m <=="
    fi
    
done

