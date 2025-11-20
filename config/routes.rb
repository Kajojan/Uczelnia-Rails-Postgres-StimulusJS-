Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :courses
    resources :grades
    
    root to: "users#index"
  end

  resources :users
  resources :courses do
    resources :grades, only: [:create, :update, :destroy]
    resources :student_courses, only: [:create, :destroy] 
  end

  resources :grades

  root to: 'users#new'

  get "up" => "rails/health#show", as: :rails_health_check

  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

  match "*path", to: "application#not_found", via: :all


end
