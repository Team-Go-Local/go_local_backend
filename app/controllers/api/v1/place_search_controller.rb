class Api::V1::PlaceSearchController < ApplicationController
  def receive_fe_request
    place_details = (params[:title] +"-"+ params[:location].delete(",")).gsub(" ", "-")
    conn = Faraday.new(url: "https://go-local-maps-api.herokuapp.com")
    response = conn.get("/api/v1/place_search") do |request|
      request.params['location'] = place_details
    end

    render json: response.body
  end
end
