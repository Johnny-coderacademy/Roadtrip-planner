require "tty-prompt"
def know_more
    prompt = TTY::Prompt.new
    option = prompt.select("Would you like to know more?", %w(Yes No))
    case option
    when "Yes"
        puts "Here are some more financial detail for your trip!"
    when "No"
        puts "Thank you for choosing Roadtrip Planner! Hope to see you on the road soon!"
        exit
    end
end