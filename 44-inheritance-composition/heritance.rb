class Parent
  def implicity()
    puts "Parent implicity()"
  end

  def override()
    puts "Parent override()"
  end

  def altered()
    puts "Parent altered()"
  end
end

class Child < Parent
  def override()
    puts "Child override()"
  end

  def altered()
    puts "Child altered() before Parent altered()"
    super()
    puts "Child altered() after Parent altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicity()
son.implicity()

dad.override()
son.override()

dad.altered()
son.altered()
