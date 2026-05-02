class Musico
  attr_accessor :nome, :instrumento

  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(obra)
    raise NotImplementedError, "Implementar em classe filha"
  end
end

class Pianista < Musico
  def initialize(nome)
    super(nome, "Piano")
  end

  def tocar_partitura(obra)
    puts "#{@nome} começou a tocar as teclas para a obra '#{obra}'."
  end
end

class Violinista < Musico
  def initialize(nome)
    super(nome, "Violino")
  end

  def tocar_partitura(obra)
    puts "#{@nome} posicionou o arco e está tocando '#{obra}'."
  end
end

class Maestro
  attr_accessor :musicos

  def initialize
    @musicos = []
  end

  def adicionar_musico(musico)
    @musicos << musico
  end

  def iniciar_concerto(obra)
    puts "\n--- Iniciando o Concerto: #{obra} ---"
    @musicos.each do |musico|
      musico.tocar_partitura(obra)
    end
  end

  def ajustar_postura(estado)
    puts "\n--- Ajustando Postura ---"
    status = @musicos.map { |musico| "#{musico.nome} está em ritmo #{estado}!" }
    status.each { |frase| puts frase }
    status
  end
end

maestro = Maestro.new
kosei = Pianista.new("Kosei Arima")
kaori = Violinista.new("Kaori Miyazono")

maestro.adicionar_musico(kosei)
maestro.adicionar_musico(kaori)

obra = "Twinkle Twinkle Little Star"
maestro.iniciar_concerto(obra)
maestro.ajustar_postura("Allegro")