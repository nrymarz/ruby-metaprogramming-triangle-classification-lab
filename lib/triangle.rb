class Triangle
  class TriangleError < StandardError
  end
  def initialize(num1,num2,num3)
    @s1 = num1
    @s2 = num2
    @s3 = num3
  end
  def kind
    sides = [@s1,@s2,@s3].sort
    if sides[2]<sides[0]+sides[1] && sides[0]>0
      if sides[0] == sides[2]
        :equilateral
      elsif sides[0] == sides[1] || sides[1]==sides[2]
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end
end
