class Api::V1::ExcursionsController < ApplicationController
  def index
    excursions = Excursion.all
    render json: ExcursionSerializer.new(excursions)
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
