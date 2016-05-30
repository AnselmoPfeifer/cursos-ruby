#!/usr/bin/env ruby

# Use este script para buscar aquivos de uma determinada extenção
# Exemplo buscar em /home/usuario/ por arquivos zip, tar, tar.gz

puts "Lista arquivos de um diretorio e imprime diretorio/arquivo e \n tamanho em Mb"
diretorio = "/Users/anselmo/Documents/Desenvolvimento/workspace/"

extensoes = "{zip,tar,tar.gz}"
buscar_por = "#{diretorio}**/*.#{extensoes}"

Dir.glob(buscar_por).each do |arquivos|
  puts "#{arquivos}"
  tamanho = (File.size(arquivos).to_f / 2**20).round(2)

  puts "#{tamanho} Mb"
end