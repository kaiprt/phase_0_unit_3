# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode
=begin 
1. Create an instance method, area, in the rectangle class
2. and have it return the area of any Rectangle Class object.
3. Create an instance method, perimeter, in the rectange class
4. and have it return the perimeter in the rectangle class.
5. Create an instance method, diagonal, in the rectange class
6. and have it return the diagonal length of the object it's called on.
7. Create an instance method, square?, in the rectange class
8. and have it return if the rectangle can be classified as a square.
=end


# 3. Initial Solution
=begin
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
    return @width * @height
  end

  def perimeter
    ww = @width + @width
    hh = @height + @height
    return ww + hh
  end

  def diagonal
    return Math.sqrt((@width**2)+(@height**2))
  end

  def square?
    return @width == @height
  end
end
=end

# 4. Refactored Solution
class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
    return @width * @height
  end

  def perimeter
    return @width + @width + @height + @height 
  end

  def diagonal
    return Math.hypot(@width, @height)
  end

  def square?
    return @width == @height
  end

end





# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Error Failed!" unless yield
end

rect = Rectangle.new(5, 5)

assert { rect.area == 25 }
assert { rect.perimeter == 20 }
assert { rect.diagonal == 7.0710678118654755 }
assert { rect.square? == true }

# 5. Reflection
=begin
 In this challenge I emplemented a basic Ruby class and created instance variables,
 used built-in Ruby methods, and manipulated data. I felt very confident with the 
 learning objectives and finished the challenge in a timely fashion. My goal when 
 refactoring was to use the shortest amount of code possible to yield accurate 
 results. This allowed me to explore methods in Ruby and I ended up gaining more 
 experience with the class 'Math'. I enjoyed this challenge and the logic behind 
 it.
=end