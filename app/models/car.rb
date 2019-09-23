class Car
  attr_accessor :mechanic, :owner
  attr_reader :make, :model, :classification

  @@all = []

  def self.all
    @@all
  end

  def self.classifications
    all.map(&:classification).uniq
  end

  def save
    self.class.all << self
  end

  def initialize(make:, model:, classification:)
    @make = make
    @model = model
    @classification = classification
    save
  end

  def suitable_mechanics
    Mechanic.all.select { |mechanic| mechanic.specialty.eql?(classification) }
  end
end
