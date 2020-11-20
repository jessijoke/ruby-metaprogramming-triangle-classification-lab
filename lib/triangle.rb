class Triangle
  attr_reader :equilateral, :isosceles, :scalene
  # write code here
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <= 0 || !@x || !@y || !@z || (@x + @y) <= @z || (@y + @z) <= @x || (@z + @x) <= @y
      raise TriangleError
    end
      return :equilateral if @x == @y && @x == @z && @y == @z
      return :isosceles if @x == @y || @x == @z || @y == @z
      return :scalene if @x != @y && @x != @z && @y != @z
      
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
