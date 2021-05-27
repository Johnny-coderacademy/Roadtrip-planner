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

        return "\n* You have selected #{@city} for your destination\n"

    end

    def display_feature

        return "\n* What a great choice! #{@description}\n"

    end

    def display_distance
      
        return "\n* Your estimated travel distance is #{@distance} kms\n"
      
    end

end
