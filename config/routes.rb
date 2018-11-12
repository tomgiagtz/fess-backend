Rails.application.routes.draw do
  resources :posts, only: [:index, :create]
  resources :likes, only: [:create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
