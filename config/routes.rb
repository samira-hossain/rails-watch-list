Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # As a user, I can see all my movie lists
  # As a user, I can create a movie list
  # As a user, I can see the details of a movie list
  # As a user, I can bookmark a movie inside a movie list
  # As a user, I can destroy a bookmark

  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create, :destroy ]
  resources :bookmarks
end
