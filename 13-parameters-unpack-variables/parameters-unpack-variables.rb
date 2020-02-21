first, second, third = ARGV

puts "Your first variable is #{first}"
puts "Your second variable is #{second}"
puts "Your third variable is #{third}"

print "Give me your name:"
name = $stdin.gets.chomp

puts "Hi, #{name}"
