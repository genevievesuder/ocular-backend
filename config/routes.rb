Rails.application.routes.draw do
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :definitions, only: [:index]
  resources :posts, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]

end
