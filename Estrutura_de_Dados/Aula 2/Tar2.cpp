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
    const int tamanhoVetor=15;
    int VetorA[tamanhoVetor];
    int VetorB[tamanhoVetor];
    cout << "Digite 15 elementos do vetor A:" <<endl;
    for (int i=0;i<tamanhoVetor;i++){
        cout<<"Elemento A "<<i+1<<": ";
        cin>> VetorA[i];
        }
    for (int i=0;i<tamanhoVetor;i++){
        VetorB[i]=VetorA[i]*VetorA[i]; 
    }
    cout<<"           VetorA | VetorB "<<endl;
    for(int i=0;i<tamanhoVetor;i++){
        cout<<"Elemento"<<i+1<<": "<<VetorA[i]<<"      | "<<VetorB[i]<<endl;
    }
}
/* e)Ler duas matrizes A e B do tipo vetor com 15 elementos cada. Construir uma matriz C, sendo esta a
junção das duas outras matrizes. Desta forma, C deverá ter o dobro de elementos, ou seja, 30.
Apresentar a matriz C. */

void ler15AeBeMont30C(){
    const int tamanhoVetorAB=15;
    const int tamanhoVetorC=30;
    int VetorA[tamanhoVetorAB];
    int VetorB[tamanhoVetorAB];
    int VetorC[tamanhoVetorC];
    cout<<"Digite 15 Elementos do Vetor A e B"<<endl;
    for (int i=0;i<tamanhoVetorAB;i++){
        cout<<"Elemento A "<<i+1<<": ";
        cin>>VetorA[i];
        VetorC[i]=VetorA[i];}
    for (int i=0;i<tamanhoVetorAB;i++){
        cout<<"Elemento B "<<i+1<<": ";
        cin>>VetorB[i];
        VetorC[i+tamanhoVetorAB]=VetorB[i];}
    for (int i=0;i<tamanhoVetorC;i++){
        cout<<"Elemento C"<<i+1<<": "<<VetorC[i]<<endl;}
    }

/* f) Ler duas matrizes do tipo vetor, sendo A com 20 elementos e B com 30 elementos. Construir uma
matriz C, sendo esta a junção das duas outras matrizes. Desta forma, C deverá ter a capacidade de
armazenar 50 elementos. Apresentar a matriz C.*/
void ler20Ae30BeMont50C(){
    const int tamanhoVetorA=20;
    const int tamanhoVetorB=30;
    const int tamanhoVetorC=tamanhoVetorA+tamanhoVetorB;
    int VetorA[tamanhoVetorA];
    int VetorB[tamanhoVetorB];
    int VetorC[tamanhoVetorC];
    cout<<"Digite "<<tamanhoVetorA<< " Elementos do Vetor A e "<<tamanhoVetorB<<" Vetor B"<<endl;
    for (int i=0;i<tamanhoVetorA;i++){
        cout<<"Elemento A "<<i+1<<": ";
        cin>>VetorA[i];
        VetorC[i]=VetorA[i];}
    for (int i=0;i<tamanhoVetorB;i++){
        cout<<"Elemento B "<<i+1<<": ";
        cin>>VetorB[i];
        VetorC[i+tamanhoVetorA]=VetorB[i];}
    for (int i=0;i<tamanhoVetorC;i++){
        cout<<"Elemento C"<<i+1<<": "<<VetorC[i]<<endl;}
    }

/* g) Ler 20 elementos de uma matriz A tipo vetor e construir uma matriz B de mesma dimensão com os
mesmo elementos da matriz A, sendo que deverão estar invertidos. Ou seja, o primeiro elemento de
A passa a ser o último de B, o segundo elemento de A passa a ser o penúltimo elemento de B e
assim por diante. Apresentar as matrizes A e B lado a lado. */

void ler20AeInvert20emB()
{
    const int tamanhoVetorAB=20;
    int VetorA[tamanhoVetorAB];
    int VetorB[tamanhoVetorAB];
    cout<<"Digite "<<tamanhoVetorAB<< " Elementos do Vetor A e Vetor B sera o inverso"<<endl;
    
    for (int i=0;i<tamanhoVetorAB;i++){
        cout<<"Elemento A "<<i+1<<": ";
        cin>>VetorA[i];
        VetorB[tamanhoVetorAB-(i+1)]=VetorA[i];
    }
    cout<<"Elemento A  \t| Elemento B"<<endl;
    for(int i=0;i<tamanhoVetorAB;i++){
        cout<<i+1<<" = " <<VetorA[i]<<"\t\t|"<<VetorB[i]<<endl;
    }
}

int main()
{
    int opcao;
    do {
    cout << "Menu(Escolha o numero de 1 a 8)" << endl;
    cout << "1. A)Ler 10 e apresentar" << endl;
    cout << "2. B)Ler 8 em A e multiplicar por 3 em B" << endl;
    cout << "3. C)Ler 20 A e B com cons C" << endl;
    cout << "4. D)Ler 15 A e montar B" << endl;
    cout << "5. E)Ler 15 A e B e montar 30 C" << endl;
    cout << "6. F)Ler 20 A e 30 B e montar 50 C" << endl;
    cout << "7. G)Ler 20 A e inverter 20 em B" << endl;
    cout << "8. Encerrar o programa" << endl;
    cout << "Escolha uma opção: ";
    cin >> opcao;
    switch(opcao){
     case 1:
                ler10elementos();
                system("sleep 3");
                break;
            case 2:
                ler8MatrizAeB();
                system("sleep 3");
                break;
            case 3:
                ler20AeBconsC();
                system("sleep 3");
                break;
            case 4:
                ler15AeMontB();
                system("sleep 3");
                break;
            case 5:
                ler15AeBeMont30C();
                system("sleep 3");
                break;
            case 6:
                ler20Ae30BeMont50C();
                system("sleep 3");
                break;
            case 7:
                ler20AeInvert20emB();
                system("sleep 3");
                break;
            case 8:
                cout << "Encerrando o programa." << endl;
                cout<<" Obrigado! "<<endl;
                system("sleep 3");
                break;
            default:
                cout << "Opção inválida. Tente novamente." << endl;
                break;
        }
    } while (opcao != 8);

    return 0;
}
