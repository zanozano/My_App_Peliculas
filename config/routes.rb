Rails.application.routes.draw do
  #done
  resources :movies
  resources :series
  resources :documentaries
  # Ruta principal
  root 'home#index'
end
