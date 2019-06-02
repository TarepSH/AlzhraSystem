Rails.application.routes.draw do
  resources :trips
  resources :memorizationpages
  resources :memorizationparts
  resources :attendings
  resources :teachers
  resources :classrooms
  resources :students
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
