# Códigos de ferramentas
## Motivação
 O intuito desse repositório é aprender mais sobre programação, programando determinadas ferramentas de Segurança da Informação e também saber como que um programa funciona por trás dos panos.
 Minha motivação é aprender mais sobre linguagens de programação, pois quero usar linguagens distintas para realizar a programação de cada ferramenta, e claro... aprender cada vez mais sobre a área que escolhi.
 
#### Aviso - os códigos feitos por mim, é para meu estudo. Não é nenhum tipo de plágio! Esses códigos são desafios que criei para mim mesmo,ou seja, não será igual e não substitui a aplicação original.
 
### Ferramentas
1. [Dirb](https://tools.kali.org/web-applications/dirb)
   - **descrição:** Dirb é uma das ferramentas de enumeração de testes de invasão, ou seja, um pentest. O dirb basicamente faz testes em uma aplicação web a fim de encontrar, determinar diretórios de um site que não estão visíveis ao usuário.
     É utilizado uma wordlist para fazer esse burte force em uma determinada aplicação web, em sistemas operacionais voltados para segurança da informção como Kali linux, Parrot OS, entre outros, essas wordlists já estão imbutidas dentro do sistema **(/usr/share/dirb/wordlists/)**.
   - **Meu código:** o código foi feito em **bash/shell script**, e o desafio que enfrentei foi utilizar seus comandos para saber se um determinado domínio está ou não funcionando e como iria filtrar essa informação para que eu repasse para o utilizador do código.
- [x] Ideia
- [x] Código 

**Código:**
'o código ainda pode ser modificado'
```
#!/bin/bash

echo -e "\033[0;31m
  ▄████  ▄▄▄       ▄▄▄▄    ██▀███   ██▓▓█████  ██▓    
 ██▒ ▀█▒▒████▄    ▓█████▄ ▓██ ▒ ██▒▓██▒▓█   ▀ ▓██▒    
▒██░▄▄▄░▒██  ▀█▄  ▒██▒ ▄██▓██ ░▄█ ▒▒██▒▒███   ▒██░    
░▓█  ██▓░██▄▄▄▄██ ▒██░█▀  ▒██▀▀█▄  ░██░▒▓█  ▄ ▒██░    
░▒▓███▀▒ ▓█   ▓██▒░▓█  ▀█▓░██▓ ▒██▒░██░░▒████▒░██████▒
 ░▒   ▒  ▒▒   ▓▒█░░▒▓███▀▒░ ▒▓ ░▒▓░░▓  ░░ ▒░ ░░ ▒░▓  ░
  ░   ░   ▒   ▒▒ ░▒░▒   ░   ░▒ ░ ▒░ ▒ ░ ░ ░  ░░ ░ ▒  ░
░ ░   ░   ░   ▒    ░    ░   ░░   ░  ▒ ░   ░     ░ ░   
      ░       ░  ░ ░         ░      ░     ░  ░    ░  ░
                        ░                             
                        
                                             Verlom - [Gabriel Oliveira] \033[0m"
echo -e "================ \033[0;33mGo Buster\033[0m ================"
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


```
