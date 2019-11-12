class GoodReads::Scraper
  
  def scrape_books
    doc = Nokogiri::HTML(open("https://www.goodreads.com/genres/art"))
  end
end