#!usr/bin/env bash

num_array=(1 2 3 4 5)
nome_array=("Kmach" "Lucas" "Gustavo")

echo ${num_array[0]} #imprime o primeiro elemento do array

echo ${num_array[@]} #imprime todos os elementos do array
echo ${num_array[*]} #imprime todos os elementos do array


echo ${#num_array[@]} #imprime o tamanho do array
echo ${#num_array[*]} #imprime o tamanho do array

echo ${#nome_array[1]} #imprime o tamanho do segundo elemento do array
echo ${#nome_array[*]} #imprime o tamanho do array
echo ${#nome_array[@]} #imprime o tamanho do array

echo ${nome_array[@]:1:2} #imprime os elementos do array a partir do segundo elemento e imprime 2 elementos
echo ${nome_array[@]:0:2} #imprime os elementos do array a partir do primeiro elemento e imprime 2 elementos
echo ${nome_array[@]:1} #imprime os elementos do array a partir do segundo elemento
echo ${nome_array[@]:0} #imprime os elementos do array a partir do primeiro elemento
echo ${nome_array[@]:0:1} #imprime os elementos do array a partir do primeiro elemento e imprime 1 elemento
echo ${nome_array[@]:1:1} #imprime os elementos do array a partir do segundo elemento e imprime 1 elemento

