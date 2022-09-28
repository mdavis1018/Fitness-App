Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  ## users routes
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/users/:id/edit" => "users#edit"
  patch "/users/:id" => "users#update"
  get "/profile/:id" => "users#show"
  get "/users/:id", to: "users#show", as: "user"
  
  get "posts" => "users#index"

  ## workouts routes
  resources :workouts

  ## excercises routes
  resources :excercises

  ## sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
