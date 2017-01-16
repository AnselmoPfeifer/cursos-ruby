require_relative 'produto'

class Livro

  include Produto

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, editora, possui_sobrecapa)
    super(titulo, preco, ano_lancamento, editora)
    @possui_sobrecapa = possui_sobrecapa
    @possui_reimpressao = possui_reimpressao
  end

  def matches?(query)
    ['livro', 'impresso'].include?(query)
  end

  def possui_reimpressao?
    @possui_reimpressao
  end

end

