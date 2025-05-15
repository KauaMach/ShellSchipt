#/usr/bin/env bash

#OPERADORES ARITMÉTICOS
echo $((2 ** 3))
echo $(( expr 2 ** 3 ))

echo $((3 + 2))
echo $(expr 10 + 20)

echo $((5 - 1))
echo $((2 * 3))
echo $((10 / 2))
echo $((5 % 2))

#OPERADORES BOOLEANOS
echo $((1 && 0)) #false
echo $((1 || 0)) #true
echo $((! 0)) #true
echo $((! 1)) #false
echo $((1 && 1)) #true

#OPERADORES PARA TESTE DE ARQUIVOS*


#OPERADORES RELACIONAIS
echo $((1 == 1)) #true
echo $((1 != 1)) #false
echo $((1 < 2)) #true
echo $((1 > 2)) #false
echo $((1 <= 2)) #true
echo $((1 >= 2)) #false
echo $((1 < 2 && 2 > 1)) #true
echo $((1 < 2 || 2 > 1)) #true
echo $((1 < 2 && 2 < 1)) #false
echo $((1 < 2 || 2 < 1)) #true

#OPERADORES DE STRING

echo $(( "abc" == "abc" )) #true
echo $(( "abc" != "abc" )) #false
echo $(( "abc" < "def" )) #true
echo $(( "abc" > "def" )) #false


            