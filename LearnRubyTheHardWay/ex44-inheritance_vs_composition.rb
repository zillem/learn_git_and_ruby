class Parent
def implicit
  puts "PARENT implicit()"
end

  def override()
    print "PARENT override()"
    puts " only for parents"
  end

  def altered()
   puts "PARENT altered()"
 end
end

class Child < Parent
  def implicit
    puts "CHILD implicit()"
  end
  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

puts "#### inheritance"
dad.implicit
son.implicit
dad.override
son.override
dad.altered
son.altered

puts "\n#### open other class"
class Other
  def override
    puts "OTHER override()"
  end
  def implicit
    puts "OTHER implicit()"
  end
  def altered
    puts "OTHER altered()"
  end
end

class Child2
  def initialize
    @other = Other.new
  end
  def implicit
    @other.implicit
  end
  def override
    puts "CHILD2 override()"
  end
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    @other.altered
    puts "CHILD, AFTER PARENT altered()"
  end
end

son2 = Child2.new
son2.implicit
son2.altered
son2.override

puts "\n#### include module"
module Othermod

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child3
  include Othermod

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    Other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son3 = Child3.new()

son3.implicit()
son3.override()
son3.altered()
