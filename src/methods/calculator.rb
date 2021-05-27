require "colorize"
require "tty-progressbar"
def fuel_calculator
    puts
    puts "Enter the number of kilometres that you will travel\n".colorize(:light_blue)
    km = gets.to_i
    puts "\nEnter engine capacity per 100 kms:  \n".colorize(:light_blue)
    cc = gets.to_i
    #Handling Zero Division Error
    begin
        total_fuel = km / cc
        progressbar
        puts "\nyou will need #{total_fuel} ltrs of fuel for your trip!\n".colorize(:light_blue)
    rescue ZeroDivisionError
        puts "\nPlease enter a number that is greater than zero!\n".colorize(:light_blue)
        puts "Try again!\n".colorize(:light_blue)
    end
end