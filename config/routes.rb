Rails.application.routes.draw do
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :definitions, only: [:index]
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :create, :update, :destroy]

  post "/login", to: "sessions#login"
  delete "/logout", to: "sessions#logout"
  get "/authorized_user", to: "users#show"
end
