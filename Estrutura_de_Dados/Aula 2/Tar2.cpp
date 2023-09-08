/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/
#include <iostream>
#include <vector>

using namespace std;

/*a) Ler 10 elementos de uma matriz tipo vetor e apresentá-los. */
void ler10elementos() {
    const int tamanhoVetor = 10;
    int vetor[tamanhoVetor];
    cout << "Digite 10 elementos do vetor:" << endl;
    for (int i = 0; i < tamanhoVetor; i++) {
        cout << "Elemento " << i + 1 << ": ";
        cin >> vetor[i];
    }
    cout << "Elementos do vetor:" << endl;
    for (int i = 0; i < tamanhoVetor; i++) {
        cout << vetor[i] << "|";
    }
    cout << endl;
}

/*b) Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B de mesma dimensão com os
elementos da matriz A multiplicados por 3. O elemento B[i] deverá ser implicado pelo elemento
A[i]*3, o elemento B[2] implicado pelo elemento A[2]*3 e assim por diante, até 8. Apresentar o vetor
B. */
void ler8MatrizAeB(){
    const int tamanhoVetor=8;
    int VetorA[tamanhoVetor];
    int VetorB[tamanhoVetor];
    cout << "Digite 8 elementos do Vetor A:" << endl;
    for (int i = 0; i < tamanhoVetor; i++){
        cout << " Elemento " << i+1 <<": ";
        cin >> VetorA[i];
    }
    for (int i = 0; i < tamanhoVetor;i++){
        VetorB[i]=VetorA[i]*3;
    }
    cout << "VetorB (Elementos A * 3)" << endl;
    for (int i = 0; i < tamanhoVetor;i++){
        cout << VetorB[i] << " ";
    }
    cout<<endl;
}

/*c) Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir uma matriz C, onde cada
elemento de C é a subtração do elemento correspondente de A com B. Apresentar a matriz C. */
void ler20AeBconsC(){
    const int tamanhoVetor=20;
    int VetorA[tamanhoVetor];
    int VetorB[tamanhoVetor];
    int VetorC[tamanhoVetor];
    cout << "Digite 10 elementos do vetor A:" << endl;
    for (int i=0;i<tamanhoVetor;i++){
        cout << "Elemento A "<<i+1<<": ";
        cin >> VetorA[i];
    }
    for (int i=0;i<tamanhoVetor;i++){
        cout << "Elemento B "<<i+1<<": ";
        cin >> VetorA[i];
    }
    for (int i=0;i<tamanhoVetor;i++){
        VetorC[i]=VetorA[i] - VetorB[i];
    }
    cout<<"Vetor C (Elemento A - B)" << endl;
    for (int i=0;i<tamanhoVetor;i++){
        cout << VetorC[i] << "|";
    }
    cout << endl;
    }

/* d) Ler 15 elementos de uma matriz tipo vetor. Construir uma matriz B de mesmo tipo, observando a
seguintes lei de formação: “Todo elemento de B deverá ser o quadrado do elemento de A
correspondente”. Apresentar as matrizes A e B.*/
void ler15AeMontB(){
    const int tamanhoVetor=5;
    int VetorA[tamanhoVetor];
    int VetorB[tamanhoVetor];
    cout << "Digite 15 elementos do vetor A:" <<endl;
    for (int i=0;i<tamanhoVetor;i++){
        cout<<"Elemento A "<<i+1<<": ";
        cin>> VetorA[i];
        }
    for (int i=0;i<tamanhoVetor;i++){
        VetorB[i]=VetorA[i]^2; 
    }
    cout<<"           VetorA | VetorB "<<endl;
    for(int i=0;i<tamanhoVetor;i++){
        cout<<"Elemento"<<i+1<<": "<<VetorA[i]<<"     | "<<VetorB[i]<<endl;
    }

    
}
    
int main()
{
    //ler10elementos();
    //ler8MatrizAeB();
    //ler20AeBconsC();
    ler15AeMontB();
    return 0;
}
