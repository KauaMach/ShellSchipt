# 🐚 Shell Script — Guia Prático

## 📑 Sumário

1. [Introdução ao Shell Script](#1️⃣-introdução-ao-shell-script)
2. [Execução e Depuração](#2️⃣-execução-e-depuração)
3. [Comandos Úteis e Redirecionamento](#3️⃣-comandos-úteis-e-redirecionamento)
4. [Expressões Regulares no Shell](#4️⃣-expressões-regulares-no-shell)
5. [Parâmetros de Linha de Comando](#5️⃣-parâmetros-de-linha-de-comando)
6. [Estrutura e Sintaxe do Shell](#6️⃣estrutura-e-sintaxe-do-shell)
7. [Entrada e Saída (STDIN/STDOUT/STDERR)](#7️⃣entrada-e-saída-stdinstdoutstderr)
8. [Status de Saída e Sinais](#8️⃣-status-de-saída-e-sinais)

---

## 1️⃣ Introdução ao Shell Script

### 🧠 O que é o Shell?

* Um **interpretador de comandos** que conecta o usuário ao kernel do sistema.
* Exemplo de Shells: `sh`, `bash`, `zsh`, `fish`.

### 🗂️ Script

* Um **arquivo de texto contendo comandos** que o shell executa sequencialmente.
* Usado para **automatizar tarefas** no sistema.

---

## 2️⃣ Execução e Depuração

### 📌 Shebang (`#!`)

```bash
#!/bin/bash        # Caminho absoluto (menos portável)
#!/usr/bin/env bash  # Caminho dinâmico (mais portátil)
```

* **Shebang** define qual interpretador será usado ao executar o script.

### 🐞 Modo de Depuração

```bash
bash -x script.sh  # Linha por linha, com expansão de variáveis

# Ou dentro do script
set -x  # Ativa debug
set +x  # Desativa debug
```

---

## 3️⃣ Comandos Úteis e Redirecionamento

### 🧾 Comandos Diversos

```bash
time comando                  # Tempo de execução
seq 1 10                      # Sequência de 1 a 10
for i in {1..10}; do ...; done # Loop numérico
echo $SHELL                   # Mostra o shell atual
echo $0                       # Nome do script atual
which comando                 # Verifica se comando está instalado
type -p comando               # Verifica o caminho do comando
whoami                        # Usuário atual
```

### 🔁 Redirecionamentos

| Comando                           | Descrição                        |
| --------------------------------- | -------------------------------- |
| `>`                               | Redireciona STDOUT               |
| `2>`                              | Redireciona STDERR               |
| `>>`                              | Acrescenta ao final do arquivo   |
| `<`                               | Usa arquivo como STDIN           |
| `command < arquivo.txt`           | Entrada via arquivo              |
| `command > saida.txt 2> erro.txt` | STDOUT e STDERR separados        |
| `command &> tudo.txt`             | STDOUT + STDERR no mesmo arquivo |

---

## 4️⃣ Expressões Regulares no Shell

### 🧪 Testes com `[[ ]]` e `=~`

```bash
[[ $1 =~ ^sh|SH$ ]] && echo "$1 - Bourne Shell"

texto="curso2025"
[[ "$texto" =~ ^curso[0-9]{4}$ ]] && echo "Regex bateu!"
```

### 📎 Com `grep`, `sed`, `awk`

```bash
echo "teste123" | grep -E '^teste[0-9]+$'

echo "telefone: 123-456" | sed -E 's/([0-9]{3})-([0-9]{3})/Código: \1 Número: \2/'

echo "joao123" | awk '/[a-z]+[0-9]+/ { print "Casou com o padrão!" }'
```

### 📥 Regex para e-mail

```bash
read -p "Digite seu email: " email
[[ "$email" =~ ^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]] && echo "Email válido." || echo "Email inválido."
```

---

## 5️⃣ Parâmetros de Linha de Comando

### ⚙️ Estrutura com `while + case + shift`

```bash
while [ $# -gt 0 ]; do
  case "$1" in
    -v | version)
      echo "Release v0.1.0"
      ;;
    *)
      echo "Parâmetro '$1' inválido"
      exit 1
      ;;
  esac
  shift
done
```

* `$#` → total de argumentos
* `$1`, `$2`... → parâmetros posicionais
* `shift` → avança os argumentos

---

## 6️⃣ Estrutura e Sintaxe do Shell

### 🔤 Aspas

```bash
'...'     # Interpretação literal
"..."     # Interpreta variáveis e comandos
```

### 🔁 Grouping vs Subshell

```bash
# Subshell - isolamento
( VAR="teste" )

# Grouping - compartilhamento de contexto
{ comando1; comando2; } > arquivo.txt
```

---

## 7️⃣ Entrada e Saída (STDIN/STDOUT/STDERR)

### 📥 Leitura com `read`

| Flag | Função                         |
| ---- | ------------------------------ |
| `-p` | Mostra prompt                  |
| `-s` | Oculta entrada (senha)         |
| `-n` | Lê N caracteres sem Enter      |
| `-t` | Timeout                        |
| `-a` | Lê em array                    |
| `-e` | Ativa edição com readline      |
| `-i` | Valor inicial padrão           |
| `-r` | Raw input, sem interpretar `\` |

#### Exemplo:

```bash
read -p "Nome: " nome
read -sp "Senha: " senha
read -n1 -p "Pressione uma tecla: " tecla
read -a lista -p "Digite itens: "
```

---

## 8️⃣ Status de Saída e Sinais

### ✅ Códigos de Retorno

| Código | Significado             |
| ------ | ----------------------- |
| 0      | Sucesso                 |
| 1–125  | Erros diversos          |
| 126    | Comando não executável  |
| 127    | Comando não encontrado  |
| 128+N  | Finalizado por sinal N  |
| 130    | Interrompido (Ctrl + C) |

```bash
comando
echo $?  # Mostra status de saída
```

#### Exemplo completo:

```bash
[ ! -e /bin/bash ] && {
    echo "Bash não encontrado"
    exit 2
}

comando
if [ $? -eq 0 ]; then
    echo "Sucesso"
else
    echo "Erro"
fi
```

---

## 🧩 Extras

### 🧮 Comparações Numéricas e Condições

```bash
(( a < b )) && echo "a < b"
[[ -z "$var" ]]     # String vazia?
[[ "$x" == "$y" ]]  # Strings iguais?
[[ "$var" =~ ^[0-9]+$ ]]  # Regex
```

---

Se quiser, posso gerar um **PDF**, transformar isso num **repositório GitHub formatado**, ou criar um **cheat sheet visual** com base nesse conteúdo. Deseja alguma dessas opções?
