#!/usr/bin/venv bash

contador="0"

while sleep 1; do
    printf "\rTempo: %03d segundos" "$contador"
    
    if [[ "$contador" -eq "120" ]]; then
        echo -e "\nAcabou o tempo"
        break
    else
        ((contador++))
    fi
done

