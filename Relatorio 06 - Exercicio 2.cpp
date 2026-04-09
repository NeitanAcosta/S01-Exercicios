#include <iostream>
#include <string>

using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setDados(string n, int i) {
        nome = n;
        idade = i;
    }
    string getNome() { return nome; }
    int getIdade() { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int n) { nivel = n; }
    int getNivel() { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank;

public:
    void setRank(int r) { rank = r; }
    int getRank() { return rank; }
};

int main() {
    Protagonista p1;
    p1.setDados("Joker", 17);
    p1.setNivel(99);

    Personagem c1;
    c1.setDados("Morgana", 15);
    c1.setRank(10);

    cout << "Protagonista: " << p1.getNome() << " | Nivel: " << p1.getNivel() << endl;
    cout << "Personagem: " << c1.getNome() << " | Social Link Rank: " << c1.getRank() << endl;

    return 0;
}