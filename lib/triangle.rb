class Triangle
  attr_accessor :s1_length, :s2_length, :s3_length
  # write code here
  def initialize(s1_length, s2_length, s3_length)
    # if s1_length == 0 || s2_length == 0 || s3_length == 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error 
    #     puts error.no_length_message
    #   end
    # elsif s1_length < 0 || s2_length < 0 || s3_length < 0
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error 
    #     puts error.neg_length_message
    #   end
    # else
    @s1_length = s1_length
    @s2_length = s2_length
    @s3_length = s3_length
    @lengths = [s1_length, s2_length, s3_length].sort.reverse
  end

  def kind
    if s1_length == 0 || s2_length == 0 || s3_length == 0
      # begin
        raise TriangleError
      # rescue TriangleError => error 
      #   puts error.no_length_message
      # end
    elsif s1_length < 0 || s2_length < 0 || s3_length < 0
      # begin
        raise TriangleError
      # rescue TriangleError => error 
      #   puts error.neg_length_message
      # end
    elsif @lengths[0] >= @lengths[1] + @lengths[2] 
      raise TriangleError
      #length of any two sides must add up to length of third
    elsif @lengths[0] == @lengths[1] && @lengths[0]  == @lengths[2]
      :equilateral
    elsif @lengths[0] == @lengths[1] && @lengths[0] > @lengths[2]
      :isosceles
    elsif @lengths[0] != @lengths[1] && @lengths[0] != @lengths[2] && @lengths[1] != @lengths[2]
      :scalene
    end
   end

  class TriangleError < StandardError
    #invalid if no lengths
    def no_length_message
      puts "I'm sorry, you must enter a length for each side"
    end
    #invalid if negative lengths
    def neg_length_message
      puts "I'm sorry, all lengths must be positive"
    end

    #anything else?

  end

end
