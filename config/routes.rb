Rails.application.routes.draw do
  resources :problems
  resources :solutions
  resources :votes
  post "/signup", to: "users#create"
  get "/me", to: "users#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end