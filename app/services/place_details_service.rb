class PlaceDetailsService
  class << self
    def get_place_details(place_id)
      conn.get('/api/v1/place_details') do |request|
        request.params['place_id'] = place_id
      end.body
    end

    def conn
      Faraday.new(url: 'https://go-local-maps-api.herokuapp.com')
    end
  end
end
