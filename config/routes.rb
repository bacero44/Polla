Rails.application.routes.draw do
  get "/tournaments", to: 'tournaments#index'
  get "/tournaments/:id", to: 'tournaments#show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
