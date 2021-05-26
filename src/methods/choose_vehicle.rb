require "tty-prompt"

def choose_vehicle_to_melbourne
    car = Car.new(0.7)
    motorbike = Motorbike.new(0.4)

    prompt = TTY::Prompt.new
    selection = prompt.select("How would you like to travel?", %w(Car Motorbike))
    puts
    case selection
    when "Car"
        puts car.show_fuel_consumption
        puts
        puts car.show_total_fuel_cost_melbourne
        puts
        exit 
    when "Motorbike"
        puts motorbike.show_fuel_consumption 
    end

end