ten_things = "Apple Orange Crow Telephone Light Sugar"

puts "Wait there are not 10 things in that list. Let's fix that."

stuff = ten_things.split(" ")
more_stuff = ["Pear", "Desk", "Duck", "Chicken", "Boy", "Girl", "Banana", "Corn"]

while stuff.length != 10
  next_stuff = more_stuff.pop
  puts "Adding: #{next_stuff}"
  
  stuff.push(next_stuff)
  puts "There are #{stuff.length} items now."
end

puts "There we go:", stuff

puts "Let's do some things with stuff"

puts stuff[1]
puts stuff[-1]
puts stuff.pop
puts stuff.join(" ")
puts stuff[3..5].join("#")
