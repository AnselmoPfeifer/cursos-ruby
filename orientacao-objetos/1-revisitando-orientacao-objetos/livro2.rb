class Livro
  attr_accessor :titulo, :preco, :ano_lancamento
  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
  end
end

livro_ruby = Livro.new("Programacao O O em Ruby", 70, 2000)
livro_ruby_rails = Livro.new("Programacao Agil com Ruby on Rails", 90, 2013)
agile = Livro.new("Agile Web Development with Rails", 100.00, 1999)

livros = [livro_ruby, livro_ruby_rails, agile]

def imprime_nota_fiscal(livros)
  puts "Nota Fiscal"
  livros.each do | livro |
    puts "Titulo: #{livro.titulo}"
    puts "Valor: #{livro.preco}"
    puts "Ano Lancamento: #{livro.ano_lancamento}"
    puts ".........................."
  end
end

def descontos(livros)
  livros.each do | livro |
    if livro.ano_lancamento < 2000
      livro.preco = livro.preco * 0.7
    end
  end
end

def livros_para_new_letter(livros)
  descontos livros
  puts "Livros para New Letter"
  livros.each do | livro |
    if livro.ano_lancamento < 2010
      puts "Titulo: #{livro.titulo}"
      puts "Valor: #{livro.preco}"
      puts "Ano Lancamento: #{livro.ano_lancamento}"
      puts ".........................."
    end
  end

end

# imprime_nota_fiscal livros
#
# descontos livros

livros_para_new_letter livros
