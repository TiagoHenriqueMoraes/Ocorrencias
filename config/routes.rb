Rails.application.routes.draw do
  
  resources :guidelines, expect: :show
  resources :teams, expect: :show
  resources :occurrences
  resources :turns, expect: :show
  resources :groups, expect: :show
  resources :employees
  resources :users, only: [:new, :create]
  
  devise_for :users
  
  
  root to: "dashboard#index"
end
