class Api::V1::PlaceSearchController < ApplicationController
  def receive_fe_request
    render json: PlaceSearchFacade.place_details(params[:title], params[:location])
  end
end
