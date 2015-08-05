require 'pry'
class Triangle
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # def TriangleError(side1, side2, side3)
  #  raise TriangleError if side1 < 0 || side2 < 0 || side3 < 0
  # end

  def kind
    triangle_sides = []
    raise TriangleError, "One of the sides is not over 0" if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 
    raise TriangleError, "This is not a triangle" if @side1+@side2 <= @side3 || @side1+@side3 <= @side2 || @side3+@side2 <= @side1
    triangle_sides << @side1
    triangle_sides << @side2
    triangle_sides << @side3
    
    triangle_sides
    # .each do |n|
    #   if n > 0
        a = triangle_sides[0]
        b = triangle_sides[1]
        c = triangle_sides[2]
        
        if a==b && b==c
  #all sides are equal
          :equilateral
        elsif (a==b && a!=c) || (a==c && a!=b) || (b==c && b!=a)
  #two sides must be equal but one must not be equal 
        return :isosceles
        elsif(a!=b && a!=c && b!=c)
  #no sides must be equal
        return :scalene
        end
  end
end

class TriangleError < StandardError

end

#Write a Triangle class that accepts its sides on initialization
#Give your Triangles an instance method, kind 
#kind - returns, as a symbol, its type
# The valid types are:

# :equilateral
# :isosceles
# :scalene

# The sum of the lengths of any two sides of a triangle 
# always exceeds the length of the third side. This is a 
# principle known as the triangle inequality.
