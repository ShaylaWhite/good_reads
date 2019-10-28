class GoodReads::Scraper
  def title_scarper
    doc = Nokogiri::(open("https://www.goodreads.com/genres/art"))
  end
end 