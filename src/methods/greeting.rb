require "tty-prompt"
require "artii"
require "colorize"
require "lolize"

def greeting
    logo = Artii::Base.new
    puts logo.asciify("Roadtrip Planner! v 1.0").colorize(:yellow)
end