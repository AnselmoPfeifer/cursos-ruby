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

class Estoque
  def initialize
    @livros = []
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

  def adiciona (livro)
    @livros << livro if livro
  end
end

livro_ruby = Livro.new("Programacao O O em Ruby", 70, 2000, true)
livro_arquitetura_software= Livro.new("Arquitetura de software", 70, 2000, true)

estoque = Estoque.new
estoque.adiciona livro_ruby
estoque.adiciona  livro_arquitetura_software

baratos = estoque.mais_barato_que 80
baratos.each do | livro |
  puts livro.titulo
end

estoque.exporta_csv

