#!/usr/bin/env bash
# Início do script usando o interpretador bash padrão do sistema.

#------------------------------------
# Estrutura básica do while:
# while condição
# do
#     comandos
# done

cont=1
while [ $cont -le 10 ]; do
    echo "Contador: $cont"
    cont=$((cont + 1))  # Incrementa o valor da variável cont
done

#------------------------------------
# Loop que continua até o usuário digitar "sair"

entrada=""
while [ "$entrada" != "sair" ]
do
    read -p "Digite algo (ou 'sair' para encerrar): " entrada
    echo "Você digitou: $entrada"
done

#------------------------------------
# Loop infinito que só termina quando a senha correta for digitada

while true
do
    read -p "Senha: " senha
    if [[ "$senha" == "123" ]]; then
        echo "Acesso liberado"
        break  # Encerra o loop se a senha for correta
    fi
    echo "Senha incorreta"
done

#------------------------------------
# Estrutura until: executa até que a condição seja verdadeira

until [ "$var" = "ok" ]; do
    read -p "Digite 'ok': " var
done
# A condição é o inverso do while: roda até que $var seja "ok"

#------------------------------------
# Leitura de um arquivo linha por linha usando while e read

#!/usr/bin/env bash
contador=0
cat arquivo.txt | while read linha
do
    ((contador++))
    echo "Linha $contador: $linha"
done
# Observação: esse loop roda em subshell; variáveis modificadas aqui não afetam fora.

#------------------------------------
# while que espera uma entrada vazia para continuar

while [ -z $a_input ]; do
    read -p "Enter para continuar ou digite qualquer coisa para sair: " a_input
done
# -z testa se a variável está vazia.
# Pressionar Enter mantém o loop; digitar algo encerra.

#------------------------------------
# Loop com leitura de número e condição para verificar se é maior ou menor que 25

while read -p "Digite um numero: " c_input
do
    if [ $c_input -gt 25 ]; then
        echo "Numero $c_input é maior que 25"
        break
    else
        echo "Numero $c_input é menor que 25"
        break
    fi
done
# Usa `read -p` direto na condição.
# `break` é usado para sair após uma única comparação.

#------------------------------------
contador=0
while sleep 1; do
  [[ "$contador" -eq 120 ]] && echo "Acabou o tempo" && break
  ((contador++))
done

# O loop incrementa o contador a cada segundo.