class SweetTooth::CLI
  
  def call
    puts "Welcome to Sweet Tooth!"
    list_shops
    menu
    goodbye
  end
  
  def list_shops
      puts ""
      puts "Top 20 best dessert shops in Dallas, TX."
      puts ""
      puts "1. Sprinkles"
      puts "2. Vals Cheesecake"
      puts "3. Milk Bar"
      puts "4. Cake Bar"
      

      @shop = SweetTooth::Shop.list_of_shops
      @shop.each.with_index(1) do |shop, i|
         puts "#{i}. #{shop.name} - #{shop.dessert_type}"
  end

  def menu
      input = nil
      while input != "exit"
      puts ""
      puts "Enter the number of the shop you'd like more info on.Type 'list' to see shops\n again or type 'exit':"
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

