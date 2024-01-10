Rails.application.routes.draw do
  devise_for :users
 
  get "up" => "rails/health#show", as: :rails_health_check

  root "foods#index"
  resources :users, only: [:index]
  resources :foods, only: [:index, :show, :new, :create]
  resources :recipes, only: [:index, :show, :new, :create]
end
