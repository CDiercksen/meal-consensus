Rails.application.routes.draw do
  resources :restaurants
  resources :destinations
  resources :users do 
    resources :trips
  end

  root 'sessions#home'
  get '/signup' => 'users#new'

  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
  ########   SESSIONS ROUTES


  get 'login', to: "sessions#new"

  post 'login', to: "sessions#create"

  delete 'logout', to: "sessions#destroy"


  #to be constructed
    #get 'welcome', to: "session#welcome" 


end
