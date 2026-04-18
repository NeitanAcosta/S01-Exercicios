using System;
using System.Collections.Generic;

[cite_start]// Classe base abstrata [cite: 96]
abstract class AbominacaoCosmica {
    public string Nome { get; set; }
    public abstract void Manifestar(); // Método sem corpo [cite: 97]
}

class Shoggoth : AbominacaoCosmica {
    public override void Manifestar() {
        Console.WriteLine($"{Nome}: A massa de protoplasma se arrasta borbulhando..."); // [cite: 99]
    }
}

class CacadorAlado : AbominacaoCosmica {
    public override void Manifestar() {
        Console.WriteLine($"{Nome}: A criatura bate suas asas membranosas no vácuo..."); // [cite: 103]
    }
}

class Program {
    static void Main() {
        [cite_start]// Lista de Abominação [cite: 105]
        List<AbominacaoCosmica> horrores = new List<AbominacaoCosmica>();

        horrores.Add(new Shoggoth { Nome = "Shoggoth Primordial" });
        horrores.Add(new CacadorAlado { Nome = "Morte Alada" });

        [cite_start]// [cite: 106]
        foreach (var h in horrores) {
            h.Manifestar();
        }
    }
}