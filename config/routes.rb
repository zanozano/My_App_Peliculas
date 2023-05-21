Rails.application.routes.draw do
  #seed
  resources :movies
  root 'movies#index'

end
