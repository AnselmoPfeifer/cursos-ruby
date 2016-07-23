class Name

  print "First name? "
  first_name = gets.chomp

  print "Middle name? "
  middle_name = gets.chomp

  print "Last name? "
  last_name = gets.chomp

  puts "Yor full name is #{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}"
end