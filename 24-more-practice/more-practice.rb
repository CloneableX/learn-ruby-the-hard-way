puts "Let's practice everything."
puts "You'd need to know about escapes with \\ that do \n newlines and \t tabs."

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern
\tThe needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none
END

puts "------------"
puts poem
puts "------------"

def secret_fomula(start)
  jelly_beans = 500 * start
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

five = 10 - 6 + 8 - 7
puts "This should be five: #{five}"

start_point = 10000
puts "With a starting point of: #{start_point}"
beans, jars, crates = secret_fomula(start_point)
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates"

puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates" % secret_fomula(start_point / 10)
