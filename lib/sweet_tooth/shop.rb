class SweetTooth::Shop
  attr_accessor :name, :dessert_type, :price_range, :location, :contact
  
  @@all = []
  
  def initialize(attrs)
    @name = attrs["name"]
    @dessert_type = attrs["categories"][0]["title"] unless attrs["categories"][0].nil?
    @price_range = attrs["price"]
    @location = attrs["location"]["display_address"].join(' ')
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
  
  def self.find_all_by_name (string)
   all.select { |s| s.name.include?(string)}
  end 
  
  def self.all
    get_shops if @@all == []
    @@all
  end
  
  def save
    @@all << self
  end
end



    