#!/usr/bin/env bash
read -p "Idade: " idade
echo "$idade"

if [[ "$idade" > 18 ]]; then
    echo "Maior de Idade"
else
    echo "Menor de Idade"
fi