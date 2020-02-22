def cheeses_and_crackers(cheeses_amount, crackers_amount)
  puts "You have #{cheeses_amount} cheeses!"
  puts "You have #{crackers_amount} boxes of crackers!"
  puts "Man that's enough for the party!"
  puts "Get a blanket"
end

puts "We can just give the function numbers directly:"
cheeses_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
total_cheeses = 10
total_crackers = 50
cheeses_and_crackers(total_cheeses, total_crackers)

puts "We can even do math inside too:"
cheeses_and_crackers(10 + 20, 10 + 1)

puts "And we can combine the two, variables and math:"
cheeses_and_crackers(total_cheeses + 100, 1000 + total_crackers)
