Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      post '/users/:id', to: 'users#create'

      namespace :users do  
        post '/:id/excursions', to: 'excursions#create'
        patch '/:id/excursions/:id', to: 'excursions#update'
        delete '/:id/excursions/:id', to: 'excursions#destroy'
      end 
    end
  end
end
