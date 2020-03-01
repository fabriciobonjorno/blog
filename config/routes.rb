Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    get :search, on: :collection
  end  
  resources :comments, only: %i[create]
  root 'posts#index'
end
