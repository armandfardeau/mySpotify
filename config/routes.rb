#config/routes.rb
Rails.application.routes.draw do
  
  namespace :api do
    resources :tokens, only: [:create]
    resources :albums, only: [:index]
  end
  
  resources :albums, only: [:index, :show]
  
  root to: 'albums#index'
end