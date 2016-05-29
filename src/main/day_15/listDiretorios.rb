#!/usr/bin/env ruby

diretory = "/Users/anselmo/Documents/Desenvolvimento/workspace/"

#Os dois casos sao iguais
dir_current = File.dirname(__FILE__)
onde_estou = Dir.pwd

puts "A lista no direorios é: "

Dir.foreach(diretory)do | file |
  puts file
end

puts onde_estou
puts dir_current