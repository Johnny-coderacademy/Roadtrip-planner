class Vehicle
    attr_accessor :fuel_consumption

    def initialize(fuel_consumption)
        @fuel_consumption = fuel_consumption
    end
    
end

class Car < Vehicle
    def initialize(fuel_consumption)
        @name = "car"
        super(fuel_consumption)
    end

    def show_fuel_consumption
        return "The fuel consumption of your selected vehicle - #{@name} is #{@fuel_consumption}ltr/100km"
    end

    def show_total_fuel_cost_melbourne
        return "The total cost for a car trip to Melbourne will be $#{@fuel_consumption*6000}"
    end
    
end

class Motorbike < Vehicle
    
    def initialize(fuel_consumption)
        @name = "motorbike"
        super(fuel_consumption)
    end

    def show_fuel_consumption
        return "The fuel consumption of your selected vehicle - #{@name} is #{@fuel_consumption}/100km"
    end
end