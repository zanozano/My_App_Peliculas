Rails.application.routes.draw do
  #done
  resources :movies
  resources :series
  resources :documentaries

  get '/movies', to: 'movies#index'
  get '/series', to: 'series#index'
  get '/documentaries', to: 'documentaries#index'

  # Ruta principal
  root 'home#index'
end
