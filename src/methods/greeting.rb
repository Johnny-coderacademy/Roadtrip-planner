require "tty-prompt"
require "artii"
require "colorize"
require "lolize"

def logo
    logo = Artii::Base.new
    colorizer = Lolize::Colorizer.new
    colorizer.write logo.asciify("Roadtrip Planner! 1.0")#.colorize(:yellow)
end

def greeting
    puts "\nWanting to have a road trip? You have come to the right place!".colorize(:light_blue)
    print "\nWe are here in Brisbane, please enter your name: ".colorize(:light_blue)
end