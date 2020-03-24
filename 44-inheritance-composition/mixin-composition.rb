require "./other.rb"

class Child
  include Other

  def override()
    puts "Child override"
  end

  def altered()
    puts "Child altered Before"
    Other.altered()
    puts "Child altered After"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
