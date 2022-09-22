"""

Desafio 3: Aumento Salarial

A empresa que você trabalha resolveu conceder um aumento salarial a todos funcionários, de acordo com a tabela abaixo:

Salário           | Percentual de Reajuste
0 - 600.00        | 17%
600.01 - 900.00   | 13%
900.01 - 1500.00  | 12%
1500.01 - 2000.00 | 10%
Acima de 2000.00  | 5%

Leia o salário do funcionário e calcule e mostre o novo salário, bem como o valor de reajuste ganho e o índice reajustado, em percentual.

A entrada contém apenas um valor de ponto flutuante, que pode ser maior ou igual a zero, com duas casas decimais, conforme exemplos abaixo.

Exemplos de Entrada | Exemplos de Saída
1000 			          | Novo salario: 1120,00
                    | Reajuste ganho: 120,00
                    | Em percentual: 12 %
2000                | Novo salario: 2200,00
                    | Reajuste ganho: 200,00
                    | Em percentual: 10 %

"""

# Abaixo segue um exemplo de código que você pode ou não utilizar
salario = float(input())

if salario >= 0.00 and salario <= 600.00:
  percentual = 0.17

elif (salario <= 900.00):
  percentual = 0.13

elif (salario <= 1500.00):
  percentual = 0.12

elif (salario <= 2000.00):
  percentual = 0.10

else: 
  percentual = 0.05


# TODO:  Calcule o salário do funcionário e print o novo salário, bem como o valor de reajuste ganho e o índice reajustado (em porcentagem)
reajuste = percentual * salario
novo_salario = salario + reajuste

print(f'Novo salario: {novo_salario:.2f}')
print(f'Reajuste ganho: {reajuste:.2f}')
print(f'\nEm percentual: {int(percentual * 100)} %')