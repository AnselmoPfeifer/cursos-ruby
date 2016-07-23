#!/usr/bin/env ruby

books = ["1 Ruby programming tutorial","2 Combined Comparison Operator explained"]

puts books.sort! { | a,b | a <=> b }
puts books.sort! { | a,b | b <=> a }

puts 4 <=> 3
puts 3 <=> 4