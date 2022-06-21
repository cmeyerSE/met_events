class MetEvents::CLI
    @@muted="\e[1;31m"
    @@grn="\e[1;32m"
    @@blue="\e[1;34m"
    @@mag="\e[1;35m"
    @@cyn="\e[1;36m"
    @@white="\e[0m"

    def call
        puts "\n#{@@grn}Welcome to The Metropolitan Museum of Art!#{@@white}\n"
        get_days
        list_days
        get_user_day
    end

    def get_days
        #to be scraped for days where events are listed
        @days = MetEvents::Day.all
    end

    def list_days
        puts "#{@@mag}Choose a day to see event#{@@white}"
        #list days
        @days.each.with_index(1) do |day, index|
            puts "#{index}. #{day.name}"
        end
    end

    def get_user_day
        chosen_day = gets.strip.to_i
        show_events_for(chosen_day) if valid_input(chosen_day, @days)
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end

    def show_events_for(chosen_day)
        day = @days[chosen_day.to_i - 1]
        puts "Events for #{day.name}"
    end
end