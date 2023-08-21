/*
L -Elaborar um programa que efetue a leitura de três valores (A, B e C) e apresente como resultado final à
soma dos quadrados dos três valores lidos.
*/
#include <iostream>
#include <cmath>
using namespace std;

double lerValor(const string &mensagem) {
    double valor;
    cout << mensagem;
    cin >> valor;
    return valor;
}

double Calc_SomaQuadrados(double a, double b, double c) {
    return pow(a, 2) + pow(b, 2) + pow(c, 2);
}
void exibirResultado(double Soma_Quadrados) {
    cout << "A soma dos quadrados de A, B e C é: " << Soma_Quadrados << endl;
}

int main() {
    double Var_A, Var_B, Var_C;
    Var_A = lerValor("Digite o valor de A: ");
    Var_B = lerValor("Digite o valor de B: ");
    Var_C = lerValor("Digite o valor de C: ");
    double Soma_Quadrados = Calc_SomaQuadrados(Var_A, Var_B, Var_C);
    exibirResultado(Soma_Quadrados);
    return 0;
}
