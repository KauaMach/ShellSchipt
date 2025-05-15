#!/usr/bin/env bash
read -p "Digite um nome: " myname
echo "${myname:=$(whoami)}"

#O código acima irá pedir para o usuário digitar um nome, 
#caso digite irá utilizar echo para exibir o nome digitado na saída padrão, 
#caso contrário irá substituir pela saída do comando whoami, ao invés de substituir pela saída de um comando, 
#você pode substituir por outro valor exemplo: ${myname:=BourneShell}.