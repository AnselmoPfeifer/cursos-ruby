#!/usr/bin/env ruby
def dar_boas_vindas
  puts "Bem vindo ao curso de Adivinhação"
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end

def sorteia_numero_secreto
  puts "Escolhendo um numero secreto entre 0 e 200"
  sorteado = 175
  puts "Que tal adivinhar nosso numero secreto!"
  sorteado
end

def pede_um_numero(chutes, contagem, limite_tentativas)
  puts "Tentativa #{contagem} de #{limite_tentativas}"
  puts "Chutes ate agora #{chutes}"
  chute = gets.strip
  puts "Será que acertou, Você chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute

  if acertou
    puts " Você acertou. Parabens!"
    return true
  end

  maior = numero_secreto > chute
  if maior
    puts "O numero secreto é maior!"
  else
    puts "O numero secreto é menor!"
  end
  false
end

dar_boas_vindas
numero_secreto = sorteia_numero_secreto
limite_tentativas = 5
chutes = []

for contagem in 1..limite_tentativas
  chute = pede_um_numero chutes, contagem, limite_tentativas
  chutes << chute

  if verifica_se_acertou numero_secreto, chute
    break
  end
end