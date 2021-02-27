class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = Excursion.all
    render json: ExcursionSerializer.new(excursions)
  end

  def show
    excursion = Excursion.find(params[:id])
    render json: ExcursionSerializer.new(excursion)
  end
end