using System;

class CombatenteAliado {
    [cite_start]// Atributos privados [cite: 52]
    private string nome;
    private string linhagem;
    private string patente;

    [cite_start]// Construtor obrigatório [cite: 53]
    public CombatenteAliado(string nome, string linhagem, string patente) {
        this.nome = nome;
        this.linhagem = linhagem;
        this.patente = patente;
    }

    [cite_start]// Método para imprimir informações [cite: 54]
    public void ApresentarUnidade() {
        Console.WriteLine($"Unidade: {nome} | Raça: {linhagem} | Patente: {patente}");
    }
}

class Program {
    static void Main() {
        [cite_start]// Instanciando objetos [cite: 55]
        CombatenteAliado c1 = new CombatenteAliado("Aragorn", "Humano", "Capitão");
        CombatenteAliado c2 = new CombatenteAliado("Gimli", "Anão", "Guerreiro");
        CombatenteAliado c3 = new CombatenteAliado("Legolas", "Elfo", "Arqueiro");

        [cite_start]// Chamada do método [cite: 56]
        c1.ApresentarUnidade();
        c2.ApresentarUnidade();
        c3.ApresentarUnidade();
    }
}