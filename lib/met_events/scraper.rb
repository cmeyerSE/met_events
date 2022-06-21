class MetEvents::Scraper
    def self.scrape_days
        doc = Nokogiri::HTML(open("https://www.metmuseum.org/events/whats-on?startDate=2022-07-01&endDate=2022-07-31&tab=Events&page=1"))

        days = doc.css("#attendables-search-app")
        days.each do |d|
            name = d.text
            MetEvents::Day.new(name)
        end
    end
end
