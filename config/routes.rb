Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users/:id', to: 'users#create'

      namespace :users do
        get '/:id/excursions', to: 'user_excursions#index'
        post '/:id/excursions', to: 'user_excursions#create'
        patch '/:id/excursions/:id', to: 'user_excursions#update'
        delete '/:id/excursions/:id', to: 'user_excursions#destroy'
      end

      resources :excursions, only: [:index, :show]                                      
    end
  end
end

