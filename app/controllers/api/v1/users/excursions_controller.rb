class Api::V1::Users::ExcursionsController < ApplicationController

  def create 
    excursion = Excursion.new(excursion_params)
    if excursion.save 
      render json: ExcursionSerializer.new(Excursion.create(excursion_params)), status: :created
    end
  end

  def update
    require 'pry'; binding.pry
    render json: ExcursionSerializer.new(Excursion.update(params[:id], excursion_params))
  end

  private 

  def excursion_params
    params.require(:excursion).permit(:title, :description, :location, :user_id)
  end
end