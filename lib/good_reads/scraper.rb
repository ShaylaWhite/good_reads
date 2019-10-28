class GoodReads::Scraper
  def title_scarper
    doc = Nokogiri::(open("https://www.goodreads.com/genres/art"))
  end
  
  def self.get_books
     GoodReads::Title.new("title") 
     GoodReads::Title.new("good") 
  end
end 