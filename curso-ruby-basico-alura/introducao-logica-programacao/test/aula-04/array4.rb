chutes = []

chute = 170
tentativa = 1
chutes << chute

chute = 175
tentativa = 2
chutes << chute

chute = 130
tentativa = 3
chutes << chute

for chute in chutes
  puts "Chute " + chute.to_s
end
puts chutes.size
