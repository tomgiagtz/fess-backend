Rails.application.routes.draw do
  resources :comments, only: [:create, :edit, :destroy]
  resources :users, only: [:index, :destroy, :show]
  resources :posts, only: [:index, :create]
  resources :likes, only: [:create, :update, :destroy]
end
