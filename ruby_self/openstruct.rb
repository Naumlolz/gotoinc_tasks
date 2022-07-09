require 'ostruct'

atomic_underwater_v = OpenStruct.new rockets: rand(100), torpedoes: rand(40)
p atomic_underwater_v

rocket_cruiser = OpenStruct.new rockets: rand(50)
p rocket_cruiser
