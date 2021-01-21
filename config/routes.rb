Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  get 'swapapp/index'
  root "swapapp#index"
  resources :donations, only: :index
end