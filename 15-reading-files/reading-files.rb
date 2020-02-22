file_name = ARGV.first

puts "Here's your file, #{file_name}:"

txt = open(file_name)
puts txt.read()

puts "Type the filename again:"

file_name_again = $stdin.gets.chomp
txt_again = open(file_name_again)
puts txt_again.read()
