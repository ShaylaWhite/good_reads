
class GoodReads::CLI 
  def call
    scraper_books
    art_books_prompt
  end  
  
  def scraper_books
    GoodReads::Scraper.scrape_site
  end
  
  def art_books_prompt
    puts "-------------------------------------------------".underline
    puts "\n-------Hello My Fellow Art Book Readers!!--------".white.on_magenta 
    puts "-----Brace Yourself For A Few 'ARTSY' Reads------".white.on_magenta
    puts "\n-------------------------------------------------\n"
    puts "\n----Enter 'ARTBOOKS' to Access The Books---------".white.on_magenta
    puts "-----Enter 'EXIT' to Exit & Say GoodBye!---------".white.on_magenta
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
  #access acorss my whole instance so use a instance vaiable 
  
  
  def list_art_books
    puts "\n--------------------------------------------------"
    puts "-------Here are the newly released ArtBooks-------".white.on_magenta
    puts "--------------------------------------------------"
    
     @@books = GoodReads::Books.all
     @@books.each.with_index do |book, index|
      puts "#{index + 1}. #{book.title}" 
    end
  end
  
  def accept_user_selection
  
    puts "--------------------------------------------------"
    puts "-----What's your book selection? Enter the'#'-----".white.on_magenta
    puts "--------------------------------------------------"
    
    input = nil?
    while input != "EXIT" 
    input = gets.strip.upcase
    
    if input.to_i.between?(1, 15)
      
       @book = @@books[input.to_i-1]
       puts "\nThanks for choosing the book:"
       puts "\n'#{@book.title.underline}'"
       puts "\n PLEASE COPY AND PASTE THe LINK BELOW INTO YOUR BROWSER TO LEARN MORE".white.on_red
       puts "\n #{@book.url}".underline
       puts "\nTo Review the Book List Again Enter 'ARTBOOKS' or 'EXIT' to Say Goodbye".white.on_red.bold
       
    elsif input == "EXIT"
        goodbye
        abort 
        
    elsif input == "ARTBOOKS"
         list_art_books
         
    else
        puts "\n-----------Sorry Incorrect Entry!!!----------".white.underline
        puts "\n----Please select again from the list below!--".white.underline
        puts "\n--------OR Enter 'EXIT' to Say Goodbye--------".white.on_red.underline
          list_art_books
        end 
      end
  end
  
  
  def goodbye
    puts "--------------------------------------------------"
    puts "---Thank You for stopping by, See you again soon--".white.on_magenta
    puts "--------------------------------------------------"
   end
end
