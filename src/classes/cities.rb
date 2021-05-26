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

        return "* You have selected #{@city} for your destination"

    end

    def display_feature

        return "* What a great choice! #{@description}"

    end

    def display_distance
      
        return "* Your estimated travel distance is #{@distance} kms"
      
    end

end
