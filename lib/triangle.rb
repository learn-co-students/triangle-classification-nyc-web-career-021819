require 'pry'
class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
      @a = a
      @b = b
      @c = c
  end


  def triangle?
    arr = [a, b, c].sort
    if arr.all? {|l| l > 0 } && arr[0] + arr[1] > arr[2]
    else
      raise TriangleError
    end
  end


  def triangle_type
    arr = [a, b, c].sort
    if arr[0] == arr[2]
      :equilateral
    elsif arr[0] == arr[1] || arr[1] == arr[2]
      :isosceles
    else
      :scalene
    end
  end

  def kind
    if self.triangle?
        raise TriangleError
    else
      self.triangle_type
    end
  end

   class TriangleError < StandardError
      def message
        "Oops, this is not a triangle ~!"
      end
    end
end
