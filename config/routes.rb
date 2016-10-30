Rails.application.routes.draw do
  resources :users
  # resources :reviews
  # get 'events/movies'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
  resources :movies do
    resources :reviews
  end
  # get 'movies' => 'movies#index'
  # get 'movies/new' => 'movies#new'
  # get 'movies/:id' => 'movies#show', as: 'movie'
  # get 'movies/:id/edit' => 'movies#edit', as: 'edit_movie'
  # patch 'movies/:id' => 'movies#update'
end
