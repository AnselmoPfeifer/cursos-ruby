require_relative 'produto'

class Livro

  include Produto

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, possui_sobrecapa, editora)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @possui_reimpressao = possui_reimpressao
    @possui_sobrecapa = possui_sobrecapa
    @editora = editora
  end

  def matches?(query)
    ['livro', 'impresso'].include?(query)
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

end

