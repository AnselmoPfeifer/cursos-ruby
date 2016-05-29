#!/usr/bin/env ruby

file = "/Users/anselmo/Documents/Desenvolvimento/workspace/teste.txt"
states_file = File.open(file)
  first_line = states_file.gets.chomp
  puts first_line
states_file.close