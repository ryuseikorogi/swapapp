Rails.application.routes.draw do
  devise_for :installs
  get 'swapapp/index'
  root "swapapp#index"
  resources :donations, only: :index
end