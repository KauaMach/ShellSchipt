#!/usr/bin/env bash

var1="1"
var2="2"
var3="3"

#-----------------------------------
# Comparação com if simples (forma moderna)
if [[ "$var1" == "$var2" ]]; then
    echo "var1=$var1 é igual a var2=$var2."
fi

#-----------------------------------
# Comparação com if...else
if [[ "$var1" == "$var2" ]]; then
    echo "var1=$var1 é igual a var2=$var2."
else
    echo "var1=$var1 é diferente de var2=$var2."
fi

#-----------------------------------
# Forma compacta com && e ||
[[ "$var1" == "$var2" ]] && echo "1Iguais" || echo "1Diferentes"

[[ "$var1" == "$var2" ]] && echo "2Iguais"
[[ "$var1" != "$var2" ]] && echo "2Diferentes"

#-----------------------------------
# Comparações com código de status (sem exits para não encerrar o script)
if [[ "$var1" == "$var2" ]]; then
    echo "3Iguais"
    # exit 0  # Evite exits no meio se quiser continuar o script
else
    echo "3Diferentes"
    # exit 1
fi

#-----------------------------------
# Comparação com elif
if [[ -n "$var1" ]]; then  # -n verifica se a string não está vazia
    echo "$var1"
elif [[ -n "$var2" ]]; then
    echo "$var2"
elif [[ -n "$var3" ]]; then
    echo "$var3"
else
    echo "Nenhum valor encontrado."
fi
