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


    describe('#model') do
      it("returns the model of the vehicle") do
        test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
        test_vehicle.save
        expect(test_vehicle.model).to(eq("Elantra"))
      end
    end

  describe('#year') do
    it("returns the year of the vehicle") do
        test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
        test_vehicle.save
        expect(test_vehicle.year).to(eq(2010))
      end
    end
  end

  describe('#save') do
    it("saves a vehicle to the Vehicle array") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(Vehicle.all).to(eq([test_vehicle]))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Vehicle.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears vehicles array") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      Vehicle.clear()
      expect(Vehicle.all).to(eq([]))
    end
  end

  describe('#age') do
    it("returns the vehicle age") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(test_vehicle.age).to(eq(5))
    end
  end

  describe('#worth_buying?') do
    it("says if car is worth buying") do
      test_vehicle = Vehicle.new("Hyundai", "Elantra", 2010)
      test_vehicle.save
      expect(test_vehicle.worth_buying?).to(eq(true))
    end
  end
end
