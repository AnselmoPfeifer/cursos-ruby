# require_relative 'produto'

class Livro < Produto
  attr_reader :titulo , :preco , :ano_lancamento , :editora , :possui_sobrecapa

  include Impresso

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, possui_sobrecapa, editora)
    super(titulo, preco, ano_lancamento, editora)
    @possui_reimpressao = possui_reimpressao
    @possui_sobrecapa = possui_sobrecapa
  end

  def matches?(query)
    ['livro', 'impresso'].include?(query)
  end

end

