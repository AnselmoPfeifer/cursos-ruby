#!/usr/bin/env ruby
def dar_boas_vindas
  puts
  puts "        P  /_\  P                              "
  puts "       /_\_|_|_/_\                             "
  puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
  puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
  puts "  |' '  |  |_|  |'  ' |                        "
  puts "  |_____| ' _ ' |_____|                        "
  puts "        \__|_|__/                              "
  puts
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end

def sorteia_palavra_secreta
  puts "Escolhendo uma palavra...Aguarde..."
  palavra_secreta = "Programador"
  puts "Escolhida uma palavra com #{palavra_secreta.size} letras... boa sorte!"
  palavra_secreta
end

def nao_quer_jogar?
  puts "Deseja jogar de novo? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(chutes, erros)
  puts "\n\n"
  puts "Erros ate agora: #{erros}"
  puts "Chutes ate agora: #{chutes}"
  puts "Entre com uma palavra ou letra"
  chute = gets.strip
  puts "Será que acertou? você chutou #{chute}"
  chute
end

def joga(nome)
  palavra_secreta = sorteia_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute chutes, erros
    chutes << chute

    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      letra_procurada = chute[0]
      total_encrontrado = 0
      for i in 0..(palavra_secreta.size-1)
        if palavra_secreta[i] == letra_procurada
          total_encrontrada += 1
        end
      end
      if total_encrontrado != 0
        puts "Letra encontrada #{total_encrontrado} vezes."
      else
        puts "Letra nao encontrada."
        erros += 1
      end

    else
      acertou = chute == palavra_secreta
      if acertou
        puts "Parabens! Você Acertou!"
        pontos_ate_agora += 100
        break
      else
        puts "Que pena você errou!"
        pontos_ate_agora -=30
        erros +=1

      end
    end
  end
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

nome = dar_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end
