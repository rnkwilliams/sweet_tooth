class SweetTooth::CLI
  
  def call
    puts "Welcome to Sweet Tooth!"
    list_shops
    menu
    goodbye
  end
  
  def list_shops
      puts ""
      puts "Top 20 best dessert shops in Dallas."

      @shop = SweetTooth::Shop.list_of_shops
      @shop.each.with_index(1) do |shop, i|
          puts "#{i}. #{shop.name} - #{shop.dessert_type}"
  end

  def menu
      input = nil
      while input != "exit"
      puts "Enter the number of the shop you'd like more info on or type 'list' to see shops again or type 'exit':"
      input = gets.strip.downcase

      if input.to_i > 0
          puts @shop[input.to_i-1]
      elsif input == "list"
          list_shops
      else
          puts "Invalid selection, type list or exit."
      end
    end
  end

  def goodbye
    puts "Thank you for using Sweet Tooth!!!"
  end
end
end
