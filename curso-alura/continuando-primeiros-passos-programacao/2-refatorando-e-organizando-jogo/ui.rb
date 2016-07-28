#!/usr/bin/env ruby
def avisa_chute_efetuado (chute)
  puts "Você ja chutou '#{chute}'"
end

def avisa_letra_nao_encontrada
  puts "Letra nao encontrada."
end

def avisa_letra_encontrada (total_encrontrado)
  puts "Letra encontrada #{total_encrontrado} vezes."
end

def avisa_acertou_palavra
  puts "Parabens! Você Acertou a palavra!"
end

def avisa_errou_palavra
  puts "Que pena você errou!"
end

def avisa_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

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

def cabecalho_tentativa(chutes, erros, mascara)
  puts "\n\n"
  puts "palavra secreta eh a #{mascara}"
  puts "Erros ate agora: #{erros}"
  puts "Chutes ate agora: #{chutes}"
  puts "Entre com uma palavra ou letra"
end

def pede_um_chute
  chute = gets.strip
  puts "Será que acertou? você chutou #{chute}"
  chute
end