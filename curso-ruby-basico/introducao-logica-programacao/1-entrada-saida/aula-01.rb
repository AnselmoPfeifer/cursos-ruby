#!/usr/bin/env ruby
puts "Bem vindo ao curso de Adivinhação\n
Qual é seu nome?"

nome = gets

puts "Começaremos o jogo com você " + nome

puts "Escolhendo um numero secreto entre 0 e 200"
numero_secreto = 175

puts "Tentativa 1"
chute = gets
puts "Será que acertou, Você chutou " + chute

puts chute.to_i == numero_secreto

acertou = numero_secreto == chute.to_i

if acertou
    nome + "Você acertou. Parabens!"
else
  puts "Você errou, Tente novamente!"

    maior = numero_secreto > chute.to_i
  if maior
    puts "O numero secreto é maior!"
  else
    puts "O numero secreto é menor!"
  end
end

puts "Tentativa 2"
chute = gets
puts "Será que acertou, Você chutou " + chute

puts "Converte String em numero Inteiro"
puts chute.to_i == numero_secreto

acertou = numero_secreto == chute.to_i

if acertou
  nome + "Você acertou. Parabens!"
else
  puts "Você errou, Tente novamente!"

  maior = numero_secreto > chute.to_i
  if maior
    puts "O numero secreto é maior!"
  else
    puts "O numero secreto é menor!"
  end
end

puts "Tentativa 3"
chute = gets
puts "Será que acertou, Você chutou " + chute

puts "Converte String em numero Inteiro"
puts chute.to_i == numero_secreto

acertou = numero_secreto == chute.to_i

if acertou
  nome + "Você acertou. Parabens!"
else
  puts "Você errou, Tente novamente!"

  maior = numero_secreto > chute.to_i
  if maior
    puts "O numero secreto é maior!"
  else
    puts "O numero secreto é menor!"
  end
end

#Operadores matematicos
# puts 175 > 174
# puts 174 < 175
# puts 170 >= 170
# puts 175 >= 170
# puts 170 <= 170
# puts 170 <= 175

