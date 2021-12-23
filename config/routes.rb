Rails.application.routes.draw do
  devise_for :artists, controllers: {
    sessions: "artists/sessions",
    registrations: "artists/registrations"
  }
  get 'artists/:id/profile', to: 'artists#show', as: 'artist_profile'
  get 'songs/index'
  root to: "songs#index"
  resources :songs
  resources :artists, only: [:show, :edit, :update, :destory] do
    collection do
      get 'search'
    end
  end
end