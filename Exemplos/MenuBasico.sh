#!/usr/bin/env bash

menu() {
    echo "1. Exibir Data"
    echo "2. Mostrar diretorio atual"
    echo "3. Sair"
}

while true; do
    menu
    read -p "Op: " op

    case $op in
        1) date ;;
        2) pwd ;;
        3) echo "Saindo...."; break ;;
        *) echo "Op Invalida";;
    esac

done
