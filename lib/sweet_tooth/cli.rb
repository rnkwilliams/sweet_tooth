class SweetTooth::CLI
  
  def call
    SweetTooth::API.get_shops
    
    puts "Welcome to Sweet Tooth!"
    list_shops
    menu
  end
  
  def list_shops
      puts ""
      puts "***Top 20 best dessert shops in Dallas, TX.***"
      puts ""
      @shop = SweetTooth::Shop.all
      @shop.each.with_index(1) do |shop, i|
         puts "#{i}. #{shop.name} - #{shop.dessert_type}"
  end

  def menu
      input = nil
      while input != "exit"
      puts ""
      puts "Start by entering the number of the shop you'd like more info on. Type 'list' to see a shop again or type 'exit':"
      input = gets.strip.downcase

      if input.to_i > 0
          the_shop = @shop[input.to_i-1]
          puts "#{the_shop.name} - #{the_shop.dessert_type} - #{the_shop.price_range} - #{the_shop.location} - #{the_shop.contact}"
      elsif input == "list"
          list_shops
      elsif input == "exit"
          goodbye
      else
          puts ""
          puts "Invalid selection, type list or exit."
      end
    end
  end

  def goodbye
    puts ""
    puts "Thank you for using Sweet Tooth!!!"
  end
end
end

