
require 'colorize'

class GoodReads::CLI 
  
  def call
    art_books_prompt
  end  
  
  def art_books_prompt
    puts "-------------------------------------------------".underline
    puts "\n-------Hello My Fellow Art Book Readers!!--------".white.on_magenta 
    puts "-----Brace Yourself For A Few 'ARTSY' Reads------".white.on_magenta
    puts "\n-------------------------------------------------\n"
    puts "\n----Enter 'ARTBOOKS' to access the Books---------".white.on_magenta
    puts "-----Enter 'EXIT', Exit & Say GoodBye------------".white.on_magenta
    puts "\n"
    puts "-------------------------------------------------".underline
  
    
    input = gets.strip.upcase

        case input 
        
        when "ARTBOOKS"
            list_art_books
            accept_user_selection
            
        when "EXIT"
            goodbye
            abort 
            
        else 
            puts "Sorry incorrect entry, better luck next time!!!".red.underline
        end 
     end
  

  
  def list_art_books
    puts "--------------------------------------------------"
    puts "-------Here are the newly released ArtBooks-------".white.on_magenta
    puts "--------------------------------------------------"
    
    @books = GoodReads::Books.all
    @books.each.with_index(1) do |book, index|
      puts "#{index}. #{book}" 
    end
  end
  
  def accept_user_selection
    input = nil
    
    while input != "EXIT"
    puts "--------------------------------------------------"
    puts "-----What's your book selection? Enter the'#'-----".white.on_magenta
    puts "--------------------------------------------------"
    
   
    input = gets.strip.upcase
    
    if input.to_i > 0
      
       books_list = @books[input.to_i-1]
       puts "This  was written by author"
       puts "Would you like to read this book?"
       
    elsif input == "ARTBOOKS"
        list_art_books
    else
        puts "Invalid Entry, enter 'ARTBOOKS' to review the books list again or 'EXIT' to exit!".red.underline
      end
    end 
  end
  
  
  def goodbye
    puts "--------------------------------------------------"
    puts "---Thank You for stopping by, See you again soon--".white.on_magenta
    puts "--------------------------------------------------"
 end
end
