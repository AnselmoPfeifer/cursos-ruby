#!/usr/bin/env ruby
puts "Bem vindo ao curso de Adivinhação\n
Qual é seu nome?"

nome = gets

puts "Começaremos o jogo com você " + nome

puts "Escolhendo um numero secreto entre 0 e 200"
numero_secreto = 175
numero_tentativas = 2
for contagem in 1..numero_tentativas
  puts "Tentativa " + contagem.to_s + " de " + numero_tentativas.to_s
  chute = gets
  puts "Será que acertou, Você chutou " + chute

  puts chute.to_i == numero_secreto

  acertou = numero_secreto == chute.to_i

  if acertou
    puts nome + " Você acertou. Parabens!"
    break
  else
    puts nome +  "Você errou, Tente novamente!"

    maior = numero_secreto > chute.to_i
    if maior
      puts "O numero secreto é maior!"
    else
      puts "O numero secreto é menor!"
    end
  end
end



