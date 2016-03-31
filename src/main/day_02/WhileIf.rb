class WhileIf
  puts "Give me two numbers and I will tell you the numbers between them that are prime"
  puts "To get started, what is your starting number?"
  num = gets.to_i

  puts "Exellent, and what is your ending number?"
  last = gets.to_i

  puts "Here are the results:"

  while (num <= last)
    prime_flag = true
    x = 2

    while (x <= num / 2)
      if (num % x == 0)
        prime_flag = false
        break
      end

      x += 1
    end
    if prime_flag
      puts "A prime number there be " + num.to_s
    end

    num += 1
  end

end