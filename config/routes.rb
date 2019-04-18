Rails.application.routes.draw do
  resources :permissions
  resources :model_lists
  devise_for :users
  resources :categories
  root "model_lists#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
