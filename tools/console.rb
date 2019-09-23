require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1 = CarOwner.new("owner1")
owner2 = CarOwner.new("owner2")
owner3 = CarOwner.new("owner3")

mechanic1 = Mechanic.new("mechanic1", "antique")
mechanic2 = Mechanic.new("mechanic2", "exotic")
mechanic3 = Mechanic.new("mechanic3", "clunker")
mechanic4 = Mechanic.new("mechanic4", "antique")

car1 = Car.new("make1", "model1", "antique", owner1, mechanic1)


binding.pry
