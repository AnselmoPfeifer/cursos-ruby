class Conditional
  you_age = 21

  if you_age <= 17
    puts "You are not old enough for this site!"

  elsif you_age > 100
    puts "Go to this site: http://globoesporte.globo.com"

  elsif you_age == 21
    puts "You just got updated to the Premium Version"
  else
    puts "What is your gender?"
  end
end