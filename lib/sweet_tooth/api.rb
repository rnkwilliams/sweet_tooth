class SweetTooth::API
  
  def self.get_shops
    resp = HTTParty.get("https://api.yelp.com/v3/businesses/search?term=desserts&limit=20&location=Dallas&sort_by=best_match", {
      headers: {"Authorization" => "Bearer #{ENV['YELP_API_KEY']}"},
    })
    
    shops = resp["businesses"]
    SweetTooth::Shop.new_from_collection(shops)
  end
end