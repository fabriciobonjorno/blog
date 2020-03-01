Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :comments, only: %i[create]
  root 'posts#index'
end
