class Api::V1::Users::ExcursionsController < ApplicationController

  def create 
    excursion = Excursion.new(excursion_params)
    if excursion.save 
      render json: ExcursionSerializer.new(Excursion.create(excursion_params)), status: :created
    end
  end

  def update
    render json: ExcursionSerializer.new(Excursion.update(params[:id], excursion_params))
  end

  def destroy
    Excursion.find(params[:id]).destroy
    head :no_content
  end

  private 

  def excursion_params
    params.require(:excursion).permit(:title, :description, :location, :user_id)
  end
end