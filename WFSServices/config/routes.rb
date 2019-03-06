Rails.application.routes.draw do
  resources :costs
  resources :services
  resources :service_types
  resources :locations
  resources :categories
  resources :locations
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
