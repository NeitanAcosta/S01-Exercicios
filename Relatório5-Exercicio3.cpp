#include <iostream>
using namespace std;

int main() {
    float saldo;
    int opcao;

    cout << "Digite o saldo inicial: ";
    cin >> saldo;

    do {
        cout << "\n--- MENU ---\n";
        cout << "1. Ver Saldo\n";
        cout << "2. Depositar\n";
        cout << "3. Sacar\n";
        cout << "4. Sair\n";
        cout << "Escolha: ";
        cin >> opcao;

        if (opcao == 1) {
            cout << "Saldo atual: R$ " << saldo << endl;
        } 
        else if (opcao == 2) {
            float valor;
            cout << "Valor para deposito: ";
            cin >> valor;
            saldo += valor;
        } 
        else if (opcao == 3) {
            float valor;
            cout << "Valor para saque: ";
            cin >> valor;

            if (valor > saldo) {
                cout << "Saldo insuficiente!\n";
            } else {
                saldo -= valor;
            }
        }

    } while (opcao != 4);

    cout << "Encerrando...\n";
    return 0;
}