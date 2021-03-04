class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = if params[:city]
                   Excursion.where(nearest_city: params[:city])
                 else
                   Excursion.all
                 end
    options = {}
    options[:meta] = { cities: excursions.cities }
    render json: ExcursionSerializer.new(excursions, options)
  end

  def show
    excursion = Excursion.find(params[:id])
    render json: ExcursionSerializer.new(excursion)
  end
end
