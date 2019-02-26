require 'pry'
class Triangle
  # write code here -- needs to be float

  attr_accessor :a, :b, :c
  attr_reader :kind

  def triangle_sort(a,b,c)
    [a.to_f,b.to_f,c.to_f].sort
  end

  def valid?(a,b,c)
    array = triangle_sort(a,b,c)
    array.all? {|length| length > 0} && (array[0]+array[1]).to_f > (array[2]).to_f
  end

  def triangle_type(array)
    if (array[0].to_f == array[1].to_f) && (array[1].to_f == array[2].to_f)
      :equilateral
    elsif
      (array[0].to_f == array[1].to_f) || (array[1].to_f == array[2].to_f)
      :isosceles
    else
      :scalene
    end
  end

  def kind
    self.a = a
    self.b = b
    self.c = c
    if valid?(a,b,c)
      @kind=triangle_type(triangle_sort(a,b,c))
    else
      begin
        raise TriangleError
      #rescue TriangleError =>error
        #puts error.message
      end
    end
  end

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
    self.kind
    self
  end

  class TriangleError < StandardError
    #def message
      #"This is an invalid triangle!"
    #end
  end
end
