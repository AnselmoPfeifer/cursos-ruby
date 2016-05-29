#!/usr/bin/env ruby

puts "Paste your document here:"
document = gets.chomp

puts "What word would you like removed? "
remove = gets.chomp

puts "What word would like there instead"
new_word = gets.chomp

target_words = document.split(" ")

target_words.each do |a_word|
  if a_word != remove
    print a_word + (" ")
    else print new_word + (" ")
  end

end