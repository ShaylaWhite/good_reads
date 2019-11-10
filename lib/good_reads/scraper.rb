class GoodReads::Scraper
 
  
  def self.scraper
     doc = Nokogiri::(open("https://www.goodreads.com/genres/art"))
  end
end 