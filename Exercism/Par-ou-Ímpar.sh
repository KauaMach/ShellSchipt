#!/usr/bin/env bash

read -p "Digite um numero: " numero

if (( $numero % 2 == 0 )); then
    echo "PAR"
else
    echo "IMPAR"

fi