# Creates user with name and profession properties
class User
  attr_accessor :first_name, :last_name, :mid_name, :email

  # def initialize
  #   yield self
  # end

  def initialize(first_name, last_name, mid_name)
    @first_name = first_name
    @last_name = last_name
    @mid_name = mid_name
  end
end

# user = User.new do |u|
#   u.first_name = 'Anton'
#   u.last_name = 'Naumenkov'
#   u.mid_name = 'Yuri'
#   u.email = 'NaumE64@yandex.ru'
# end

# puts user.first_name
# puts user.last_name
# puts user.mid_name

# Creates point with x and y properties
class Point
  def set_coordinates(x_coord, y_coord)
    @x = x_coord
    @y = y_coord
  end

  def coordinates
    { x: @x, y: @y }
  end
end

point1 = Point.new
point1.set_coordinates(3, 6)
point2 = Point.new
point2.set_coordinates(-1, 5)
puts Math.sqrt(
  (point2.coordinates[:x] - point1.coordinates[:x])**2 +
  (point2.coordinates[:y] - point1.coordinates[:y])**2
)

# Creates car with type and color properties
class Car
  attr_accessor :type, :color

  def initialize(type, color)
    @type = type
    @color = color
  end
end

car1 = Car.new('1', '2')
car1.type = 'Lightweight'
car1.color = 'Black'

car2 = Car.new('3', '4')
car2.type = 'Heavyweight'
car2.color = 'Red'
