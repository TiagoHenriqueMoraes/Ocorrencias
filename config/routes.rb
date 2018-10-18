Rails.application.routes.draw do
  
  resources :guidelines, expect: :show
  resources :teams, expect: :show
  resources :occurrences
  resources :supervisors
  resources :turns, expect: :show
  resources :groups, expect: :show
  resources :employees
  
  devise_for :users
  
  
  root to: "dashboard#index"
end
