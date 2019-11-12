class GoodReads::Books
   attr_accessor :title, :url
  
  @@all = []

  def initialize(title,url)
    @title = title
    @url = url 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
  