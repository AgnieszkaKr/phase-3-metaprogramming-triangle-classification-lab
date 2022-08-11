class Triangle

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if @one <= 0 || @one <= 0 || @three <= 0
      raise TriangleError 
    elsif @one == @two && @one == @three
      :equilateral
    elsif @one == @two || @one == @three || @two == @three
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
     "Invalid size of triangle"
    end
  end


end
