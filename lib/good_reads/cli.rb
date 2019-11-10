require 'colorize'
class GoodReads::CLI 
  
  def call
    puts "-------------------------------------------------".underline
    puts "\n-------Hello My Fellow Art Book Readers!!--------".white.on_magenta 
    puts "-------Brace Yourself For A Few ARTSY Reads------".white.on_magenta
    puts "-------------------------------------------------".underline
    puts "\n"
    list_art_books
    accept_user_selection
    list_book_review
  end  
  
  def list_art_books
    puts "--------------------------------------------------"
    puts "-------Here are the newly released ArtBooks-------".white.on_magenta
    puts "--------------------------------------------------"
  end
  
  def accept_user_selection
    puts "--------------------------------------------------"
    puts "-----What's your book selection? Enter the'#'-----".white.on_magenta
    puts "--------------------------------------------------"
  end
  
  def list_book_review
  end
  
  def goodbye
  end
  
end
