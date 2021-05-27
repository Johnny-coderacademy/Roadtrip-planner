require "tty-progressbar"
def progressbar
    puts
    bar = TTY::ProgressBar.new("Processing [:bar]", total: 25)
    25.times do
        sleep(0.1)
        bar.advance  # by default increases by 1
    end

end