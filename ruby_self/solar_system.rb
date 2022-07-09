# class exception
class NonExistingPlanetException < StandardError
end

# class solar system
class SolarSystem
  def mercury
    1
  end

  def venus
    2
  end

  def earth
    3
  end

  def mars
    4
  end
end

ss = SolarSystem.new
puts ss.mercury
