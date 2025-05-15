#!/usr/bin/env bash
# -------------------------------------
# FUNÇÕES EM BASH
# -------------------------------------

# Função sem argumentos
mensagem() {
    echo "Olá! Essa é uma função."
}

mensagem  # Chamada da função

# -------------------------------------

# Função com argumento posicional
saudacao() {
    echo "Olá, $1! Bem-vindo ao Bash."
}

saudacao "Ana"
saudacao "Carlos"

# -------------------------------------

# Função com múltiplos argumentos
hello3() {
    echo "Hello $1 $2"
}

hello3 "Kmach" "Lucas"

# -------------------------------------

# Função com retorno (usando echo)
soma() {
    resultado=$(( $1 + $2 ))
    echo $resultado  # O valor "retornado" será capturado via $(...)
}

total=$(soma 5 3)
echo "Resultado: $total"

# -------------------------------------

# Função com retorno de status via return
hello4() {
    return 0  # Retorna status 0 (sucesso)
}

hello4  # Chamada da função

# Testa o valor de retorno da função (0 = true)
if hello4; then
    echo "A função retornou 0 (sucesso)"
else
    echo "A função retornou diferente de 0 (falha)"
fi

# -------------------------------------

# Função com retorno de status variável
hello5() {
    return $1  # Retorna o valor passado como código de status
}

hello5 0  # Executa a função e retorna 0

# -------------------------------------

# Função que verifica se argumento foi passado
info_usuario() {
    if [ -z "$1" ]; then
        echo "Erro: nome de usuário não informado."
        return 1
    fi

    echo "Usuário: $1"
    echo "ID do usuário: $(id -u "$1")"
}

info_usuario "ana"
info_usuario   # Testa sem argumento (deve disparar erro)

# -------------------------------------
