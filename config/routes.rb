Rails.application.routes.draw do
  root 'dashboard#index'



  devise_for :usuarios do
    delete 'usuarios/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_usuario_session
  end
  resources :usuarios, except: [:destroy]

  resources :unidades_saudes


  get 'home/index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
