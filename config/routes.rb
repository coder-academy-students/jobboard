Rails.application.routes.draw do
  resources :student_profiles
  resources :skills
  resources :jobs
  resources :job_types
  resources :companies
  root 'home#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
