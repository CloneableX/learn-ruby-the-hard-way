class MyStuff

  def initialize()
    @trangerine = "And now thousand years between"
  end

  attr_reader :trangerine

  def apple()
    puts "I AM CLASSY APPLES"
  end
end

thing = MyStuff.new
thing.apple
puts thing.trangerine
