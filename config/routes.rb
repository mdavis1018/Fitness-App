Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  ## users routes
  resources :users
  
  get "posts" => "users#index"

  ## workouts routes
  resources :workouts

  ## workout details routes
  resources :workout_details


  ## excercises routes
  resources :excercises do
     resources :workout_details
  end
  ## sessions routes
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
  get "/signup" => "users#new"

  ## excercisecategory
  resources :excercise_categories
 
end
