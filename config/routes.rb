Rails.application.routes.draw do
  get '/tournaments', to: 'tournaments#index'
  get '/tournaments/:id', to: 'tournaments#show'

  get '/tournaments/:tournament/stages', to: 'stages#index'
  get '/tournaments/:tournament/stages/:stage', to: 'stages#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
