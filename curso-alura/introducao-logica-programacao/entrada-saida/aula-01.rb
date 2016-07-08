#!/usr/bin/env ruby
puts "Bem vindo ao curso de Adivinhação"
puts "Qual é seu nome?"
nome = gets
puts "Começaremos o jogo com você " + nome

puts "Escolhendo um numero secreto entre 0 e 200"
numero_secreto = 175
puts "Escolhido... Que tal adivinhar hoje o numero secreto?"
puts "Entre com seu numero:"
puts "Tentativa 1:"
chute = gets
puts "Será que acertou, Você chutou " + chute

#Converte String em numero Inteiro
puts chute.to_i == numero_secreto

