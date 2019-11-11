class GoodReads::Books
    @@all = ['S','D', 'D']
  
  attr_accessor :name
  
  def self.scraper
     doc = Nokogiri::(open("https://www.goodreads.com/genres/art"))
  end
  
  def initialize(name)
    @name = name 
    save
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
end
  