class GoodReads::CLI 
  def call
    
    puts " " " "
    puts " " "    " " Welcome, Get Ready For Some Good Artsy Reads!"
    puts " " " "
    puts   " " "    " " 'A book is a gift you can open again and again' " 


    get_book_title
    get_user_title_selection
    
    #get book_rating
    #Get book_titles
    #Get Author_Name or 
    #Get Book_Name 
    #User Choose the book title or 
  end  
  
  def get_book_title
       @title = ['v amy', 'v sam', 'f frank', 'c shayla']
  end
    
    
  def get_user_title_selection
                                             #list the title of the books
      @title.each_with_index do |title, index|
      puts "#{index + 1}. #{title}"         # +1 to count up
    end
  end
end