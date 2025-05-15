#!/usr/bin/env bash
#-------------------- FOR com intervalo de números --------------------

for i in {1..10}   # Usa expansão de sequência: do 1 ao 10
do
    echo "Test1: $i"
done

for i in {1..10}; do echo "Test2: $i"; done
# Forma compacta do mesmo loop acima (tudo em uma linha)

#-------------------- FOR com lista manual --------------------

for i in 1 2 3   # Itera sobre os valores 1, 2 e 3
do
    echo "Test3: $i"
done

for i in 1 2 3; do echo "Test: $"; done

#-------------------- FOR com comando `seq` --------------------

for i in $(seq 1 10)
do
    echo "Test4: $i"
done
# Usa o comando `seq` para gerar a sequência de 1 a 10 dinamicamente

#-------------------- FOR com passo (incremento personalizado) --------------------

for j in $(seq 1 2 20)
do
    echo "Test5 $j"
done
# Gera números de 1 a 20, pulando de 2 em 2 (apenas os ímpares)

for j in {1..20..2}
do
    echo "Test6 $j"
done
# Mesmo resultado que acima, mas com expansão direta de sequência (Bash 4+)

#-------------------- FOR com sintaxe estilo C --------------------

for ((j=1; j<20; j+=2))
do
    echo "Test7 $j"
done
# Sintaxe estilo C: inicialização; condição; incremento
# Também gera números ímpares de 1 até 19
