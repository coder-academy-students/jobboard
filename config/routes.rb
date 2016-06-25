Rails.application.routes.draw do


  resources :student_profiles
  resources :skills
  resources :jobs
  resources :job_types
  resources :companies do
    member do
      post :approve
    end
  end
  root 'home#index'

  devise_for :users
  get 'admin', to: 'pages#admin'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
