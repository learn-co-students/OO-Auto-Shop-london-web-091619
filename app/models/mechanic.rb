class Mechanic
  attr_reader :name, :specialty

  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def initialize(name:, specialty:)
    @name = name
    @specialty = specialty
    save
  end

  def begin_servicing_car(car)
    car.mechanic = self
  end

  def current_jobs
    Car.all.select { |car| car.mechanic.eql?(self) }
  end

  def current_clients
    current_jobs.map(&:owner).uniq
  end

  def current_client_names
    current_jobs.map(&:owner).uniq.map(&:name)
  end
end
