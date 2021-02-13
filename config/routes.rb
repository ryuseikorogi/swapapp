Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  get 'favorites/create'
  get 'favorites/destroy'
  get 'posts/index'
  devise_for :users
  get 'swapapp/index'
  root "swapapp#index"
  get "swapapp/index"  => "swapapp/category1"
  resources :donations, only: :index
  resources :posts do
  resources :comments, only: :create
 end
end