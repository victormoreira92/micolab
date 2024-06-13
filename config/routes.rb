Rails.application.routes.draw do

  devise_for :usuarios

  resources :usuarios, except: :destroy

  get 'home/index'

  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
