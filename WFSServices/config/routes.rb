Rails.application.routes.draw do
  resources :services
  resources :service_types
  resources :locations
  resources :categories
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
