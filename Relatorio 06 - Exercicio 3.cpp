#include <iostream>
#include <string>

using namespace std;

class MembroInatel {
public:
    string nomeCompleto;
    
    virtual void identificar() {
        cout << "Sou um membro da comunidade Inatel: " << nomeCompleto << "." << endl;
    }
};

class Coordenador : public MembroInatel {
public:
    string departamento;
    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", sou o coordenador do departamento de " << departamento << " no Inatel." << endl;
    }
};

class Pesquisador : public MembroInatel {
public:
    string laboratorio;
    void identificar() override {
        cout << "Meu nome e " << nomeCompleto << ", e realizo pesquisas no laboratorio " << laboratorio << " do Inatel." << endl;
    }
};

int main() {
    MembroInatel* m1 = new Coordenador();
    MembroInatel* m2 = new Pesquisador();

    m1->nomeCompleto = "Dr. Pedro";
    ((Coordenador*)m1)->departamento = "Telecomunicacoes";

    m2->nomeCompleto = "Mariana Silva";
    ((Pesquisador*)m2)->laboratorio = "WNET";

    m1->identificar();
    m2->identificar();

    delete m1;
    delete m2;
    return 0;
}