require 'colorize'
class GoodReads::CLI 
  
  def call
    puts "\n___________________________________________________".underline
    puts ""
    puts "\n Hello Readers, get ready for a few Good Art Reads!".white.on_green.bold
    puts "\n___________________________________________________".underline
    list_art_books
    accept_user_selection
    list_book_review
  end  
  
  def list_art_books
  end
  
  def accept_user_selection
  end
  
  def list_book_review
  end
  
  def goodbye
  end
  
end
