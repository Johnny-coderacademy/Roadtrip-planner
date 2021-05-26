require "tty-prompt"
require "lolize"

class Cities
    
    attr_reader  :city, :description, :distance

    def initialize(
        city,
        description,
        distance
    )
        @city = city
        @description = description
        @distance = distance
    end

    def confirmation

        puts "* You have selected #{@city} for your destination".colorize(:light_blue)

    end

    def display_distance
      
        puts "* Your estimated travel distance is #{@distance} kms".colorize(:light_blue)
      
    end

    def display_feature

        puts "* What a great choice! #{@description}".colorize(:light_blue)
        
    end

end