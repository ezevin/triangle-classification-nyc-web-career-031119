class Triangle
  # write code here

  attr_accessor :side_a, :side_b, :side_c, :side_d
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
    @side_d = side_d
  end

  def kind
    if side_a <=0 || side_b <=0 || side_c <= 0
      raise TriangleError
    elsif side_a + side_b <= side_c || side_b + side_c <= side_a || side_a + side_c <= side_b
      raise TriangleError
    elsif side_a == side_b && side_a == side_c
      :equilateral
    elsif side_a == side_b || side_a == side_c || side_b == side_c
      :isosceles
    elsif side_a != side_b && side_b != side_c && side_b != side_c
      :scalene
    end
  end

  # def error
  #   if side_a == side_d
  #     begin
  #       raise TriangleError
  #   rescue TriangleError => error
  #         puts error.message
  #       end
  #     end
  # end

  class TriangleError < StandardError
    def message
      "Invalid"
    end
  end

end
