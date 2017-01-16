require_relative 'produto'

class Revista

  include Produto

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, numero, editora)
    @titulo = titulo
    @preco = preco
    @ano_lancamento = ano_lancamento
    @preco = calcula_preco(preco)
    @possui_reimpressao = possui_reimpressao
    @editora = editora
    @numero = numero
  end

  def matches?(query)
    ['revista', 'impresso'].include?(query)
  end


  def possui_reimpressao?
    @possui_reimpressao
  end

end

