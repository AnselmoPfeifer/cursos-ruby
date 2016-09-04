class Livro
  attr_accessor :titulo, :preco, :ano_lancamento
  def initialize(titulo, preco, ano_lancamento)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
  end
end

livro_ruby = Livro.new("Programacao OO em Ruby", 70, 2010)
livro_ruby_rails = Livro.new("Programacao Agil com Ruby on Rails", 90, 2013)

def imprime_nota_fiscal(livros)
  livros.each do | livro |
    puts "Titulo: #{livro.titulo}"
    puts "Valor: #{livro.preco}"
    puts "Ano Lancamento: #{livro.ano_lancamento}"
    puts ".........................."
  end
end

livros = [livro_ruby, livro_ruby_rails]


imprime_nota_fiscal livros