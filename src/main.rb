require_relative "classes/name"
require_relative "methods/greeting"
require_relative "classes/cities"
require_relative "methods/choose_vehicle"
require_relative "classes/fuel_consumption"
require_relative "methods/know_more"
require "lolize"
logo
greeting
#get user's name 
user_name_count = 0
while user_name_count < 3
    user_name = gets.strip.capitalize
    if user_name != ""
        break
    else 
        user_name_count += 1
        if user_name_count == 3
            puts "\n Hi there!".colorize(:yellow)
            user_name = "Mysterious one!"
            puts
            puts user_name.colorize(:green)
        else
            puts "Plese enter your name: ".colorize(:yellow)
        end
    end
end
motorcylist = User.new(user_name)
puts
puts "Let's get going #{motorcylist.name}!".colorize(:light_blue)
puts
puts "Where would you like to travel today? Or select \"Exit\" to quit".colorize(:light_blue)
puts
#select the travel destinations
while true 
    destination = TTY::Prompt.new.select("Please select from the following options:",  cycle: true, marker: '->', echo: false) do |places|
        places.choice('Melbourne', 1)
        places.choice('Sydney', 2 )
        places.choice('Perth', 3)
        places.choice('Cairns', 4)
        places.choice('Exit', 5)
        case destination
        when 1
            melbourne = Cities.new("Melbourne","This is the most liveable city in the world!", 2200)
            puts
            puts melbourne.confirmation.colorize(:light_blue)
            puts
            puts melbourne.display_feature.colorize(:light_blue)
            puts
            puts melbourne.display_distance.colorize(:light_blue)
            puts
            choose_vehicle
        when 2
            sydney = Cities.new("Sydney","Here is where you get to see the Opera House!", 1100)
            puts
            puts sydney.confirmation.colorize(:light_blue)
            puts
            puts sydney.display_feature.colorize(:light_blue)
            puts
            puts sydney.display_distance.colorize(:light_blue)
            puts
            choose_vehicle
        when 3
            perth = Cities.new("Perth","The capital of Western Australia", 4100)
            puts
            puts perth.confirmation.colorize(:light_blue)
            puts
            puts perth.display_feature.colorize(:light_blue)
            puts
            puts perth.display_distance.colorize(:light_blue)
            puts
            choose_vehicle
        when 4
            cairns = Cities.new("Cairns","What a beautiful city, the number one city in Far North Queensland with a world wonder - The Barrier Reef", 1600)
            puts
            cairns.confirmation.colorize(:light_blue)
            puts
            cairns.display_feature.colorize(:light_blue)
            puts
            cairns.display_distance.colorize(:light_blue)
            puts
            choose_vehicle
        when 5
            puts
            puts "Thank you #{user_name}!".colorize(:light_blue)
            puts
            puts "I hope to see you on the road soon!".colorize(:light_blue)
            exit
        end
    end 
end