file_name = ARGV.first

puts "We're going to erase #{file_name}"
puts "If you don't want that, hit CTRL-C (^C)"
puts "If you do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
puts "Truncating the file. Goodbye!"
txt = open(file_name, "w+")

puts "Now I'm going to ask you for three lines"

print "line 1:"
line1 = $stdin.gets.chomp

print "line 2:"
line2 = $stdin.gets.chomp

print "line 3:"
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file"

formatter = "%{line1}\n%{line2}\n%{line3}\n"
txt.write(formatter % {line1: line1, line2: line2, line3: line3})

puts "And finally, I close it"
txt.close()
