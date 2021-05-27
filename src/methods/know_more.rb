require "tty-prompt"
def know_more
    prompt = TTY::Prompt.new
    option = prompt.select("Would you like to know more?", %w(Yes No),marker: '->')
    case option
    when "Yes"
        progressbar
        puts "\nOops! Sorry ...please wait for the coming update Roadtrip Planner 2.0\n".colorize(:light_blue)
    when "No"
        puts "\nThank you for choosing Roadtrip Planner 1.0! Hope to see you on the road soon!\n".colorize(:light_blue)
        exit
    end
end