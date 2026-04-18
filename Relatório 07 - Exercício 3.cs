using System;
using System.Collections.Generic;

class ReliquiaMagica {
    public string NomeItem { get; set; } // [cite: 74]
}

class BauDeReliquias {
    private List<ReliquiaMagica> reliquias = new List<ReliquiaMagica>(); // [cite: 75]

    public void GuardarItem(ReliquiaMagica item) {
        reliquias.Add(item); // [cite: 79]
    }
}

class ItemDeAcampamento {
    public string Nome { get; set; }
    public ItemDeAcampamento(string nome) { Nome = nome; }
}

class Maga {
    public string Nome { get; set; }
    private BauDeReliquias bau; // Composição
    private List<ItemDeAcampamento> itensAcampamento; // Agregação

    public Maga(string nome, List<ItemDeAcampamento> itens) {
        this.Nome = nome;
        this.bau = new BauDeReliquias(); // Composição: instanciado no construtor [cite: 83]
        this.itensAcampamento = itens;    // Agregação: recebido como parâmetro [cite: 84]
    }

    public void AdicionarReliquia(string nome) {
        bau.GuardarItem(new ReliquiaMagica { NomeItem = nome });
    }

    public void ListarItensAcampamento() {
        Console.WriteLine($"Itens de acampamento da {Nome}:");
        foreach (var item in itensAcampamento) {
            Console.WriteLine($"- {item.Nome}");
        }
    }
}

class Program {
    static void Main() {
        [cite_start]// [cite: 86]
        var meusItens = new List<ItemDeAcampamento> {
            new ItemDeAcampamento("Saco de Dormir"),
            new ItemDeAcampamento("Pote de Cozinha")
        };

        [cite_start]// [cite: 87]
        Maga frieren = new Maga("Frieren", meusItens);

        [cite_start]// [cite: 88]
        frieren.AdicionarReliquia("Anel de Prata");
        frieren.AdicionarReliquia("Grimório Antigo");

        [cite_start]// [cite: 89]
        frieren.ListarItensAcampamento();
    }
}