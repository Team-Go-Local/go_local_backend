class Api::V1::Users::ExcursionsController < ApplicationController
  def index
    user_excursion = Excursion.where(user_id: params[:id])
    render json: ExcursionSerializer.new(user_excursion)
  end

  def create
    render json: ExcursionSerializer.new(Excursion.create(excursion_params)), status: :created
  end

  def update
    begin
      render json: ExcursionSerializer.new(Excursion.update(params[:id], excursion_params))
    rescue
      render json: { error: {} }, status: 404
    end
  end

  def destroy
    Excursion.find(params[:id]).destroy
    head :no_content
  end

  private

  def excursion_params
    params.require(:excursion).permit(:title, :description, :location, :user_id, :place_id)
  end
end
