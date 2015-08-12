class Dealership

  @@all_dealerships = []

  def initialize(name)
    @name = name
    @id = @@all_dealerships.length + 1
    @cars = []
  end

  def name
    @name
  end

  def id
    @id
  end

  def cars
    @cars
  end

  def save
    @@all_dealerships << self
  end

  define_singleton_method(:all) do
    @@all_dealerships
  end

  define_singleton_method(:clear) do
    @@all_dealerships = []
  end

  define_singleton_method(:find) do |identification|
    found_dealership = nil
    @@all_dealerships.each do |dealership|
      if dealership.id == identification
        found_dealership = dealership
      end
    end
    found_dealership
  end

  def add_vehicle(vehicle)
    @cars << vehicle
  end

end
