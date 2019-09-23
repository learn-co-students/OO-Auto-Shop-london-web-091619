require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(make: 'make1', model: 'model1', classification: 'classi1')
car2 = Car.new(make: 'make2', model: 'model2', classification: 'classi2')
car3 = Car.new(make: 'make3', model: 'model3', classification: 'classi3')
car4 = Car.new(make: 'make3', model: 'model3', classification: 'classi3')

owner1 = CarOwner.new('owner1')
owner2 = CarOwner.new('owner2')

owner1.buy_car(car1)
owner1.buy_car(car2)
owner2.buy_car(car3)

mechanic1 = Mechanic.new(name: 'mech1', specialty: 'classi1')
mechanic2 = Mechanic.new(name: 'mech2', specialty: 'classi2')
mechanic3 = Mechanic.new(name: 'mech3', specialty: 'classi2')

owner1.hire_mechanic(car: car1, mechanic: mechanic1)

binding.pry
0
