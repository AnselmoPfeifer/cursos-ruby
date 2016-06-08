#!/usr/bin/env ruby

diretorio = "/Users/anselmo/"
extensoes = "{zip,tar,tar.gz}"

buscar_por = "#{diretorio}**/*.#{extensoes}"

Dir.glob(buscar_por).sort!{|arquivos| File.size(arquivos)}.each do |arquivos|
  puts "#{arquivos}"
  tamanho = (File.size(arquivos).to_f / 2**20).round(2).floor
  puts "#{tamanho} Mb"
end

