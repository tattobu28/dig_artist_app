Rails.application.routes.draw do
  devise_for :artists, controllers: {
    sessions: "artists/sessions",
    registrations: "artists/registrations"
  }
  get 'artists/:id/profile', to: 'artists#show', as: 'artist_profile'
  get 'songs/about'
  get 'songs/news'
  root to: "songs#index"
  resources :songs do
    collection do
      get 'ranking'
    end
  end
  resources :artists, only: [:show, :edit, :update, :destory] do
    collection do
      get 'search'
      get 'ranking'
    end
  end
  resources :youtubes do
    collection do
      get 'ranking'
    end
  end
end