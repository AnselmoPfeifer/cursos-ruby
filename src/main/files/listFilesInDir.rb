#!/usr/bin/env ruby

diretorio = "/Users/anselmo/Documents/Desenvolvimento/workspace/Servidor/Java/"
extensoes = "{zip,tar,tar.gz}"
buscar_por = "#{diretorio}**/*.#{extensoes}"

Dir.glob(buscar_por).sort!{|arquivos| File.size(arquivos)}.each do |arquivos|
  puts "#{arquivos}"
  tamanho = (File.size(arquivos).to_f / 2**20).round(2).floor
  puts "#{tamanho} Mb"
end















# Dir.glob(buscar_por).each do |arquivos|
#   puts "#{arquivos}"
#   tamanho = (File.size(arquivos).to_f / 2**20).round(2).floor
#   puts "#{tamanho} Mb"
# end


