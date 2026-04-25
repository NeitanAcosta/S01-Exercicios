class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    # Getter para a vida
    @property
    def vida(self):
        return self._vida

    # Setter para a vida com controle
    @vida.setter
    def vida(self, valor):
        if valor < 0:
            self._vida = 0
        else:
            self._vida = valor

    def __str__(self):
        return f"Personagem com {self.vida} de vida e {self._resistencia} de resistência"

class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        # Inicializando os atributos da classe pai
        super().__init__(vida, resistencia)
        # Atributo exclusivo da classe filha
        self.armadura_pesada = armadura_pesada

    def __str__(self):
        status_armadura = "com" if self.armadura_pesada else "sem"
        return f"Cavaleiro com {self.vida} de vida, {self._resistencia} de resistência e {status_armadura} armadura pesada"

# Teste prático
if __name__ == "__main__":
    p1 = Personagem(100, 20)
    c1 = Cavaleiro(150, 50, True)
    
    print(p1)
    print(c1)
    
    # Testando o setter
    c1.vida = 80
    print("Após dano:", c1)