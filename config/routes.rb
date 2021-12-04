Rails.application.routes.draw do
  get 'artists/index'
  root to: "artists#index"
end