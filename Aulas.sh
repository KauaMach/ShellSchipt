#!/usr/bin/env bash

#time -> tempo de execução do comando
#seq 1 10 -> gera uma sequência de números de 1 a 10
#for i in {1..10}; do echo "$i"; done -> loop que imprime os números de 1 a 10
# time for i in {1..1000}; do echo "$i"; done -> tempo de execução do loop que imprime os números de 1 a 1000 
#echo $SHELL -> imprime o shell atual
#echo $0 -> imprime o nome do script atual
#Which -> verifica se o comando está instalado
#type -p -> verifica se o comando está instalado

# -----------------------------------
# echo "Digite seu nome: "
# read nome
# echo "Olá, $nome!"


#------------------------------------

# # o que é o whiptail?
# # o whiptail é um programa que permite criar caixas de diálogo em scripts de shell
# # ele é usado para criar interfaces gráficas simples em scripts de shell
# # --msgbox é uma opção do whiptail que cria uma caixa de mensagem
# whiptail --msgbox "oi" 0 0 

#------------------------------------



#----------------------------------
#!/usr/bin/env bash

#variáveis
#e mais leve rodar(Expandir) uma variavel 
#do que rodar um comando

#Constantes -> é Uma variável que não pode ser alterada -> somente leitura
declare -r VARIAVEL="valor" #variável constante | Variaveis somente leitura 
readonly VARIAVEL #torna a variável somente leitura
#Não podem ser alteradas ou removidas no ambiente atual
#somente podem ser removidas no ambiente global ou outro ambiente
unset VARIAVEL #remove a variável


#comandos 
export <variavel> -> exporta a variável para o ambiente Global
unset <variavel> -> remove a variável do ambiente global


