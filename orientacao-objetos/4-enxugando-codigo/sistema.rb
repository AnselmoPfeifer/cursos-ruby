require_relative 'livro'
require_relative 'estoque'

algoritmos = Livro.new("Programacao O O em Ruby", 70, 2000, true, "")
livro_arquitetura_software = Livro.new("Arquitetura de software", 70, 2000, true, "")

estoque = Estoque.new
estoque <<  algoritmos << algoritmos
estoque <<  livro_arquitetura_software << livro_arquitetura_software

estoque.vende algoritmos
estoque.vende algoritmos

puts estoque.livro_que_mais_vendeu_por_titulo.titulo