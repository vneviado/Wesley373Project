Rails.application.routes.draw do
  
  get 'home', to: 'home#index', as: :home
  get 'home/search', to: 'home#search', as: :search

  resources :service_contacts
  resources :service_locations
  resources :costs
  resources :services
  resources :service_types
  resources :locations
  resources :categories
  resources :locations
  resources :contacts
  resources :comments

  devise_for :users
  scope "/admin" do
    resources :users
  end

  root to:'services#index'
end
