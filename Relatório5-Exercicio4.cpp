#include <iostream>
using namespace std;

int main() {
    int sala[5][5] = {0};
    int opcao;
    bool rodando = true;

    while (rodando) {
        cout << "\n--- MENU ---\n";
        cout << "1. Reservar Assento\n";
        cout << "2. Ver Mapa\n";
        cout << "3. Sair\n";
        cout << "Escolha: ";
        cin >> opcao;

        if (opcao == 1) {
            int f, c;
            cout << "Fileira (0-4): ";
            cin >> f;
            cout << "Coluna (0-4): ";
            cin >> c;

            if (sala[f][c] == 0) {
                sala[f][c] = 1;
                cout << "Sucesso!\n";
            } else {
                cout << "Erro: Assento ocupado!\n";
            }
        } 
        else if (opcao == 2) {
            cout << "\nMapa da Sala:\n";
            for (int i = 0; i < 5; i++) {
                for (int j = 0; j < 5; j++) {
                    cout << "[" << sala[i][j] << "] ";
                }
                cout << endl;
            }
        } 
        else if (opcao == 3) {
            rodando = false;
        }
    }

    // Relatório final
    int ocupados = 0, vazios = 0;

    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            if (sala[i][j] == 1)
                ocupados++;
            else
                vazios++;
        }
    }

    cout << "\n--- RELATORIO FINAL ---\n";
    cout << "Assentos ocupados: " << ocupados << endl;
    cout << "Assentos vazios: " << vazios << endl;

    return 0;
}