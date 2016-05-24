#!/usr/bin/env ruby

hp = 30
loop do
  hp -= 3
  puts "Damage done, hp remaining #{hp}"
  break if hp <= 6
end

puts "Game Over!"