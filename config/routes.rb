Rails.application.routes.draw do
  resources :categories
  resources :books

  devise_for :users
  root "main_pages#index"
  resources :profiles
  resources :homes 
  resources :order_books
 
  
  # as :user do
  #   get "signin", to: "devise/sessions#new"
  #   delete "signout",to: "devise/sessions#destroy"
  #   get "signup", to: "devise/registrations#new"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
