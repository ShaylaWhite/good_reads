class GoodReads::Books
  @@all = []
  
  attr_accessor :title
  
  #using a instance variable because the hook method initializes & a new title for every instance created.
  
  def intialize(title)
    @title = title 
    save
  end

 def self.all #being called on the class itself and not the instance.
    GoodReads::Scraper.scrape_books if 
   @@all
 end
 
 def save
   @@all << self
 end

end
  