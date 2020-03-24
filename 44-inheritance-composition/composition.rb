class Other
  def implicit()
    puts "Other implicit"
  end

  def override()
    puts "Other override"
  end

  def altered()
    puts "Other altered"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "Child override"
  end

  def altered()
    puts "Child altered Before"
    @other.altered()
    puts "Child altered After"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()
