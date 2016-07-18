class MoreHash

  puts "What is your first name?"
  first_name = gets.chomp

  puts "How old are you?"
  your_age = gets.chomp

  puts "How many kids do you have?"
  kid_amount = gets.chomp

  puts "Area you male or famale?"
  male_famale = gets.chomp

  puts "Your are a #{your_age} year old, #{male_famale} . You name is #{first_name.capitalize}, and you have #{kid_amount} children"

end