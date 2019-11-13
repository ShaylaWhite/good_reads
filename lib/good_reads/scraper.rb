class GoodReads::Scraper
    
    #being called on the class itself and not the instance of the class
 
  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))
    results = doc.css("div.bigBoxBody").first
    books = results.css("div.coverWrapper")  
  
    
  books.each do |book|
  
  books.url = book.css("a").attr("href")
  books.title = book.css("img").attr("alt")
  books = GoodReads::Books.new(title, url)
  
  end 
 end
end