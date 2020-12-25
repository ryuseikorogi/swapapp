Rails.application.routes.draw do
  devise_for :users
  #get 'swapapp/index'
  root to: "swapapp#index"
  resources :items, only: [:index,:new, :create,]
end