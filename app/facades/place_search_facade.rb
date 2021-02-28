class PlaceSearchFacade
  class << self

    def place_details(title, location)
      query_details = format_details(title, location)
      PlaceSearchService.get_location_details(query_details)
    end

    def format_details(title, location)
      ((title +"-"+ location).delete(",")).gsub(" ", "-")
    end

  end
end