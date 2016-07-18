chutes = []

chute = 170
tentativa = 1
chutes[tentativa -1] = chute

chute = 100
tentativa = 2
chutes[tentativa -1] = chute

for contador in 0..(tentativa -1)
  puts "Agora sim. Nosso código roda e funciona, imprimindo os números que chutamos até agora: " + chutes[contador].to_s
end

puts chutes