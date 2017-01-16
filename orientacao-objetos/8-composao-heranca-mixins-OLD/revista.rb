class Revista < Produto
  attr_reader :titulo , :preco , :ano_lancamento , :editora , :numero

  include Impresso

  def initialize(titulo, preco, ano_lancamento, possui_reimpressao, numero, editora)
    super(titulo, preco, ano_lancamento, editora)
    @possui_reimpressao = possui_reimpressao
    @numero = numero
  end
  def matches?(query)
    ['revista', 'impresso'].include?(query)
  end


  def possui_reimpressao?
    @possui_reimpressao
  end

end

