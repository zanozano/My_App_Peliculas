Rails.application.routes.draw do
  #seed
  resources :movies, only: [:index, :show]
  resources :series, only: [:index, :show]
  resources :documentaries, only: [:index, :show]
  # Rutas para el índice de películas
  get 'movies', to: 'movies#index'
  # Rutas para el índice de series
  get 'series', to: 'series#index'
  # Rutas para el índice de documentales
  get 'documentaries', to: 'documentaries#index'
  # Rutas Principal
  root 'home#index'

end
