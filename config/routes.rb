Rails.application.routes.draw do


  resources :usuarios, except: [:destroy] 

  devise_for :usuarios do
    get '/usuarios/sign_out' => 'devise/sessions#destroy'
  end

  get 'home/index'

  root 'dashboard#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
