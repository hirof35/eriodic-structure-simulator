# config/routes.rb
Rails.application.routes.draw do
  root "elements#index"
  resources :elements, only: [:index, :show]
end