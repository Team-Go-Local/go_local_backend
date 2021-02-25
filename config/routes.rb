Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/users/:id/excursions', to: 'excursions#create'
      post '/users/:id', to: 'users#create'
    end
  end
end
