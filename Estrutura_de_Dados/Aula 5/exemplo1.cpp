/******************************************************************************

Pilha estatica em c++

*******************************************************************************/
#include <iostream>
#include <cstdlib>
using namespace std;
 
#define max 3 // a última posição será 2
 
int cont; // contar os elementos da pilha
int topo;
 
typedef struct lifo Pilha; 
struct lifo {
    int dado [ max ];
};
 
Pilha p1;
 
 
 
int lerDado() { int d; 
    system("clear");
    cout << "Digite um valor inteiro:";
    cin >> d; 
    return d; 
}
 
 
bool vazia () {
    
    if ( topo == -1 )
        return true;
    else
        return false;
}
 
bool cheia () {
   if ( topo >= max - 1 )  
         return true;
      else
         return false;
}
 
 
void construtor () {
    topo = -1;
    cont =  0;
}
 
 
void push ( int valor ){
   
   if ( cheia() == true ) {
       cout << "Pilha cheia!" << endl; 
       system("sleep 2"); 
       return; }
       
   topo ++;
   // p1.dado [ topo ] = lerDado(); // ler e armazenar o valor na pilha
   p1.dado [ topo ] = valor;
   cont ++; // incrementa o tamanho da pilha 
}
 
 
void pop () {
    
   if ( vazia() == true ) {
       cout << "Pilha vazia!" << endl; 
       system("sleep 2"); 
       return; }
       
    // desempilha o elemento do topo
    p1.dado [ topo ] = '\0';
    topo --;
    cont --;
}
 
 
void plotar () {
    
    system("clear");
    for ( int i=topo; i>=0; i--) {
        cout << p1.dado [ i ] << endl;
    }
    system("sleep 4");
}
 
void destrutor() {
    system("clear");
    for ( int i=topo; i>=0; i--) {
        p1.dado [ i ] = '\n';
        topo --;
        cont --;
    }
    cout << "Pilha Destruida..!" << endl;
    system("sleep 4");
}
int main () {
construtor();
push();
plotar();
push();
plotar();
push();
plotar();
push();
 
  pop();
  pop();
  plotar();
  destrutor();
}
