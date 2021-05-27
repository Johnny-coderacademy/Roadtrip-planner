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
        return "\nThe fuel consumption of your selected vehicle - #{@name} is #{@fuel_consumption} ltr/100km\n"
    end
    
end

class Motorbike < Vehicle
    
    def initialize(fuel_consumption)
        @name = "motorbike"
        super(fuel_consumption)
    end

    def show_fuel_consumption
        return "\nThe fuel consumption of your selected vehicle - #{@name} is #{@fuel_consumption} ltr/100km\n"
    end
end