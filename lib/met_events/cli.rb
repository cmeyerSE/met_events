class MetEvents::CLI
    def call
        puts "\nWelcome to The Metropolitan Museum of Art!\n"
        get_days
        list_days
        get_user_day
        #get_events_for(day) 
    end

    def get_days
        #to be scraped for days where events are listed
        @days = ['1st', '4th', '7th', '13th', '21st']
    end

    def list_days
        puts 'Choose a day to see event'
        #list days
        @days.each.with_index(1) do |day, index|
            puts "#{index}. #{day}"
        end
    end

    def get_user_day
        chosen_day = gets.strip
        binding.pry
        # if valid_input(chosen_day, @days)
        # end
    end

    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end
end