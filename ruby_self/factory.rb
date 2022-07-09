# class which makes typ depending on parameters
class Factory
  @@total = 0
  @@toys = []

  def build(obj)
    obj_to_sym = obj.to_sym
    case obj_to_sym
    when :teddy_bear
      total
      @@toys << TeddyBear.new
    when :ball
      total
      @@toys << Ball.new
    when :cube
      total
      @@toys << Cube.new
    end
  end

  def total
    @@total += 1
  end

  def offers
    @@toys.map(&:type).each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end

  # created teddy_bear
  class TeddyBear
    def type
      'teddy_bear'
    end
  end

  # created ball
  class Ball
    def type
      'ball'
    end
  end

  # created cube
  class Cube
    def type
      'cube'
    end
  end
end

factory = Factory.new
factory.build('teddy_bear')
factory.build('ball')
factory.build('ball')
factory.build('ball')
factory.build('cube')
factory.build('cube')

puts factory.offers
puts factory.total
