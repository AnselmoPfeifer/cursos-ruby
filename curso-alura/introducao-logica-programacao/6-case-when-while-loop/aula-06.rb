#!/usr/bin/env ruby
def dar_boas_vindas
  puts "Bem vindo ao curso de Adivinhação"
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end

def pede_dificuldade
  puts "Qual o nivel de dificuldade que deseja? ( 1 Fácil... 5 Dificil )"
  dificuldade = gets.to_i
end
def sorteia_numero_secreto(dificuldade)
  if dificuldade == 1
    maxino = 30
  else
    if dificuldade == 2
      maxino = 60
    else
      if dificuldade == 3
      maxino = 100
      else
        if dificuldade == 4
          maxino = 150
        else
          maxino = 200
        end
      end
    end

  end

  puts "Escolhendo um numero secreto entre 0 e #{maxino - 1}"
  sorteado = rand(maxino)
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
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto(dificuldade)

pontos_ate_agora = 1000
limite_tentativas = 10
chutes = []

for contagem in 1..limite_tentativas
  chute = pede_um_numero chutes, contagem, limite_tentativas
  chutes << chute
  pontos_a_perder = (chute - numero_secreto).abs / 2.0
  pontos_ate_agora -= pontos_a_perder

  if verifica_se_acertou numero_secreto, chute
    break
  end
end
puts "Voce ganhou pontos ate agora #{pontos_ate_agora} pontos"
puts "O numero sorteado foi: #{numero_secreto}"