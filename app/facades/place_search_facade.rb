class PlaceSearchFacade
  class << self

    def format_details(title, location)
      ((title +"-"+ location).delete(",")).gsub(" ", "-")
    end

  end
end