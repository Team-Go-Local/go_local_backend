class Api::V1::Users::FavoritesController < ApplicationController
  def index
    favorites = User.find(params[:id]).saved_excursions
    options = {}
    options[:meta] = { cities: favorites.cities }
    render json: ExcursionSerializer.new(favorites, options)
  end
  def add_favorite
    render json: FavoriteSerializer.new(Favorite.create(favorite_params))
  end
end
