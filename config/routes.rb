Rails.application.routes.draw do
  resources :restaurants
  resources :destinations
  resources :trips
  resources :users

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ########   SESSIONS ROUTES


  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy"


  #to be constructed
    #get 'welcome', to: "session#welcome" 


end
