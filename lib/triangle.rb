class Triangle
  # write code here

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @kind = kind
  end

  def valid
    a + b > c and a + c > b and b + c > a
  end


  def kind
    if !self.valid
      raise TriangleError 

    elsif a == b and b == c
      return :equilateral

    elsif a != b and b !=c and c != a
      return :scalene
    
    else
      return :isosceles
    end

  end

  class TriangleError < StandardError
    
  end
end
