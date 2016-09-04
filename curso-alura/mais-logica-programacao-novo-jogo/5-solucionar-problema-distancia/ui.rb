def da_boas_vindas
  puts
  puts "/##############################################/"
  puts "/                   JOGO FOGE FOGE             /"
  puts "/##############################################/"
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end

def pede_movimento
  puts "Para onde deseja ir?"
  movimento = gets.strip
end

def desenha(mapa)
  puts mapa
end

def game_over
  puts "##################################"
  puts "           Game Over              "
  puts "##################################"
end