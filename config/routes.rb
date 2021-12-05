Rails.application.routes.draw do
  devise_for :artists
  get 'artists/index'
  root to: "artists#index"
end