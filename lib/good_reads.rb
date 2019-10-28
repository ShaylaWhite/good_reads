require_relative "./good_reads/version"
require_relative "./good_reads/cli"
require_relative "./good_reads/title"
require_relative "./good_reads/scraper"

require 'pry'
require 'nokogiri'
require 'open-uri'

module GoodReads
  class Error < StandardError; end
  # Your code goes here...
end
