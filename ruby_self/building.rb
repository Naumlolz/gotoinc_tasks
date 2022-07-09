# class which makes buildings with floors
class Building
  attr_reader :floors

  def description
    'New house with 6 floors'
  end

  def build
    @floors = Floor.new
  end

  # class which makes floors with params
  class Floor
    FLOORS = 6
    HEIGHT = 3
    WIDTH = 4

    def number_of_floors
      FLOORS
    end

    def height
      "#{HEIGHT} meters"
    end

    def width
      WIDTH
    end
  end
end

building = Building.new
building.build

puts building.description
puts building.floors.number_of_floors
puts building.floors.height
puts building.floors.width
