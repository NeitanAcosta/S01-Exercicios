using System;
using System.Collections.Generic;

class Pokemon {
    public string Especie { get; set; } // Atributo público [cite: 62]

    [cite_start]// Método virtual para ser sobrescrito [cite: 63]
    public virtual void ExecutarMovimento() {
        Console.WriteLine($"{Especie} está atacando!");
    }
}

class TipoFogo : Pokemon {
    public override void ExecutarMovimento() {
        Console.WriteLine($"{Especie} lança uma rajada de chamas!"); // [cite: 65]
    }
}

class TipoAgua : Pokemon {
    public override void ExecutarMovimento() {
        Console.WriteLine($"{Especie} dispara uma bolha de água!"); // [cite: 65]
    }
}

class Program {
    static void Main() {
        [cite_start]// Lista baseada na classe mãe (Polimorfismo) [cite: 66]
        List<Pokemon> pokedex = new List<Pokemon>();

        pokedex.Add(new TipoFogo { Especie = "Scorbunny" });
        pokedex.Add(new TipoAgua { Especie = "Greninja" });

        [cite_start]// Laço foreach para demonstrar polimorfismo [cite: 67]
        foreach (var p in pokedex) {
            p.ExecutarMovimento();
        }
    }
}