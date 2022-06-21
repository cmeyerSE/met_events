# frozen_string_literal: true

require_relative "met_events/version"
require_relative "met_events/cli"
require_relative "met_events/day"
require_relative "met_events/scraper"

require 'pry'
require 'nokogiri'


module MetEvents
  class Error < StandardError; end
  # Your code goes here...
end
