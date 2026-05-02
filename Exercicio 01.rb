class BebidaAfterlife
  attr_accessor :nome

  def initialize(nome, custo_base)
    @nome = nome
    self.custo_base = custo_base
  end

  def custo_base
    @_custo_base
  end

  def custo_base=(valor)
    if valor > 0
      @_custo_base = valor
    else
      puts "Erro: O custo base deve ser maior que zero."
      @_custo_base = 0
    end
  end

  def preco_total
    custo_base
  end

  def to_string
    "Bebida: #{@nome} | Valor Final: $#{preco_total}"
  end
end

class DrinkIconico < BebidaAfterlife
  attr_accessor :nivel_notoriedade

  def initialize(nome, custo_base, nivel_notoriedade)
    super(nome, custo_base)
    @nivel_notoriedade = nivel_notoriedade
  end

  def preco_total
    custo_base + (@nivel_notoriedade * 8)
  end
end

drinks = [
  DrinkIconico.new("Johnny Silverhand", 50, 10),
  DrinkIconico.new("David Martinez", 40, 8),
  DrinkIconico.new("Jackie Welles", 45, 9)
]

puts "--- Cardápio AfterLife ---"
drinks.each do |drink|
  puts drink.to_string
end