class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = Excursion.all
    render json: ExcursionSerializer.new(excursions)
  end

  def show
    excursion = Excursion.find(params[:id])
    place_details = PlaceDetailsService.get_place_details(excursion.place_id)
    poro = ExcursionDetails.new(place_details, excursion)
    begin
      render json: ExcursionDetailsSerializer.new(poro)
    rescue
      render json: {errors: user.errors.full_messages.uniq.to_sentence}, status: 404
    end
  end
end
