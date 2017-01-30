#config/routes.rb
Rails.application.routes.draw do
  
  resources :albums, only: [:index, :show]
  
  root to: 'albums#index'
end