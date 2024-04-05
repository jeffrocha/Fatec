#include <iostream>
#include "cstdlib"
using namespace std;
typedef struct mcad cad;
struct mcad {
    int dado;
    cad * liga;
};
cad * primeirono;
cad * ultimono;
void construtor() {
    primeirono = ultimono = NULL;
}
void inserir ( int dado ) {
    cad * newcad = (cad *) malloc ( sizeof ( cad ) ) ;
    
    if ( newcad == NULL) {
        cout << "Deu ruim..!" << endl;
        system("sleep 3");
        return;
    }
    newcad->dado = dado;
    newcad->liga = NULL;
    if ( primeirono == NULL)
    {
          primeirono = ultimono = newcad;
    }
    else
    {
        ultimono->liga = newcad;
    }
    ultimono = newcad;
}
void plotar () {
    cad * temp = primeirono;
    system("clear");
    while (temp != NULL) {
        cout << temp->dado << endl;
        temp = temp->liga;
    }
    
    system("sleep 3");
}
void destrutor() {
    cad * temp = primeirono; 
    cad * aux; 
    while ( temp != NULL) {
        aux = temp;
        temp = temp->liga;
        free(aux);
    }
}
int main() {
    construtor();
    inserir(10); plotar();
    inserir(20); plotar();
    inserir(30); plotar();
    destrutor();
    return 0;
}
