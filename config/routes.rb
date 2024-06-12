Rails.application.routes.draw do
  get 'usuario/index'
  get 'usuario/create'
  get 'usuario/update'
  get 'usuario/toogle_desativacao'
  get 'usuario/show'
  devise_for :usuarios
  get 'home/index'

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
