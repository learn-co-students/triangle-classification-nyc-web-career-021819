class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    @side1 + @side2 > @side3 && @side2 + @side3 > @side1 && @side1 + @side3 > @side2
  end

  def kind
    if valid?
      if @side1 == @side2 && @side2 == @side3 && @side3 == @side1
        return :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
