# class which describes vessels
class Vessel
  attr_accessor :type, :length, :height

  def initialize(type, length, height)
    @type = type
    @length = length
    @height = height
  end
end

# class which describes surface vessels
class SurfaceVessel < Vessel
  attr_accessor :displacement

  def initialize(draught, deadweight, displacement, crane, hold)
    super(type, length, height)
    @draught = draught
    @deadweigth = deadweigth
    @displacement = displacement
    @crane = crane
    @hold = hold
  end
end

# class which describes underwater vessels
class UnderWaterVessel < Vessel
  attr_accessor :immersion_depth

  def initialize(type, length, height, immersion_depth, rockets, torpedoes)
    super(type, length, height)
    @immersion_depth = immersion_depth
    @rockets = rockets
    @torpedoes = torpedoes
  end
end
