#!/usr/bin/env bash


# Expressão regular para verificar se o primeiro argumento é igual a "sh" ou "SH"
[[ $1 =~ ^sh|SH$ ]] && { echo "$1 - Bourne Shell"; }


#------------------------------------------------------------
# Usando [[ ]] com regex
# Comando para verificar se o texto começa com "curso" e termina com 4 dígitos
texto="curso2025"

if [[ "$texto" =~ ^curso[0-9]{4}$ ]]; then
    echo "Regex bateu!"
else
    echo "Não bateu."
fi

#------------------------------------------------------------
#Com grep (grep básico e egrep/grep -E)
echo "teste123" | grep 'teste[0-9]' # grep básico -> verifica se existe a string "teste" seguida de um dígito

echo "teste123" | grep -E '^teste[0-9]+$'
echo "teste123" | egrep '^teste[0-9]+$'

#------------------------------------------------------------
# Com sed
echo "teste123" | sed -n '/^teste[0-9]\+$/p' # sed básico -> verifica se existe a string "teste" seguida de um dígito

# sed avançado -> substitui o padrão "telefone: 123-456" por "Código: 123 Número: 456"
echo "telefone: 123-456" | sed -E 's/([0-9]{3})-([0-9]{3})/Código: \1 Número: \2/' 

#------------------------------------------------------------
# Com awk
echo "teste123" | awk '/^teste[0-9]+$/' # awk básico -> verifica se existe a string "teste" seguida de um dígito

# awk avançado -> verifica se existe a string "joao" seguida de um dígito e imprime "Casou com o padrão!"
echo "joao123" | awk '/[a-z]+[0-9]+/ { print "Casou com o padrão!" }'

#------------------------------------------------------------

read -p "Digite seu email: " email

if [[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]]; then
    echo "Email válido."
else
    echo "Email inválido."
fi

# O exemplo acima verifica se o email digitado pelo usuário é válido ou não.
# A expressão regular utilizada verifica se o email possui o formato correto, ou seja:
# - Começa com letras, números, pontos, sublinhados ou sinais de porcentagem
# - Seguido por um símbolo de "@"
# - Depois, possui letras, números, pontos ou hífens
# - E por fim, termina com um ponto seguido de pelo menos duas letras
# Se o email estiver no formato correto, a mensagem "Email válido." é exibida.