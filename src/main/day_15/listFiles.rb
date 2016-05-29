#!/usr/bin/env ruby

file = "/Users/anselmo/Documents/Desenvolvimento/workspace/teste.txt"
states_file = File.open(file)

while ! states_file.eof?
  line = states_file.gets.chomp
  puts line
end

puts "Veja oque esta escrito na ultima linha do arquivos #{line}"

states_file.close
