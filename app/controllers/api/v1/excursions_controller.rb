class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = if params[:city]
                    Excursion.where(nearest_city: params[:city])
                  else
                    Excursion.all
                  end
    options = {}
    options[:meta] = { cities: excursions.cities}
    render json: ExcursionSerializer.new(excursions, options)
  end

  def show
    excursion = Excursion.find(params[:id])
    begin
      render json: ExcursionSerializer.new(excursion)
    rescue
      render json: {errors: user.errors.full_messages.uniq.to_sentence}, status: 404
    end
  end
end
