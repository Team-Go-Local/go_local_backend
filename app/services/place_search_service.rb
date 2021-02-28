class PlaceSearchService 
  class << self
    
    def get_location_details(place_details)
      conn.get("/api/v1/place_search") do |request|
        request.params['location'] = place_details
      end.body
    end
    
    def conn
      Faraday.new(url: "https://go-local-maps-api.herokuapp.com")
    end
  end
end