## Animal is-a object look at the extra credit
class Animal
end

## is-a Animal
class Dog < Animal

  def initialize(name)
    ## has-a name
    @name = name
    puts "New dogs name is #{name}"
  end
end

## is-a Animal
class Cat < Animal

  def initialize(name)
    ## has-a name
    @name = name
  end
end

## is-a Person
class Person

  def initialize(name)
    ## has-a name
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## is-a Person
class Employee < Person

  def initialize(name, salary)
    ## has-a name and salary ##hmm what is this strange magic?
    super(name)
    puts "I have an employee named #{name}, his salary is #{salary}"
    ## has-a salary
    @salary = salary
  end

end

## is-a Fish
class Fish
end

## is-a Fish
class Salmon < Fish
end

## is-a Fish
class Halibut < Fish
end


## rover is-a Dog
rover = Dog.new("Rover")

## is-a Cat
satan = Cat.new("Satan")

## is-a Person
mary = Person.new("Mary")

## is-a Person that has-a pet
mary.pet = satan

## is-a Employee, has-a name and salary
frank = Employee.new("Frank", 120000)

## is-a Employee of class Person that has-a pet that has-a name
frank.pet = rover

## Is-a Fish
flipper = Fish.new()

## is-a Fish that is-a Salmon
crouse = Salmon.new()

## is-a Fish that is-a Halibut
harry = Halibut.new()
