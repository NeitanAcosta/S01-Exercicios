from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass

class Tanque(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Tanque")

    def usar_ultimate(self):
        print(f"[{self.funcao}] {self.nome} ativou o escudo protetor em área!")

class Dano(Heroi):
    def __init__(self, nome: str):
        super().__init__(nome, "Dano")

    def usar_ultimate(self):
        print(f"[{self.funcao}] {self.nome} desembainhou a lâmina do dragão!")

# Main
if __name__ == "__main__":
    # Criando uma lista de instâncias
    equipe = [
        Tanque("Reinhardt"),
        Dano("Genji"),
        Dano("Tracer")
    ]
    
    # Percorrendo a lista e chamando o método polimórfico
    for heroi in equipe:
        heroi.usar_ultimate()