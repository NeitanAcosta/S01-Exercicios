class Pokemon {
  #vida;

  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  get vida() {
    return this.#vida;
  }

  atacar() {
    console.log(`${this.nome} realizou um ataque genérico!`);
  }

  receber_dano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) {
      this.#vida = 0;
    }
  }
}

class Pikachu extends Pokemon {
  constructor() {
    super("Pikachu", "Elétrico", 100);
  }

  atacar() {
    console.log(`${this.nome} usou Choque do Trovão!`);
  }
}

class Charizard extends Pokemon {
  constructor() {
    super("Charizard", "Fogo e Voador", 150);
  }

  atacar() {
    console.log(`${this.nome} usou Lança-Chamas!`);
  }
}

const pikachu = new Pikachu();
const charizard = new Charizard();

pikachu.atacar();
charizard.atacar();

pikachu.receber_dano(45);
console.log(`Vida restante do ${pikachu.nome}: ${pikachu.vida}`);