class GoodReads::CLI 
  def call
    
    puts " " " "
    puts " " "    " " Welcome, Get Ready For Some Good Artsy Reads!"
    puts " " " "
    puts " " "  " "  " " " " ''-A book is a gift you can open again and again-'' " 
    puts " " " "
    get_book_title
    list_book_title
    get_user_title
  end  
  
  def get_book_title
     GoodReads::Title.new("rosie")
     #GoodReads::Author.new("rosie")
     #GoodReads::Rating.new("rosie")
     @title = GoodReads::Title.all
  end
    
  def list_book_title
      puts " " " 'These are the **Newly** Released Art Books !!!!'"
      puts """"
      puts   "Please select the # title of the book you would like more info on?"
      @title.each_with_index do |title, index|
      puts "#{index + 1}. #{title.name}"       
    end
  end
  
  
  def get_user_title
    selected_title = gets.strip.to_i
    show_book_titles_for(selected_title) if valid_input(selected_title, @title)
  end 
  
  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0 
  end
  
        #list title name and introductes user to athour name
        
  def show_book_titles_for(selected_title)
    title = @title[selected_title -1] 
    puts " " " "
    puts " " " " " " " " " Here's  411 on #{title} by the wonderful author: "
    puts " " " "
    #puts #{author name}
    puts " " " " " " "  The book fanatics give this book a 'rating' of: "
    #puts #{rating}
    puts " " " "
    puts " " " " " Based on this 'rating' would you like to read  #{title}?"
    puts " " " "
    puts " " "  " "  " " " " " "  " " " " " " " " " " [Yes/No]"
    puts " " " "
    #if yes 
    #puts please visit "goodreads.com"
    #if no
    #puts please select another title"
    #list_book_title
  end
  
end