require "tty-prompt"
#require_relative "methods/know_more"

def choose_vehicle
    car = Car.new(0.7)
    motorbike = Motorbike.new(0.4)
    prompt = TTY::Prompt.new
    selection = prompt.select("How would you like to travel?", %w(Car Motorbike),marker: '->')
    puts
    case selection
    when "Car"
        puts car.show_fuel_consumption.colorize(:light_blue)
        puts
        know_more
        puts
    when "Motorbike"
        puts motorbike.show_fuel_consumption.colorize(:light_blue)
        puts
        know_more
        puts
    end

end