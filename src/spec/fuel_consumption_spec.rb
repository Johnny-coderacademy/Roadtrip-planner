require_relative '../classes/fuel_consumption'


describe "Car" do 

    car = Car.new(0.3)

    it "should return expected string for show_fuel_consumption method " do
        expected = "\nThe fuel consumption of your selected vehicle - car is 0.3 ltr/100km\n"
        expect(car.show_fuel_consumption).to eq(expected)
    end

end

describe "Motorbike" do
    
    motorbike = Motorbike.new(0.1)

    it "should return expected string for show_fuel_consumption method " do
        expected = "\nThe fuel consumption of your selected vehicle - motorbike is 0.1 ltr/100km\n"
        expect(motorbike.show_fuel_consumption).to eq(expected)
    end

end