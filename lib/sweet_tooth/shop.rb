class SweetTooth::Shop
  attr_accessor :name, :dessert_type, :price_range, :location, :contact
  
  
  @@all = []
  
  
  def initialize(attrs)
    @name = attrs["name"]
    @dessert_type = attrs["categories"][1]["title"] unless attrs["categories"][1].nil?
    @price_range = attrs["price"]
    @location = attrs["display_address"]
    @contact = attrs["display_phone"]
  
   save
  end
   
   def self.new_from_collection(shops)
    shops.each do |attrs|
        new(attrs)
   end 
  end

  def self.get_shops
    SweetTooth::API.get_shops
    all
  end
  
  def self.all
    get_shops if @@all == []
    @@all
  end
  
  def save
    @@all << self
  end
end



    