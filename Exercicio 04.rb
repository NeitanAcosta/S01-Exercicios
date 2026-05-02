module Localizavel
  def local_atual
    puts "Localização de #{@nome}: #{@localizacao}"
  end
end

module Perigoso
  def exibir_ameaca
    puts "ALERTA: #{@nome} representa um perigo altíssimo para a investigação!"
  end
end

class Pessoa
  attr_accessor :nome, :localizacao

  def initialize(nome, localizacao)
    @nome = nome
    @localizacao = localizacao
  end
end

class Testemunha < Pessoa
  include Localizavel
end

class Suspeito < Pessoa
  include Localizavel
  include Perigoso
end

class CenaDoCrime
  def initialize
    @pessoas = []
  end

  def adicionar_pessoa(pessoa)
    @pessoas << pessoa
  end

  def listar_todos
    puts "\n--- Pessoas Presentes na Cena ---"
    @pessoas.each do |pessoa|
      puts "Nome: #{pessoa.nome}"
      pessoa.local_atual
      puts "--------------------------"
    end
  end

  def identificar_perigosos
    @pessoas.select { |pessoa| pessoa.respond_to?(:exibir_ameaca) }
  end
end

cena = CenaDoCrime.new

testemunha = Testemunha.new("Sra. Hudson", "221B Baker Street")
suspeito1 = Suspeito.new("Professor Moriarty", "Cais do Tâmisa")
suspeito2 = Suspeito.new("Coronel Moran", "Clube Bagatelle")

cena.adicionar_pessoa(testemunha)
cena.adicionar_pessoa(suspeito1)
cena.adicionar_pessoa(suspeito2)

cena.listar_todos

puts "\n--- Identificando Perigos Iminentes ---"
ameacas = cena.identificar_perigosos
ameacas.each do |perigoso|
  perigoso.exibir_ameaca
end