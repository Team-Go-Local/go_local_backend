Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users/:id', to: 'users#create'
      get '/place_search', to: 'place_search#place_search_request'
      get '/place_details', to: 'place_details#details_request'
      post '/favorites', to: 'favorites#add_favorite'
      
      namespace :users do
        get '/:d/favorites', to: 'user_favorites#index'
        get '/:id/excursions', to: 'user_excursions#index'
        post '/:id/excursions', to: 'user_excursions#create'
        patch '/:id/excursions/:id', to: 'user_excursions#update'
        delete '/:id/excursions/:id', to: 'user_excursions#destroy'
      end

      resources :excursions, only: [:index, :show]
    end
  end
end
