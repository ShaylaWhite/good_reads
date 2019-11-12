class GoodReads::Scraper
    
    #being called on the class itself and not the instance of the class
 
  def self.scrape_site
    doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))
  end
  
  #scraping the books off the site
  
  def self.scrape_books
    results = self.scrape_site.css("div.bigBoxBody").first
    books = results.css("div.coverWrapper")  
    books
  end
 
 #creating a new books and giving each book instance a title and url
   
  def self.get_title_url
    
  self.scrape_books.each do |book|
  book = GoodReads::Books.new
  books.url = book.css("a").attr("href")
  books.title = book.css("img").attr("alt")
  books
  
  end 
 end
end