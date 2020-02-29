numbers = []
i = 0

while i < 6
  puts "At the top i is #{i}"

  numbers << i
  puts "Numbers now:", numbers

  i += 1
  puts "At the bottom i is #{i}"
end

puts "The numbers:"

numbers.each {|number| puts number}

puts "II. The numbers:"

numbers.each do |number|
  puts number
end

puts "III. The numbers:"

for number in numbers
  puts number
end
