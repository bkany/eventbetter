Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
  resources :attendances
  resources :events
  resources :users
  resources :users, only: [:show] do
  	resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
