class Vehicle
  @@all_vehicles = []

  def initialize(make, model, year)
    @make = make
    @model = model
    @year = year
    @id = @@all_vehicles.length + 1
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

  def age
    this_year = Time.now.year
    age = this_year - @year
    age
  end

  def worth_buying?
    korean_cars = ["Kia", "Hyundai", "Kim Jung Un"]
    korean_cars.include?(@make) && age < 15
  end

  def id
    @id
  end

  define_singleton_method(:find) do |identification|
    found_vehicle = nil
    @@all_vehicles.each do |vehicle|
      if vehicle.id == identification.to_i
        found_vehicle = vehicle
      end
    end
    found_vehicle
  end

end
