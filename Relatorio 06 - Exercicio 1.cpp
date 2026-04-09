#include <iostream>
#include <string>

using namespace std;

class Robo {
public:
    string modelo;
    int versao;
    float potenciaLaser;
    int integridade;

    void disparar(Robo &alvo) {
        cout << "Robo " << modelo << " disparando contra " << alvo.modelo << "!" << endl;
        alvo.integridade -= (int)potenciaLaser;
    }

    void exibirStatus() {
        cout << "Modelo: " << modelo << " | Integridade: " << integridade << "%" << endl;
    }
};

int main() {
    Robo r1;
    r1.modelo = "RX-78";
    r1.versao = 2;
    r1.potenciaLaser = 25.5;
    r1.integridade = 100;

    Robo r2;
    r2.modelo = "Zaku II";
    r2.versao = 1;
    r2.potenciaLaser = 15.0;
    r2.integridade = 100;

    r1.disparar(r2);

    cout << "\n--- Status Final ---" << endl;
    r1.exibirStatus();
    r2.exibirStatus();

    return 0;
}