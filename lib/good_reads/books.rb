class GoodReads::Books
   attr_accessor :title, :url
  
  #being called on the class itself and not the instance of the class
  def self.all 
   self.scrape_books
  end
 
  def self.scrape_books
    all = []
    
    all << self.scrape_title_url
    
    all
  end
 
 
  def self.scrape_title_url
    
  doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))

  book = self.new
  

  results = doc.css("div.bigBoxBody").first
  book = results.css("div.coverWrapper")  
  url = book.css("a").attr("href")
  title = book.css("img").attr("alt")
 end 
end
  