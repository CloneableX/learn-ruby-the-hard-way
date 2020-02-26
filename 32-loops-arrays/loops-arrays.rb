numbers = [1, 2, 3, 4, 5]
fruits = ["apples", "oranges", "pears", "apricots"]
changes = [1, "pennies", 2, "dimes", 3, "quarters"]

for number in numbers
  puts "This is count #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type #{fruit}"
end

changes.each {|change| puts "I got #{change}"}

elements = []

(0..5).each do |element|
  puts "adding #{element} to the list"
  elements.push(element)
end

elements.each {|element| puts "Element was: #{element}"}
