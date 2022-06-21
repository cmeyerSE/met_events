class MetEvents::Day
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        MetEvents::Scraper.scrape_days if @@all.empty?
        @@all
    end

    def save
        @@all << self
    end

end