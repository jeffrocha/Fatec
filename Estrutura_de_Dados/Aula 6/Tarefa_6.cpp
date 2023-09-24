/*
TAREFA / AVALIAÇÃO CONTINUADA
I - Responda as questões a seguir

1. Defina o que seria um ponteiro. Explique e dê exemplos.
    R: Ponteiro se refere a uma variavel que armazena o endereço de memoria de outra variavel. 
    Ela aponta para o endereço de memoria onde os dados da váriavel estão armazenados.
    Os ponteiros serve para alocação dinâmica de memória, passagem de parâmetros por referência e/ou manipulação de estruturas de dados complexos.

2. O que seria o endereço de uma variável. Explique como é criado e como posso exibi-lo.
    R: Um endereço de variável é um local específico na memória onde os dados dessa variável são armazenados. 
    Eles são criados automaticamente pelo sistema quando uma variável é declarada e podem ser exibidos em C++ usando o operador &. 
    Esses endereços são úteis em situações que envolvem criação de ponteiros, fornecimento de acesso direto a dados, referências temporárias ou manipulação de memória de baixo nível.

3. Como posso acessar o conteúdo de uma variável usando um ponteiro. Explique e dê exemplo.
    R:Para acessar os dados de uma variável usando um ponteiro é necessario declare um ponteiro do tipo adequado. 
    Atribuir o endereço da variável desejada ao ponteiro usando o operador &.
    Use o operador * para retirar a referencia  do ponteiro e acessar o valor da variável.

4. Como posso acessar o endereço de uma variável usando ponteiro. Explique e dê exemplo.

5. Qual seria o tipo de ponteiro para a STRUCT PESSOA?

6. Declare duas variáveis e dois ponteiros. Exiba o resultado da soma dessas variáveis somando os seus
ponteiros (com Asterisco).

II - Faça um programa com menu de três opções (1-ler linha, 2- mostrar e 3- sair), contendo um STRUCT para
cadastrar o nome, a idade, o sexo, salário e salarioNovo de pelo menos duas pessoas. Crie um ponteiro para
manipular o STRUCT. O programa deverá conter as seguintes sub rotinas abaixo: (use switch case )
a) void NovaLinhaStruct ( )
b) void listarLinhasStruct ( )
c) ler_idade ( )
d) ler_sexo ( )
e) ler_nome ( )
f) ler_salario ( )
g) getAumento ( double * salario ) // aumento de 10% sobre o salário digitado
*/

