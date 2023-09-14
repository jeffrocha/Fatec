/*
2. Faça o código fonte para ler o comprimento e calcular o diâmetro, calcular
o raio e finalmente a área de um círculo; (Faça um menu com as opções
necessárias. Utilize a simulação 3 como referência/Modelo para fazer este
trabalho. )
*/
#include <iostream>
#include <cmath>
#include <thread> 
using namespace std;

const double PI = 3.14;
double Calc_Diametro(double Var_comprimento) {
    return Var_comprimento / PI;
}
double Calc_Raio(double Var_diametro) {
    return Var_diametro / 2;
}
double Calc_Area(double Var_raio) {
    return PI * pow(Var_raio, 2);
}
int main() {
    int Var_escolha;
    double Var_comprimento, Var_diametro, Var_raio, Var_area;
    do {
        cout << "Escolha uma das opções abaixo" << endl;
        cout << "1. Calcular Diâmetro" << endl;
        cout << "2. Calcular Raio" << endl;
        cout << "3. Calcular Área" << endl;
        cout << "0. Sair" << endl;
        cout << "Escolha uma opção: ";
        cin >> Var_escolha;
        switch (Var_escolha) {
            case 1:
                cout << "\n\tDigite o comprimento do círculo: ";
                cin >> Var_comprimento;
                Var_diametro = Calc_Diametro(Var_comprimento);
                cout << "\n\tO diâmetro do círculo é: " << Var_diametro << endl;
                break;
            case 2:
                cout << "\n\tDigite o diâmetro do círculo: ";
                cin >> Var_diametro;
                Var_raio = Calc_Raio(Var_diametro);
                cout << "\n\tO raio do círculo é: " << Var_raio << endl;
                break;
            case 3:
                cout << "\n\tDigite o raio do círculo: ";
                cin >> Var_raio;
                Var_area = Calc_Area(Var_raio);
                cout << "\n\tA área do círculo é: " << Var_area << endl;
                break;
            case 0:
                cout << "Encerrando o programa." << endl;
                break;
            default:
                cout << "Opção inválida. Por favor, escolha uma opção válida." << endl;
        }
        cout << endl;
        if (Var_escolha != 0) {
            this_thread::sleep_for(chrono::seconds(3));
        }
    } while (Var_escolha != 0);
    return 0;
}
