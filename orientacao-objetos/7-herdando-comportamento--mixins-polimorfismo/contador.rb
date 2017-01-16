module Contador
  def <<(livro)
    push (livro)
    if @maximo_necessario.nil? || @maximo_necessario < size
      @maximo_necessario = size
    end
    self
  end
  def maximo_necessario
    @maximo_necessario
  end
end