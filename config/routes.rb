Rails.application.routes.draw do
  resources :users
  resources :courses
  resources :student_courses
  resources :grades

  root to: 'users#new'

  get "up" => "rails/health#show", as: :rails_health_check

  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"

end
