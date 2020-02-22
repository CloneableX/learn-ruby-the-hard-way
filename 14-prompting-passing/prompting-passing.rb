name = ARGV.first
promt = ">"

puts "Hi, #{name}."
puts "I'd like to ask you a few question."

puts "Do you like me, #{name}"
puts promt
likes = $stdin.gets.chomp

puts "Where do you live, #{name}?"
puts promt
lives = $stdin.gets.chomp

puts "What kind of computer do you have?", promt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
