class Api::V1::Users::UserExcursionsController < ApplicationController
  def index
    user_excursion = Excursion.where(user_id: params[:id])
    render json: ExcursionSerializer.new(user_excursion)
  end

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
    params.permit(:title, :description, :location, :user_id)
  end
end
