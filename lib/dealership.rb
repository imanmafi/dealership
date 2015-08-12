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

end
