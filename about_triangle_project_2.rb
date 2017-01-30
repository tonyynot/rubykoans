require File.expand_path(File.dirname(__FILE__) + '/neo')

# You need to write the triangle method in the file 'triangle.rb'
require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
def triangle(a, b, c)
  # WRITE THIS CODE
  raise TriangleError, "Sides have to be greater than zero" if (a == 0) | (b == 0) | (c == 0)
  raise TriangleError, "Sides have to be a postive number" if (a < 0) | (b < 0) | (c < 0)
  raise TriangleError, "Two sides can never be less than the sum of one side" if ((a + b) < c) | ((a + c) < b) | ((b + c) < a)
  raise TriangleError, "Two sides can never be equal one side" if ((a + b) ==  c) | ((a + c) ==  b) | ((b + c) ==  a)
  return :equilateral if (a == b) & (a == c) & (b == c)
  return :isosceles if (a == b) | (a == c) | (b == c)
  return :scalene

end
end
