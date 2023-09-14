/*
K - Elaborar um programa que efetue a apresentação do valor da conversão em dólar de um valor lido em
real. O programa deve solicitar o valor da cotação do dólar e também a quantidade de reais disponível
com o usuário, para que seja apresentado o valor em moeda americana
*/
#include <iostream>
#include <iomanip> 

using namespace std;

void solicitarValores(double &Var_cotacaoDolar, double &Var_quantidadeReais);
double converterParaDolar(double Var_cotacaoDolar, double Var_quantidadeReais);
int main() {
    double Var_cotacaoDolar, Var_quantidadeReais;
    solicitarValores(Var_cotacaoDolar, Var_quantidadeReais);
    double Var_valorDolar = converterParaDolar(Var_cotacaoDolar, Var_quantidadeReais);
    cout << fixed << setprecision(2);
    cout << "O valor em dólar é: $" << Var_valorDolar << endl;
    return 0;
}
void solicitarValores(double &Var_cotacaoDolar, double &Var_quantidadeReais) {
    cout << "Digite a cotação do dólar: ";
    cin >> Var_cotacaoDolar;

    cout << "Digite a quantidade de reais: ";
    cin >> Var_quantidadeReais;
}
double converterParaDolar(double Var_cotacaoDolar, double Var_quantidadeReais) {
    return Var_quantidadeReais / Var_cotacaoDolar;
}
