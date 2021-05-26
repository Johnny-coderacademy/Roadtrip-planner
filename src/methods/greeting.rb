require "tty-prompt"
require "artii"
require "colorize"
require "lolize"

def logo
    logo = Artii::Base.new
    colorizer = Lolize::Colorizer.new
    colorizer.write logo.asciify("Roadtrip Planner! v 1.0")#.colorize(:yellow)
end

def greeting
    puts
    puts "Wanting to have a roadtrip? You have come to the right place!".colorize(:yellow)
    print "We are here in Brisbane, please enter your name: ".colorize(:yellow)
end