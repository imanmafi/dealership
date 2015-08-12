require('rspec')
require('dealership')

describe(Dealership) do
  before do
    Dealership.clear
  end

  describe('#name') do
    it("returns the name of the dealership") do
      new_dealership = Dealership.new("Iman's Cars and Stuff")
      expect(new_dealership.name).to(eq("Iman's Cars and Stuff"))
    end
  end

  describe('.all') do
    it ("returns empty array at first") do
      expect(Dealership.all).to(eq([]))
    end
  end

  describe('.clear') do
    it ("clears array") do
      new_dealership = Dealership.new("Iman's Cars and Stuff")
      new_dealership.save
      expect(Dealership.clear).to(eq([]))
    end
  end

  describe('#save') do
    it ("saves a dealership to the array") do
      new_dealership = Dealership.new("Iman's Cars and Stuff")
      new_dealership.save
      expect(Dealership.all).to(eq([new_dealership]))
    end
  end

  describe('#id') do
    it("returns the id of the dealership") do
      new_dealership = Dealership.new("Iman's Cars and Stuff")
      new_dealership.save
      expect(new_dealership.id).to(eq(1))
    end
  end

  describe('.find') do
    it("finds a vehicle based on the id") do
      new_dealership = Dealership.new("Iman's Cars and Stuff")
      new_dealership.save
      new_dealership_2 = Dealership.new("Andrew's Crappy Vehicles")
      new_dealership_2.save
      expect(Dealership.find(new_dealership.id)).to(eq(new_dealership))
    end
  end

end
