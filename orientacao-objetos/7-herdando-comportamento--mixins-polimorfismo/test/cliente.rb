# class Cliente
#   def initialize(nome)
#     @nome = nome
#   end
#   private
#
#   def nome
#     @nome
#   end
# end
#
# puts Cliente.new("guilherme").nome


module Gerador
  private
  def gera_codigo
    "gerador original"
  end
end

class Cliente

  def gera_codigo
    "novo gerador"
  end

  include Gerador
end

puts Cliente.new.gera_codigo