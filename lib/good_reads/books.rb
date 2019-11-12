class GoodReads::Books
  
  def self.scrape
doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))
end
  