## Animal is-a object
class Animal
  def say()
    puts "I'm Animal"
  end
end

## Dog is-a Animal
class Dog < Animal

  def initialize(name)
    ## Dog has-a parameter called name
    @name = name
  end

  def say()
    puts "I'm Dog"
  end
end

## Cat is-a Animal
class Cat < Animal
  
  def initialize(name)
    ## Cat has-a parameter called name
    @name = name
  end

  def say()
    puts "I'm Cat"
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## Person has-a name
    @name = name

    ## Person has-a pet
    @pet = nil
  end

  attr_accessor :pet
end

## Employer is-a Person
class Employer < Person

  def initialize(name, salary)
    ## Employer has-a name
    super(name)

    ## Employer has-a salary
    @salary = salary
  end
end

## Fish is-a object
class Fish
end

## Salmon is-a Fish
class Salmon < Fish
end

## Halibut is-a Fish
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new("Rover")
rover.say

## satan is-a Cat
satan = Cat.new("Satan")
satan.say

## mary is-a Person
mary = Person.new("Mary")

## mary has-a pet, it's satan
mary.pet = satan

## frank is-a Employer
frank = Employer.new("Frank", 10000)

## frank has-a pet, it's rover
frank.pet = rover

## flipper is-a Fish
flipper = Fish.new

## crouse is-a Salmon
crouse = Salmon.new

## harry is-a Halibut
harry = Halibut.new
