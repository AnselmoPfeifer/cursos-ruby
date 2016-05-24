#!/usr/bin/env ruby

puts "This is a pythagorean theorem calculartor! You can find the  hypotenus of a triangle with it."

puts "To get started, what is side a?"
a = gets.to_f;

puts "What is side b of your triangle?"
b = gets.to_f;

a2 = a**2
b2 = b**2
c2 = a2 + b2;

puts "You great today! By the way, your triangle's hypotenuse is #{Math.sqrt(c2).round(2)}"
