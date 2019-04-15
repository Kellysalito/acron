Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  get 'about', to: 'static_pages#about'
  resources :words, only: [:index, :show]
  namespace :user do
  resources :words, only: [:new, :create, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
