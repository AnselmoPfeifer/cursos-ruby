#!/usr/bin/env ruby
  favorite_candy = [" resses", " snickers", " milky way", "there musketteers"]

  #Impressao do valores na ordem 1-2-3-4
  counter = 1

  favorite_candy.each do | item|
    puts "#{counter}: #{item}"
    counter += 1
  end

  #Impressao do valores na ordem inversa ou seja 4-3-2-1
  puts ""

  counter2 = 4

  favorite_candy.each do | item|
    puts "#{counter2}: #{item}"
    counter2 -= 1
  end
$end
