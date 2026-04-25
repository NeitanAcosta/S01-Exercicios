from abc import ABC, abstractmethod

# Interface base
class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass

class Implante:
    def __init__(self, custo: float, funcao: str):
        self.custo = custo
        self.funcao = funcao

class NetRunner(Cibernetico):
    def __init__(self, nome: str, custo_implante: float, funcao_implante: str):
        self.nome = nome
        # Composição: O implante é instanciado dentro do NetRunner
        self.implante = Implante(custo_implante, funcao_implante)

    # Implementando o método abstrato
    def realizar_hack(self):
        print(f"NetRunner {self.nome} iniciou o hack usando a função '{self.implante.funcao}' (Custo: ${self.implante.custo:.2f})!")

class Faccao:
    def __init__(self, membros: list):
        # Agregação: A facção recebe a lista de membros cibernéticos
        self.membros = membros

    def ataque_coordenado(self):
        print("\n--- INICIANDO ATAQUE DA FACÇÃO ---")
        for membro in self.membros:
            # Polimorfismo garantido pela interface Cibernetico
            membro.realizar_hack()

# Main
if __name__ == "__main__":
    # Criando os NetRunners
    runner1 = NetRunner("Lucy", 5000, "Monofio e Quebra de Gelo")
    runner2 = NetRunner("Sasha", 3500, "Sobrecarga de Servidor")
    runner3 = NetRunner("Kiwi", 6000, "Controle de Câmeras de Segurança")
    
    # Agrupando-os na facção
    afterlife_runners = Faccao([runner1, runner2, runner3])
    
    # Executando a ação em massa
    afterlife_runners.ataque_coordenado()