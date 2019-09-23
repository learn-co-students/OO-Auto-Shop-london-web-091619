class CarOwner
@@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def owned_cars
    Car.all.select{|car| car.owner == self}
  end

  def mechanic_list
    owned_cars.map{|car| car.mechanic}
  end

  def self.average_cars
    Car.all.length.to_f / self.all.length
  end

end
