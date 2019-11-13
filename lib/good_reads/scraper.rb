class GoodReads::Scraper
    
    #being called on the class itself and not the instance of the class
 
  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))
    results = self.scrape_site.css("div.bigBoxBody").first
    books = results.css("div.coverWrapper")  
    books
    
  self.scrape_books.each do |book|
  book = GoodReads::Books.new
  books.url = book.css("a").attr("href")
  books.title = book.css("img").attr("alt")
  books
  
  end 
 end
end