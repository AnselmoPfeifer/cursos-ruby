#!/usr/bin/env ruby

def sortedList (array, reverse = false)

  if reverse == false
    array.sort { |a,b| a <=> b }

  else
    array.sort { |a,b| b <=> a }
  end

end
linguagens = ["Ruby", "Java", "PHP", "C#", "C++", "C","python"]

puts "Ordem normal #{sortedList(linguagens)}"

puts "Order inversa #{sortedList(linguagens, true)}"
