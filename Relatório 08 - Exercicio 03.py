class ArmaCorpoACorpo:
    def __init__(self, nome: str, dano: int):
        self.nome = nome
        self.dano = dano
        
    def __str__(self):
        return f"{self.nome} (Dano: {self.dano})"

class PhantomThieves:
    def __init__(self, nome: str, arma: str):
        self.nome = nome
        self.arma = arma
        
    def __str__(self):
        return f"{self.nome} - Arma: {self.arma}"

class Joker:
    def __init__(self, equipe: list):
        # Composição: a arma nasce e morre com o Joker
        self.arma = ArmaCorpoACorpo("Faca de Combate", 45)
        # Agregação: recebe a lista de membros já existentes
        self.equipe = equipe

    def mostrar_equipe(self):
        print(f"=== Equipe de Joker (Arma: {self.arma.nome}) ===")
        for membro in self.equipe:
            print(f"- {membro}")

# Main
if __name__ == "__main__":
    # Agregação: Os membros são criados de forma independente
    skull = PhantomThieves("Ryuji", "Cano de chumbo")
    panther = PhantomThieves("Ann", "Chicote")
    fox = PhantomThieves("Yusuke", "Katana")
    
    lista_membros = [skull, panther, fox]
    
    # O Joker agrega os membros criados
    joker = Joker(lista_membros)
    joker.mostrar_equipe()