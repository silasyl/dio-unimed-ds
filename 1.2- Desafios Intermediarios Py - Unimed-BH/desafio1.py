"""

Desafio 1: Alfabeto

Dada a letra N do alfabeto, nos diga qual a sua posição.

Entrada

Um único caracter N, uma letra maiúscula ('A'-'Z') do alfabeto (que contém 26 letras).

Saída

Um único inteiro, que representa a posição da letra no alfabeto.

Exemplos de Entrada | Exemplos de Saída
C	 			| 3
J	 			| 10
Z				| 26
A				| 1

"""

letra = input() 


# TODO: De acordo com a entrada, imprima a posição dessa letra no Alfabeto;
print(ord(letra) - 64)