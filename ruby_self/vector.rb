# models vector in two-dim space
class Vector
  def initialize(b_point, e_point)
    @b_point = Vector::Point.new
    @e_point = Vector::Point.new
  end

  class Point
    attr_accessor :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end

  def distance
    Math.sqrt(
      (@e_point.x - @b_point.x)**2 +
      (@e_point.y - @b_point.y)**2
    )
  end
end

Vector.new(1, 3)
# point1 = Vector::Point.new(5, 4)
# point2 = Vector::Point.new(7, 9)
# p point1
# p point2
# puts Vector.distance(point1, point2)