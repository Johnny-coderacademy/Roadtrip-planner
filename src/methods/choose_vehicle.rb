require "tty-prompt"
#require_relative "methods/know_more"

def choose_vehicle
    car = Car.new(0.7)
    motorbike = Motorbike.new(0.4)
    prompt = TTY::Prompt.new
    selection = prompt.select("How would you like to travel?", %w(Car Motorbike),marker: '->')
    case selection
    when "Car"
        puts car.show_fuel_consumption.colorize(:light_blue)
        know_more
    when "Motorbike"
        puts motorbike.show_fuel_consumption.colorize(:light_blue)
        know_more
    end

end