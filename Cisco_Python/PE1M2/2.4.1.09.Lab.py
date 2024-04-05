"""Tempo estimado
10 minutos

Nível de dificuldade
Fácil

Objetivos
familiarizar-se com o conceito de, e trabalhar com, variáveis;
realizar cálculos e conversões básicos;
experimentar com código Python.
Cenário
Milhas e quilómetros são unidades de comprimento ou distância.

Tendo em mente que 1 milha é aproximadamente igual a 1.61 quilómetros, complete o programa no editor para que ele converta:

milhas para quilómetros;
quilómetros para milhas.
Não altere nada no código existente. Escreva o seu código nos locais indicados por ###. Teste o seu programa com os dados que fornecemos no source code.


Preste especial atenção ao que está a acontecer dentro da função print() . Analise como fornecemos múltiplos argumentos à função, e como produzimos os dados esperados.

Note-se que alguns dos argumentos dentro da função print() são strings (por exemplo, "miles is", enquanto alguns outros são variáveis (por exemplo, miles).

SUGESTÃO

Há mais uma coisa interessante a acontecer ali. Consegue ver outra função dentro da função print() ? É a função round() . O seu trabalho é o de arredondar o resultado em output para o número de casas decimais especificadas nos parêntesis, e devolver um float (dentro da round() função pode encontrar o nome da variável, uma vírgula, e o número de casas decimais que pretendemos). Vamos falar sobre funções muito em breve, por isso não se preocupe caso ainda não esteja tudo totalmente claro. Só queremos despertar a sua curiosidade.


Depois de concluir o lab, abra a Sandbox e experimente mais. Tente escrever conversores diferentes, por exemplo, um conversor de USD para EUR, um conversor de temperatura, etc. - deixe que a sua imaginação voe! Tente fazer output dos resultados combinando strings e variáveis. Tente usar e experimentar com a round() função para arredondar os seus resultados a uma, duas ou três casas decimais. Verifique o que acontece se não fornecer qualquer número de dígitos. Lembre-se de testar os seus programas.

Experimente, tire conclusões, e aprenda. Seja curioso.


Output esperado
7.38 miles is 11.88 kilometers
12.25 kilometers is 7.61 miles """


kilometers = 12.25
miles = 7.38

miles_to_kilometers = miles*1.61
kilometers_to_miles = kilometers/1.61

print(miles, "miles is", round(miles_to_kilometers, 2), "kilometers")
print(kilometers, "kilometers is", round(kilometers_to_miles, 2), "miles")
