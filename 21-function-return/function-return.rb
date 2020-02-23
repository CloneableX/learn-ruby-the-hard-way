def add(a, b)
  puts "ADDING #{a} + #{b}"
  return a + b
end

def substract(a, b)
  puts "SUBSTRACTING #{a} - #{b}"
  return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  return a * b
end

def devide(a, b)
  puts "DEVIDING #{a} / #{b}"
  return a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = substract(78, 4)
weight = multiply(90, 2)
iq = devide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

puts "Here's a puzzle"

what = add(age, substract(height, multiply(weight, devide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
