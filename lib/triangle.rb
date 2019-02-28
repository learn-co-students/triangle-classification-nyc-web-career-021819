require 'pry'

class Triangle
  attr_accessor :hypotenuse, :opposite, :adjacent

  def initialize(hypotenuse, opposite, adjacent)
    @hypotenuse = hypotenuse
    @opposite = opposite
    @adjacent = adjacent
    raise TriangleError unless self.valid
  end

  def kind
    if self.adjacent == self.opposite && self.opposite == self.hypotenuse
      return :equilateral
    elsif self.adjacent == self.opposite || self.opposite == self.hypotenuse || self.adjacent == self.hypotenuse
      return :isosceles
    else
      return :scalene
    end
  end

  def valid
    if self.hypotenuse + self.opposite <= self.adjacent || self.hypotenuse + self.adjacent <= self.opposite || self.opposite + self.adjacent <= self.hypotenuse
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
      return false
    else
      return true
    end
  end


  class TriangleError < StandardError
    def message
      "Invalid triangle"
    end
  end

  # binding.pry
  # "q"

end
