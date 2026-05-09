class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor() {
    this.criaturas = [];
  }

  registrarCriatura(criatura) {
    this.criaturas.push(criatura);
  }

  listarCriaturas() {
    console.log("Criaturas registradas no Diário:");
    this.criaturas.forEach(c => console.log(`- ${c.nome} (Perigo: ${c.perigo})`));
  }
}

class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens;
  }

  listarFuncionarios() {
    console.log("\nFuncionários da Cabana do Mistério:");
    this.personagens.forEach(p => console.log(`- ${p.nome}`));
  }
}

const diario3 = new Diario();
diario3.registrarCriatura(new Criatura("Gnomos", "Baixo"));
diario3.registrarCriatura(new Criatura("Multi-Urso", "Alto"));

diario3.listarCriaturas();

const stan = new Personagem("Grunkle Stan");
const mabel = new Personagem("Mabel");
const soos = new Personagem("Soos");

const cabana = new CabanaMisterio([stan, mabel, soos]);
cabana.listarFuncionarios();