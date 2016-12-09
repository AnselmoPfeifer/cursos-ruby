class Cliente
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
    debug_me
  end

  def debug_me
    puts "#{@nome},#{@idade}"
  end
end

class Cliente

  #declarando o metodo agora como privado
  private
  def debug_me
    puts "um outro metodo de debug"
  end
end

Cliente.new("carlos", 30)