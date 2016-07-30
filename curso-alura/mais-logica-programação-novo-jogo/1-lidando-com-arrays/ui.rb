def dar_boas_vindas
  puts
  puts "/##############################################/"
  puts "/                   JOGO FOGE FOGE             /"
  puts "/##############################################/"
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end