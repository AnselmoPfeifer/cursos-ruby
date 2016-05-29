#!/usr/bin/env ruby

def factors_to_three(n)
  remainder = n % 3

  if remainder == 0
    return true
  else
    return false
  end
end

factors_to_three(0)
factors_to_three (99)
factors_to_three (46852169)
factors_to_three(21)
factors_to_three(22)