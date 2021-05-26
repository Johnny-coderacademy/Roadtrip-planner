require "tty-prompt"

def choose_vehicle
    
    prompt = TTY::Prompt.new
    selection = prompt.select("How would you like to travel?", %w(Car Motorbike))
    case selection
    when "Car"
        puts car.show_fuel_consumption
        exit #"Cars consume 0.7 litre per 100 kms "
    when "Motorbike"
        puts motorbike.show_fuel_consumption 
    end

end