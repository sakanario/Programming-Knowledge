INHERITANCE
  class Rectangle
    def initialize(lenght,breadth)
      @lenght = lenght
      @breadth = breadth
    end

    def perimeter
      2 * (@lenght + @breadth)
    end
  end

  class Square < Rectangle
    def initialize(side)
      @lenght = side
      @breadth = side
    end
  end

  s = Square.new(10)
  puts s.perimeter

SUPER KEYWORD
# untuk menggunakan nama method yang sama pada parent class.
class Animal
  def move
    "I can move"
  end
end

class Bird < Animal
  def move # overriding method in base class
    super + " by fly"
  end
end

puts Bird.new.move # I can move by fly

SUPER WITH PARAMETER
class Geeks_1
    def display a = "Jadul", b = "Dulu"
        puts "Parent class, 1st Argument: #{a}, 2nd Argument: #{b}"
    end
end

class Geeks_2 < Geeks_1
    def display a, b

        super
        super a
        super a, b
        super()

        puts "Hey! This is subclass method"
    end
end

obj = Geeks_2.new
obj.display "Upin", "Ipin"
