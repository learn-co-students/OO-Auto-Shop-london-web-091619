class CarOwner
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end

  def self.average_cars
    all.map(&:owned_cars).map(&:count).reduce(:+) / all.count.to_f
  end

  def save
    self.class.all << self
  end

  def initialize(name)
    @name = name
    save
  end

  def buy_car(make:, model:, classification:)
    car = Car.new(make: make, model: model, classification: classification)
    car.owner = self
    car
  end

  def owned_cars
    Car.all.select { |car| car.owner.eql?(self) }
  end

  def hire_mechanic(car:, mechanic:)
    car.mechanic = mechanic
  end

  def current_mechanics
    owned_cars.map(&:mechanic).uniq.reject { |mechanic| mechanic.eql?(nil) }
  end
end
