class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def find_services
  Car.all.select{|car| car.mechanic == self}
end

def find_clients
  find_services.map{|car|car.owner}.uniq
end

def find_clients_names
  find_clients.map{|owner| owner.name}
end




end
