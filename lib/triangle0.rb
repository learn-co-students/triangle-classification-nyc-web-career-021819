class Triangle
  attr_accessor :a, :b, :c


  def initialize(a, b, c)
        @a = a
        @b = b
        @c = c
  end


  def



  class TriangleError < StandardError
    def message
      "Sorry, this is not a triangle"
    end
  end


  def kind
    hash = {}
    if (self.side1 == self.side2) & (self.side2 == self.side3) & (self.side1 == self.side3)
        hash[:equilateral] = self
        hash.map do |key, val|
          return key
        end
      elsif self.side1 == self.side2 || self.side2 ==    self.side3 || self.side1 == self.side3
        hash[:isosceles] = self
        hash.map do |key, val|
          return key
        end
      elsif (self.side1 != self.side2) & (self.side2 != self.side3) & (self.side1 != self.side3)
        hash[:scalene] = self
        hash.map do |key, val|
          return key
        end
    end
  end


end
