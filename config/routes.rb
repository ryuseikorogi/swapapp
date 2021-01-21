Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  get 'swapapp/index'
  root "swapapp#index"
  get "swapapp/index"  => "swapapp/category1"
  resources :donations, only: :index
end