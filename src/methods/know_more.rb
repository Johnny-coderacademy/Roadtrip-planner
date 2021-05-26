require "tty-prompt"
def know_more
    prompt = TTY::Prompt.new
    option = prompt.select("Would you like to know more?", %w(Yes No))
    case option
    when "Yes"
        puts
        puts "Oops! Sorry ...please wait for the latest update Roadtrip Planner 2.0".colorize(:light_blue)
    when "No"
        puts
        puts "Thank you for choosing Roadtrip Planner 1.0! Hope to see you on the road soon!".colorize(:light_blue)
        exit
    end
end