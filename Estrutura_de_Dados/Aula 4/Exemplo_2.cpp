#include "iostream"
#include"cstdlib"
#include"string.h"
using namespace std;
int const n=5; int linha =-1;

struct disciplinas
{
    string nome [n];
    double nota1 [n];
    double nota2 [n];
    double media [n]; 
};
struct disciplinas tbmedias;
string ler_nome ()
{
    string nome;
    cout<<"\nnome:"; 
    getline(cin,nome);
    return nome; 
}
 
double ler_nota1()
{ 
    double m;
    cout<<"\nNota1:"; cin>>m;
    return m;
}
 
double ler_nota2()
{
    double m;
    cout<< "\nNota2:"; 
    cin>> m;
    return m;
    
}

void guardarDados () 
{
    linha++; 
    cin.ignore();
    string nom_temp = ler_nome();
    tbmedias.nome[linha]= nom_temp;
    tbmedias.nota1[linha]= ler_nota1();
    tbmedias.nota2[linha]= ler_nota2();
}
    
void processar ( ) 
{
    system("clear");
    for (int i=0; i<=linha;i++) 
    { 
        tbmedias.media[i]=(tbmedias.nota1[i] + tbmedias.nota2[i])/2; 
    }
    cout << "processando...." << endl;
    system("sleep 2"); 
}

void exibir () 
{ 
    system("clear");
    for ( int i=0; i<= linha; i++) 
    { 
        cout << tbmedias.nome[i];
        cout<< " - " << tbmedias.nota1[i];
        cout<< " - " << tbmedias.nota2[i];
        cout<< " - " << tbmedias.media[i] << endl;
        
    }
    system("sleep 3");
}
    
int main () 
{ 
    int tecla = 0;
    while (tecla != 4 )
    {   system("clear");
        cout<<"\n1 ler\n2 Processar\n3 Exibir\n4 Sair\nItem:";
        cin >> tecla;
    switch (tecla) 
        {
            case 1: guardarDados ();break;
            case 2: processar (); break;
            case 3: exibir (); break;
            case 4: exit(0);break;
        } 
    } 
return 0; 
}
