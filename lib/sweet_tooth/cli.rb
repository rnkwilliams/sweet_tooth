class SweetTooth::CLI
  @@grn="\e[1;32m"
  @@white="\e[0m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  
  def call
    SweetTooth::API.get_shops
    puts "Welcome to #{@@mag}Sweet Tooth#{@@white}!"
    list_shops
    menu
  end
  
  def list_shops
      puts ""
      puts "*** The Top 10 Best Dessert Shops in Dallas, TX. ***"
      puts ""
      @shop = SweetTooth::Shop.all
      @shop.each.with_index(1) do |shop, i|
         puts "#{i}. #{shop.name}"
  end

  def menu
      input = nil
      while input != "exit"
      puts ""
      puts "Start by entering the number of the shop for more info. Type 'list' to see the \nlist of shops, or type 'exit':"
      puts ""
      input = gets.strip.downcase

      if input.to_i > 0
          the_shop = @shop[input.to_i-1]
          puts "#{@@blu}#{the_shop.name}#{@@white}"
          puts "#{the_shop.dessert_type}" 
          puts "Price range: #{@@grn}#{the_shop.price_range}#{@@white}" 
          puts "#{the_shop.location}"
          puts "#{the_shop.contact}"
      elsif input == "list"
          list_shops
      elsif input == "exit"
          goodbye
      else
          puts ""
          puts "Invalid selection, type 'list' or 'exit'."
      end
    end
  end

  def goodbye
    puts ""
    puts "Thank you for using #{@@mag}Sweet Tooth#{@@white}!!!"
  end
end
end

