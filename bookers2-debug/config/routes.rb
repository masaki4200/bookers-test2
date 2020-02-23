Rails.application.routes.draw do
  get 'home/about'
  root to: 'home#top'
  #devise_for :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users, only: [:index, :show, :edit, :update]
  resources :homes, only: [:index]
end