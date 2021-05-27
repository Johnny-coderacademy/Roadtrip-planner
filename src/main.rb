#required classes
require_relative "classes/name"
require_relative "classes/cities"
require_relative "classes/fuel_consumption"
#required methods
require_relative "methods/choose_vehicle"
require_relative "methods/greeting"
require_relative "methods/know_more"
require_relative "methods/calculator"
require_relative "methods/progress_bar"
#required gems
require "lolize"
#logo & greeting message
logo
greeting
#get user's name 
user_name_count = 0
while user_name_count < 3 #allow users 3 attemps
    user_name = gets.strip.capitalize
    if user_name != ""
        break
    else 
        user_name_count += 1
        if user_name_count == 3
            puts "\n Hi there!\n".colorize(:light_blue)
            user_name = "Mysterious one"
            puts user_name.colorize(:green)
        else
            puts "\nPlease enter your name: ".colorize(:yellow)
        end
    end
end
motorcylist = User.new(user_name)
puts "\nLet's get going #{motorcylist.name}!\n".colorize(:light_blue)
puts "Where would you like to travel today? OR select \"Exit\" to quit\n".colorize(:light_blue)
#select the travel destinations
while true #loop used to ask questions until user exit program
    destination = TTY::Prompt.new.select("Please select from the following options:",  cycle: true, marker: '->', echo: false) do |places| #display city options
        places.choice('Melbourne', 1)
        places.choice('Sydney', 2 )
        places.choice('Perth', 3)
        places.choice('Cairns', 4)
        places.choice('Fuel Calculator', 5)
        places.choice('Exit', 6)
        case destination
        when 1
            melbourne = Cities.new("Melbourne","This is the most liveable city in the world!", 2200)
            puts melbourne.confirmation.colorize(:light_blue)
            puts melbourne.display_feature.colorize(:light_blue)
            puts melbourne.display_distance.colorize(:light_blue)
            choose_vehicle
        when 2
            sydney = Cities.new("Sydney","Here is where you get to see the Opera House!", 1100)
            puts sydney.confirmation.colorize(:light_blue)
            puts sydney.display_feature.colorize(:light_blue)
            puts sydney.display_distance.colorize(:light_blue)
            choose_vehicle
        when 3
            perth = Cities.new("Perth","The capital of Western Australia", 4100)
            puts perth.confirmation.colorize(:light_blue)
            puts perth.display_feature.colorize(:light_blue)
            puts perth.display_distance.colorize(:light_blue)
            choose_vehicle
        when 4
            cairns = Cities.new("Cairns","What a beautiful city, the number one city in Far North Queensland with a world wonder - The Barrier Reef", 1600)
            cairns.confirmation.colorize(:light_blue)
            cairns.display_feature.colorize(:light_blue)
            cairns.display_distance.colorize(:light_blue)
            choose_vehicle
        when 5
            fuel_calculator
        when 6
            puts "\nThank you #{user_name}!\n".colorize(:light_blue)
            puts "I hope to see you on the road soon!\n".colorize(:light_blue)
            exit
        end
    end 
end