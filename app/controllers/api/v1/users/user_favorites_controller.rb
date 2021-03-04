class Api::V1::Users::UserFavoritesController < ApplicationController
  def index
    favorites = Favorite.where(user_id: params[:d])
  end
end