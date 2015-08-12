require('rspec')
require('vehicle')

describe(Vehicle) do
  before do
    Vehicle.clear
  end

  describe('#make') do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(test_vehicle.make).to(eq("Hyundai"))
    end

    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(test_vehicle.model).to(eq("Elantra"))
    end

    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(test_vehicle.year).to(eq(2010))
    end
  end
end
