class Hash2
  first_hash = Hash.new

  first_hash["first_name"] = "Jacob"
  first_hash["nick_name"] = "Day"
  first_hash["first_name"] = "Williams"

  puts first_hash["first_name"]
end