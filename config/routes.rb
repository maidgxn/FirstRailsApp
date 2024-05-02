Rails.application.routes.draw do
  devise_for :clients, controllers: { registrations: 'clients/registrations' }
  # get 'home/index'
  root 'home#index'
  get 'home/about'
  resources :clients
  # get 'clients/sign_out', to: 'clients#sign_out', as: :client_sign_out

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
