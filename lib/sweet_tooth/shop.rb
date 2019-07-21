class SweetTooth::Shop
  attr_accessor :name, :dessert_type, :price_range, :location, :contact
  
  @@all = []
  
  
  def self.list_of_shops
    shop = self.new
    shop.name = "Sprinkles"
    shop.dessert_type = "Cupcakes, Bakery"
    shop.price_range = "Inexpensive"
    shop.location = "Dallas"
    shop.contact = "817-841-9856"
    
    shop = []

  end
  
  #def self.all
    #get_shops if @@all == []
    #@@all
  #end
  
  #def save
    #@@all << self
  #end
end
  