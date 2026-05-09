class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    console.log(`${this.nome} começou a lutar com habilidades genéricas!`);
  }
}

class Gon extends Hunter {
  constructor() {
    super("Gon");
  }

  lutar() {
    console.log(`${this.nome} usou Jajanken!`);
  }
}

class Killua extends Hunter {
  constructor() {
    super("Killua");
  }

  lutar() {
    console.log(`${this.nome} usou Godspeed!`);
  }
}

class Kurapika extends Hunter {
  constructor() {
    super("Kurapika");
  }

  lutar() {
    console.log(`${this.nome} usou as Correntes!`);
  }
}

class TrupeFantasma {
  constructor(nomeDaTrupe, membros) {
    this.nomeDaTrupe = nomeDaTrupe;
    this.membros = membros;
  }

  revelarMembros() {
    console.log(`\nMembros identificados da ${this.nomeDaTrupe}:`);
    this.membros.forEach(membro => console.log(`- ${membro}`));
  }
}

const gon = new Gon();
const killua = new Killua();
const kurapika = new Kurapika();

gon.lutar();
killua.lutar();
kurapika.lutar();

const membrosTrupe = ["Chrollo Lucilfer", "Hisoka Morow", "Feitan Portor"];
const trupe = new TrupeFantasma("Trupe Fantasma", membrosTrupe);

trupe.revelarMembros();