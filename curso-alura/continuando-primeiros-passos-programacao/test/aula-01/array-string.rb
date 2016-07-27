#Recebe uma palavra
palavra = gets.strip

#Conta a Quantida de Letras
puts "Quantidade de letras #{palavra.size}"

letra = gets.strip

#Verificando se uma valor esta dentro de um array.
if palavra.include? letra
  puts "A letra '#{letra}' tem dentro na palavra '#{palavra}'"
end