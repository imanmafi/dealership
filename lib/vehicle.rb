class Vehicle
  @@all_vehicles = []

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
  end

  def make
    @make
  end

  def model
    @model
  end

  def year
    @year
  end

  def save 
    @@all_vehicles << self
  end

  define_singleton_method(:all) do
    @@all_vehicles
  end

  define_singleton_method(:clear) do
    @@all_vehicles = []
  end


end
