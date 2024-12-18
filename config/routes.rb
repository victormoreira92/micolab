Rails.application.routes.draw do
  get 'errors/acesso_negado'
  get 'errors/erro_interno'
  get 'errors/pagina_nao_encontrada'
  root 'dashboard#index'



  devise_for :usuarios do
    delete 'usuarios/sign_out', :to => 'devise/sessions#destroy', :as => :destroy_usuario_session
  end
  resources :usuarios, except: [:destroy]

  resources :unidades_saudes, except: [:destroy] do
    collection do
      get :obter_endereco
    end
  end

  get '/403', to: 'errors#acesso_negado'


  get 'home/index'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
