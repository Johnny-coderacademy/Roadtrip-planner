require_relative "classes/name"
require_relative "methods/greeting"
require_relative "classes/cities"
require_relative "methods/choose_vehicle"
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
puts "Let's get going #{motorcylist.name}!".colorize(:green)
puts "Where would you like to travel today? Or select \"Exit\" to quit".colorize(:green)
#select the travel destinations
while true 
    selection = TTY::Prompt.new.select("Please select from the following options:",  cycle: true, marker: '>', echo: false) do |places|
        places.choice('Melbourne', 1)
        places.choice('Sydney', 2 )
        places.choice('Perth', 3)
        places.choice('Cairns', 4)
        places.choice('Exit', 5)
        case selection
        when 1
            melbourne = Cities.new("Melbourne","This is the most liveable city in the world!", 2200)
            melbourne.display_distance  
            choose_vehicle
        when 2
            sydney = Cities.new("Sydney","Here is where you get to see the Opera House!", 1100)
            sydney.display_distance
            
        when 3
            perth = Cities.new("Perth","The capital of Western Australia", 4100)
            perth.display_distance
        when 4
            cairns = Cities.new("Cairns","What a beautiful city, the number one city in Far North Queensland with a world wonder - The Barrier Reef", 1600)
            cairns.display_distance
        when 5
            puts "Thank you #{user_name}!".colorize(:green)
            puts "I hope to see you on the road soon!".colorize(:green)
            exit
        end
    end 
end