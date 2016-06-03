#!/usr/bin/env ruby

puts "Write a string:\n Exemple: This is the end the end this IS this\n"
text = gets.chomp
text.downcase!
words = text.split

frequencies = Hash.new(0)

words.each { |item| frequencies[item] += 1}

frequencies = frequencies.sort_by { |item, amount| amount}
frequencies.reverse!
frequencies.each do | item, amount|
puts item + " " + amount.to_s
end

