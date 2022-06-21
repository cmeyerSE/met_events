class MetEvents::CLI
    def call
        puts "\nWelcome to The Metropolitan Museum of Art!\n"
        get_days
        list_days
        get_user_day
    end

    def get_days
        #to be scraped for days where events are listed
        MetEvents::Day.new("july 12")
        MetEvents::Day.new("july 23")
        @days = MetEvents::Day.all
    end

    def list_days
        puts 'Choose a day to see event'
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
        puts "Events for #{day}"
    end
end