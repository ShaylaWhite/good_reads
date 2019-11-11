require 'colorize'
class GoodReads::CLI 
  
  def call
    puts "-------------------------------------------------".underline
    puts "\n-------Hello My Fellow Art Book Readers!!--------".white.on_magenta 
    puts "-------Brace Yourself For A Few ARTSY Reads------".white.on_magenta
    puts "-------------------------------------------------".underline
    puts "\n"
    binding.pry
    list_art_books
    accept_user_selection
    goodbye
  end  
  
  def scrape_books
    @books = []
  end
  
  def list_art_books
    puts "--------------------------------------------------"
    puts "-------Here are the newly released ArtBooks-------".white.on_magenta
    puts "--------------------------------------------------"
    
    @books.each_with_index do |index, month|
      puts "#{index +1} #{month}"
    end
  
    
  end
  
  def accept_user_selection(book)
    puts "--------------------------------------------------"
    puts "-----What's your book selection? Enter the'#'-----".white.on_magenta
    puts "--------------------------------------------------"
    
  end
  
  
  def goodbye
    puts "--------------------------------------------------"
    puts "---Thank You for stopping by, See you again soon--".white.on_magenta
    puts "--------------------------------------------------"
  end
end
