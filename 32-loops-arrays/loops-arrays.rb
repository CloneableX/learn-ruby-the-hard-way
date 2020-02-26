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

(0..5).each {|element| puts "range operator 0..5 element: #{element}"}
(0...5).each {|element| puts "range operator 0...5 element: #{element}"}

mix = ["a", "b"] << "c"
mix.each do |mix_element|
  puts "<< push element to mix: #{mix_element}"
end

mix << 1 << [2, 3]
mix.each do |mix_element|
  puts "<< be chained push element to mix: #{mix_element}"
end
