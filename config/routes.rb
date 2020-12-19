Rails.application.routes.draw do
  get 'swapapp/index'
  root "swapapp#index"
  resources :donations, only: :index
end