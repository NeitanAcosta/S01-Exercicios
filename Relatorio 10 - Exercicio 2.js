class Habilidade {
  usar() {
    throw new Error("Método 'usar' deve ser implementado nas classes filhas.");
  }
}

class Smoke extends Habilidade {
  usar() {
    console.log("Bloqueando a visão com fumaça.");
  }
}

class Flash extends Habilidade {
  usar() {
    console.log("Cegando os inimigos.");
  }
}

class Dash extends Habilidade {
  usar() {
    console.log("Avançando rapidamente.");
  }
}

class Armadilha extends Habilidade {
  usar() {
    console.log("Posicionando armadilha oculta.");
  }
}

class Agente {
  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this.habilidade = habilidade;
  }

  entrarEmCombate() {
    console.log(`Agente: ${this.nome} | Função: ${this.funcao}`);
    this.habilidade.usar();
  }
}

class Time {
  constructor(agentes) {
    this.agentes = agentes;
  }

  iniciarPartida() {
    this.agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.agentes.filter(agente => agente.habilidade instanceof Smoke);
  }
}

const omen = new Agente("Omen", "Controlador", new Smoke());
const skye = new Agente("Skye", "Iniciador", new Flash());
const jett = new Agente("Jett", "Duelista", new Dash());
const cypher = new Agente("Cypher", "Sentinela", new Armadilha());

const meuTime = new Time([omen, skye, jett, cypher]);

meuTime.iniciarPartida();

const controladores = meuTime.listarControladores();
console.log("\nControladores encontrados:");
controladores.forEach(c => console.log(c.nome));