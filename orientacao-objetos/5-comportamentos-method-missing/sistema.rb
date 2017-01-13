require_relative 'livro'
require_relative 'estoque'

algoritmos = Livro.new('Programacao O O em Ruby', 70, 2000, true, 'Globo', 'livro')
livro_arquitetura_software = Livro.new('Arquitetura de software', 70, 2000, true, 'Globo2', 'livro')
revista = Livro.new('Revista de Ruby', 10, 2012, true, 'Globo', 'revista')
ebook = Livro.new('Ebook de Ruby', 10, 2012, true, 'Globo', 'ebook')

estoque = Estoque.new
estoque <<  algoritmos << algoritmos
estoque << livro_arquitetura_software << livro_arquitetura_software
estoque << revista << revista << revista

estoque.vende algoritmos
estoque.vende algoritmos
estoque.vende livro_arquitetura_software
estoque.vende revista
estoque.vende revista
estoque.vende ebook

puts estoque.livro_que_mais_vendeu_por_titulo.titulo
puts estoque.revista_que_mais_vendeu_por_titulo.titulo
puts estoque.ebook_que_mais_vendeu_por_titulo.titulo
puts estoque.respose_to?(:ebook_que_mais_vendeu_por_titulo)