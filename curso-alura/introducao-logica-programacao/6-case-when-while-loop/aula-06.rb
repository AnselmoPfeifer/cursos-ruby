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
  case dificuldade
    when 1
      maximo = 30
    when 2
      maximo = 60
    when 3
      maximo = 100
    when 4
      maximo = 150
    when 5
      maximo = 200
  end

  puts "Escolhendo um numero secreto entre 0 e #{maximo - 1}"
  sorteado = rand(maximo)
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
    puts "#{nome} você acertou. Parabens!"
    return true
  end

  maior = numero_secreto > chute
  if maior
    puts "O numero secreto é MAIOR!"
  else
    puts "O numero secreto é MENOR!"
  end
  false
end

def joga(nome, dificuldade)
  numero_secreto = sorteia_numero_secreto(dificuldade)
  pontos_ate_agora = 1000
  limite_tentativas = 5
  chutes = []
  for contagem in 1..limite_tentativas
    chute = pede_um_numero chutes, contagem, limite_tentativas
    chutes << chute

    if nome == 'Anselmo'
      puts "#{nome} você acertou. Parabens!"
      break
    end

    pontos_a_perder = (chute - numero_secreto).abs / 2.0
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou numero_secreto, chute
      break
    end
  end
  puts "#{nome} ganhou pontos ate agora #{pontos_ate_agora} pontos"
  puts "O numero sorteado foi: #{numero_secreto}"
end

def quer_jogar
  puts "Deseja jogar novamente? (S,N)"
  quero_jogar = gets.strip
  quero_jogar.upcase == "S"
end
nome = dar_boas_vindas
dificuldade = pede_dificuldade

loop  do
  joga nome, dificuldade
  if !quer_jogar
    break
  end
end


