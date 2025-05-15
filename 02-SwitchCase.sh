#!/usr/bin/env bash

read -p "Caso: " var

case "$var" in
    1)
        echo "Caso 1"
        ;;
    2)
        echo "Caso 2"
        ;;
    3)
        echo "Caso 3"
        ;;
    *)
        echo "Caso padrão"
        ;;
esac

