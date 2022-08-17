Rails.application.routes.draw do
  
  
  get '/tournaments', to: 'tournaments#index'
  get '/tournaments/:id', to: 'tournaments#show'

  get '/tournaments/:tournament/stages', to: 'stages#index'
  get '/tournaments/:tournament/stages/:stage', to: 'stages#show'

  get '/tournaments/:tournament/stages/:stage/groups', to: 'groups#index'
  get '/tournaments/:tournament/stages/:stage/groups/:group', to: 'groups#show'

  get '/tournaments/:tournament/stages/:stage/matches', to: 'matches#index'
  get '/tournaments/:tournament/stages/:stage/groups/:group/matches', to: 'matches#index'
  
  get '/tournaments/:tournament/stages/:stage/matches/:match', to: 'matches#show'
  get '/tournaments/:tournament/stages/:stage/groups/:group/matches/:match', to: 'matches#show'

  get '/tournaments/:tournament/teams', to: 'teams#index'
  get '/tournaments/:tournament/teams/:team', to: 'teams#show'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
