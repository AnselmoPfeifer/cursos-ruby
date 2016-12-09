class Livro
  attr_reader :titulo, :preco, :ano_lancamento, :possui_reimpressao
  def initialize(titulo, preco, ano_lancamento, possui_reimpressao)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @possui_reimpressao = possui_reimpressao
  end

  def to_csv
    "#{@titulo}, #{@ano_lancamento}, #{@preco}"
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

  private

  def calcula_preco(base)
    if @ano_lancamento < 2006
      if @possui_reimpressao
        base * 0.9
      else
        base * 0.95
      end
    elsif @ano_lancamento <= 2010
      base * 0.96
    else
      base
    end
  end

end

module Contador
  def <<(livro)
    push (livro)
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    self
  end
  def maximo_necessario
    @maximo_necessario
  end
end

class Estoque
  attr_reader :livros

  def initialize
    @livros = []
    @livros.extend Contador
  end

  def exporta_csv
    @livros.each do | livro |
      puts livro.to_csv
    end
  end

  def mais_barato_que(valor)
    @livros.select do | livro |
      livro.preco <= valor
    end
  end

  def total
    @livros.size
  end

  def << (livro)
    @livros << livro if livro
    self
  end

  def remove(livro)
    @livros.delete livro
  end

  def maximo_necessario
    @livros.maximo_necessario
  end
end

algoritmos = Livro.new("Programacao O O em Ruby", 70, 2000, true)
livro_arquitetura_software= Livro.new("Arquitetura de software", 70, 2000, true)
algoritmos2 = Livro.new("Programacao O O em Ruby", 70, 2000, true)
livro_arquitetura_software2= Livro.new("Arquitetura de software", 70, 2000, true)

estoque = Estoque.new
estoque <<  algoritmos
estoque <<  livro_arquitetura_software
estoque <<  algoritmos2
estoque <<  livro_arquitetura_software2

puts estoque.livros.maximo_necessario

estoque.remove algoritmos

numbers = []
numbers.extend Contador
numbers << 13
numbers << 17
numbers << 19

puts numbers.maximo_necessario


