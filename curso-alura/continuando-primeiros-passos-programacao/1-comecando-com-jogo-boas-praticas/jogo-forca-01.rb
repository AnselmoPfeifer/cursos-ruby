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
  palavra_secreta = "programador"
  puts "Escolhida uma palavra com #{palavra_secreta.size} letras... boa sorte!"
  palavra_secreta
end

def nao_quer_jogar?
  puts "Deseja jogar de novo? (S/N)"
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == "N"
end

def pede_um_chute(erros)
  puts "\n"
  puts "Erros ate agora: #{erros}"
  puts "Chutes ate agora: #{chutes}"
  puts "Entre com uma palavra ou letra"
  chute = gets.strip
  puts "Será que acertou? você chutou #{chute}"
  chute

end

def joga(nome)
  oportunidade = 5
  palavra_secreta = sorteia_palavra_secreta
  erros = oportunidade
  chutes = []
  pontos_ate_agora = 0

  while erros < oportunidade
    chute = pede_um_chute(chute)
    chutes << chute

    #Verifica se acertou
  end

  puts "Você ganhou #{pontos_ate_agora} pontos."
end

nome = dar_boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end
