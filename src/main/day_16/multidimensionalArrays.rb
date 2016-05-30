#!/usr/bin/env ruby

number_array = [100,200,300,400,500,600,700,800,900,1000]
number_arrays = [number_array, number_array, number_array]
string_arrays = [["Limao", "Mamao", "Uva"],["Uva", "Limão", "Laranja"],["Laranja", "Uva", "Limao"]]

puts "O tamanho do number_array é : #{number_array.size}"
puts "O tamanho da string_array é : #{string_arrays.size}"
puts "O resultado do segundo numero do ultimo array é : #{number_arrays[2][2] * 5}"
puts "A utima letra da ultima palavra do ultimo array eh: #{string_arrays[2][string_arrays.size-1][4]}"

string_arrays.each { |x| puts x }

puts "\nPrint first character"
string_arrays.each { |x| x.each { |y| puts y[0] }}

