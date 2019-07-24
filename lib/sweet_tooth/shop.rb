class SweetTooth::Shop
  attr_accessor :name, :dessert_type, :price_range, :location, :contact
  
  
  #@@all = []
  
  
  #def initialize(attrs)
   
  #end
  
   #def self.list_of_shops
     
     #self.new_from_collection
   #end
   
   #def self.new_from_collection
    #shops = []
   #end
   
   def self.new_from_collection(shops)
    shops.each do |attrs|
        new(attrs)
        #binding.pry
    end 
  end


  def self.get_shops
    SweetTooth::API.get_shops
    all
  end
  
  #def self.all
    #get_shops if @@all == []
    #@@all
  #end
  
  #def save
    #@@all << self
 #end
end

#SweetTooth::Shop.new
     #shop_1 = self.new
     #shop_1.name = "Sprinkles"
     #shop_1.dessert_type = "Cupcakes, Bakery"
     #shop_1.price_range = "Inexpensive"
     #shop_1.location = "Dallas"
     #shop_1.contact = "817-841-9856"
     
     #shop_2 = self.new
     #shop_2.name = "Vals Cheesecake"
     #shop_2.dessert_type = "Cheesecake, Bakery"
     #shop_2.price_range = "Expensive"
     #shop_2.location = "Dallas"
     #shop_2.contact = "817-555-9856"
     #shop = [shop_1, shop_2]
  