print "Give me a number:"
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}"

print "Give me another number:"
another_number = gets.chomp
number = another_number.to_i

smaller = number / 100
puts "A smaller number is #{smaller}"

print "Give me some money:"
money = gets.chomp.to_f

back_money = money * 0.1
puts "I'll give you back 10% of it, is #{back_money.round(2)}"
