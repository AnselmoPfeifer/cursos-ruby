class PrintInverseArray
  array_families = ["Braday", "Partridge", "Bunday"]
  soda_type = ["Sprite","coke","mountain dew", "orange soda"]

  puts array_families

  #print o array de familias na sequencia
  puts soda_type[1]
  puts soda_type[2]
  puts soda_type[3]
  puts soda_type[4]

  #print o array de familias na sequencia inversa
  puts soda_type[-1]
  puts soda_type[-2]
  puts soda_type[-3]
  puts soda_type[-4]

  soda_type = ["Sprite", 6, "mountain dew", 8.333, "orange soda", 7 + 9]
  puts soda_type

  puts "Your favorite drinks is: "
  puts soda_type[4] + " tastes delicious!"

  #outras formas de usar
  puts "Your favorite drinks is: "
  puts "#{soda_type[4]} +  tastes delicious!"

  #print o tipo da variavel
  puts array_families.class

  idade = 27
  multiplicador = 2
  puts idade * multiplicador

end
