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

#include <iostream>
#include <string>
#include <vector>

using namespace std;

// Definindo a estrutura Pessoa
struct Pessoa {
    string nome;
    int idade;
    char sexo;
    double salario;
    double salarioNovo;
};

// Protótipos das funções
void NovaLinhaStruct(Pessoa &pessoa);
void listarLinhasStruct(const vector<Pessoa> &pessoas);
void ler_idade(int &idade);
void ler_sexo(char &sexo);
void ler_nome(string &nome);
void ler_salario(double &salario);
void getAumento(double &salario);

int main() {
    int opcao;
    vector<Pessoa> pessoas;

    do {
        cout << "\nMenu" << endl;
        cout << "1 - Ler Linha" << endl;
        cout << "2 - Mostrar" << endl;
        cout << "3 - Sair" << endl;
        cout << "Escolha uma opção: ";
        cin >> opcao;

        switch (opcao) {
            case 1: {
                Pessoa novaPessoa;
                NovaLinhaStruct(novaPessoa);
                pessoas.push_back(novaPessoa);
                break;
            }
            case 2:
                listarLinhasStruct(pessoas);
                break;
            case 3:
                cout << "Saindo do programa." << endl;
                break;
            default:
                cout << "Opção inválida. Tente novamente." << endl;
        }
    } while (opcao != 3);

    return 0;
}

void NovaLinhaStruct(Pessoa &pessoa) {
    ler_nome(pessoa.nome);
    ler_idade(pessoa.idade);
    ler_sexo(pessoa.sexo);
    ler_salario(pessoa.salario);
    getAumento(pessoa.salario);
}

void listarLinhasStruct(const vector<Pessoa> &pessoas) {
    cout << "\nListagem de Pessoas:" << endl;
    for (const Pessoa &pessoa : pessoas) {
        cout << "Nome: " << pessoa.nome << endl;
        cout << "Idade: " << pessoa.idade << endl;
        cout << "Sexo: " << pessoa.sexo << endl;
        cout << "Salário Antigo: " << pessoa.salario << endl;
        cout << "Novo Salário: " << pessoa.salarioNovo << endl;
    }
}

void ler_idade(int &idade) {
    cout << "Digite a idade: ";
    cin >> idade;
}

void ler_sexo(char &sexo) {
    cout << "Digite o sexo (M/F): ";
    cin >> sexo;
}

void ler_nome(string &nome) {
    cin.ignore();
    cout << "Digite o nome: ";
    getline(cin, nome);
}

void ler_salario(double &salario) {
    cout << "Digite o salário: ";
    cin >> salario;
}

void getAumento(double &salario) {
    salario *= 1.10; // Aumento de 10%
}
