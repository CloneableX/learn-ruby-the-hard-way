def init_numbers_by_while(max, step)
  numbers = []
  i = 0
  while i < max
    puts "At the top i is #{i}"

    numbers << i
    puts "Numbers now:", numbers

    i += step
    puts "At the bottom i is #{i}"
  end

  return numbers
end

def init_numbers_by_for(max, step)
  numbers = []
  (0...max).step(step).each {|number| numbers << number}
  return numbers
end

puts "numbers_for is:", init_numbers_by_for(6, 2)

numbers = init_numbers_by_while(6, 1)

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
