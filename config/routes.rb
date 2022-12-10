Rails.application.routes.draw do
  resources :users
  resources :movie_collections
  resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/login", to: "jwt#create"
  delete "/logout", to: "jwt#destroy"
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
  # Defines the root path route ("/")
  # root "articles#index"
end
