#!/usr/bin/env ruby

file = "/Users/anselmo/Documents/Desenvolvimento/workspace/teste.txt"
states_file = File.open(file)
states = []

while ! states_file.eof?
  first = states_file.gets.chomp
  states << first
end

puts "Array de estados: "
puts states.inspect
puts "O tamanho da lista é: #{states.size}"
puts "O item que esta na posição 5 é : #{states[4]}"
states_file.close