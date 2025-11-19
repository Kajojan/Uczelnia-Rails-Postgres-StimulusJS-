Rails.application.routes.draw do
  resources :users
  resources :users
  resources :courses
  resources :student_courses
  resources :grades

  get "up" => "rails/health#show", as: :rails_health_check

  resource :session, only: [ :new, :create, :destroy ]
end
