Rails.application.routes.draw do
  resources :unidades_saude
  root 'dashboard#index'

  devise_for :usuario do
    delete 'usuario/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_usuario_session
  end

  resources :usuarios, except: [:destroy]

  get 'home/index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
