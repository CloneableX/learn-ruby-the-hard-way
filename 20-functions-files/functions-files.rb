file_name = ARGV.first

def print_all(file)
  puts file.read
end

def rewind(file)
  file.seek(0)
end

def print_line(line_count, file)
  puts "#{line_count}, #{file.gets.chomp}"
end

current_file = open(file_name)

puts "First let's print the whole file:"
print_all(current_file)

puts "Now, let's rewind, kind of like a tape"
rewind(current_file)

puts "Let's print three lines:"
print_line(1, current_file)
print_line(2, current_file)
print_line(3, current_file)
