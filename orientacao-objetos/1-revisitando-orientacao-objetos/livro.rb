class Livro
  attr_accessor :titulo, :preco, :ano_lancamento
end

livro_ruby = Livro.new()
livro_ruby.titulo = "Programacao OO em Ruby"
livro_ruby.preco = 70
livro_ruby.ano_lancamento = 2010

livro_ruby_rails = Livro.new
livro_ruby_rails.titulo = "Programacao Agil com Ruby on Rails"
livro_ruby_rails.preco = 90
livro_ruby_rails.ano_lancamento = 2013

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