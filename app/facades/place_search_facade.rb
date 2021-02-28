class PlaceSearchFacade
  class << self
    def place_search(title, location)
      query_details = format_details(title, location)
      PlaceSearchService.get_location(query_details)
    end

    def format_details(title, location)
      ((title + '-' + location).delete(',')).gsub(' ', '-')
    end
  end
end
