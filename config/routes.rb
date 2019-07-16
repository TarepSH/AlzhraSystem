Rails.application.routes.draw do
  devise_for :users
  resources :trips
  resources :memorizationpages
  resources :memorizationparts
  resources :attendings
  resources :teachers
  resources :classrooms
  resources :students

  get "classrooms/printclass/:id", to: "classrooms#printclass"


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "classrooms#index"
  
end
