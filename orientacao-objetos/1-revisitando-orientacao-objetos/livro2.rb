class Livro
  attr_accessor :titulo, :preco, :ano_lancamento
  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
  end
end

livro_ruby = Livro.new("Programacao OO em Ruby", 70, 2009)
livro_ruby_rails = Livro.new("Programacao Agil com Ruby on Rails", 90, 2013)

def imprime_nota_fiscal(livros)
  livros.each do | livro |
    puts "Titulo: #{livro.titulo}"
    puts "Valor: #{livro.preco}"
    puts "Ano Lancamento: #{livro.ano_lancamento}"
    puts ".........................."
  end
end

def livros_para_new_letter(livros)
  livros.each do | livro |
    if livro.ano_lancamento < 2010
      puts "Livros para News Letter"
      puts "Valor: #{livro.preco}"
      puts "Ano Lancamento: #{livro.ano_lancamento}"
      puts ".........................."
    end
  end

end

livros = [livro_ruby, livro_ruby_rails]

#imprime_nota_fiscal livros

livros_para_new_letter livros