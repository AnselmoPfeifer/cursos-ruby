#!/usr/bin/env ruby

def avisa_campeao_atual (dados)
  puts "Nosso campeao atual eh : #{dados[0]} com #{dados[1]} pontos!"
end

def avisa_chute_efetuado (chute)
  puts "Você ja chutou '#{chute}'"
end

def avisa_pontos_totais (pontos_totais)
  puts "Voce possui #{pontos_totais} pontos"
end

def avisa_letra_nao_encontrada
  puts "Letra nao encontrada."
end

def avisa_letra_encontrada (total_encrontrado)
  puts "Letra encontrada #{total_encrontrado} vezes."
end

def avisa_acertou_palavra
  puts "\nParabéns, você ganhou!"
  puts

  puts "       ___________      "
  puts "      '._==_==_=_.'     "
  puts "      .-\\:      /-.    "
  puts "     | (|:.     |) |    "
  puts "      '-|:.     |-'     "
  puts "        \\::.    /      "
  puts "         '::. .'        "
  puts "           ) (          "
  puts "         _.' '._        "
  puts "        '-------'       "
  puts
end

def avisa_errou_palavra
  puts "Que pena você errou!"
end

def avisa_pontos(pontos_ate_agora)
  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def dar_boas_vindas
  puts
  puts "/##############################################/"
  puts "/                   JOGO DA FORCA              /"
  puts "/##############################################/"
  puts "Qual é seu nome?"
  nome = gets.strip
  puts "Começaremos o jogo com você #{nome}"
  nome
end

def desenha_forca(erros)
  cabeca = "   "
  corpo = " "
  pernas = "   "
  bracos = "   "
  if erros >= 1
    cabeca = "(_)"
  end
  if erros >= 2
    bracos = " | "
    corpo = "|"
  end
  if erros >= 3
    bracos = "\\|/"
  end
  if erros >= 4
    pernas = "/ \\"
  end

  puts "  _______       "
  puts " |/      |      "
  puts " |      #{cabeca}  "
  puts " |      #{bracos}  "
  puts " |       #{corpo}     "
  puts " |      #{pernas}   "
  puts " |              "
  puts "_|___           "
  puts

end

def avisa_escolhendo_palavra
  puts "Escolhendo uma palavra...Aguarde..."
end

def avisa_palavra_escolhida (palavra_secreta)
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
  desenha_forca(erros)
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