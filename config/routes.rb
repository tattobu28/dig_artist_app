Rails.application.routes.draw do
  devise_for :artists
  get 'songs/index'
  root to: "songs#index"
  resources :songs
end