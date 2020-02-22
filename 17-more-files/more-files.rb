from_file_path, to_file_path = ARGV

puts "Copying from #{from_file_path} to #{to_file_path}"

from_file = open(from_file_path)
indata = from_file.read
puts "The input file is #{indata.length} bytes long"

puts "Does the output file exist? #{File.exist?(to_file_path)}"

to_file = open(to_file_path, "w")
to_file.write(indata)

puts "Allright, all done"

from_file.close
to_file.close
