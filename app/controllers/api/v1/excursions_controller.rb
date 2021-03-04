class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = Excursion.all
    options = {}
    options[:meta] = { cities: Excursion.cities}
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
