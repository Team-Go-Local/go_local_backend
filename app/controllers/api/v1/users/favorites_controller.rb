class Api::V1::Users::FavoritesController < ApplicationController
  def index
    favorites = Favorite.where(user_id: params[:id])
  end
end