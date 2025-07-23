Rails.application.routes.draw do
  devise_for :users
  root "events#index"

  resources :users, only: [ :show ]
  resources :attendances, only: [ :create, :destroy ]
  resources :events, only: [ :index, :new, :show ]
  get "up" => "rails/health#show", as: :rails_health_check
end
