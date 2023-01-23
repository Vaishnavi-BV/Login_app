Rails.application.routes.draw do

  devise_for :users
  root "main_pages#index"
  resources :profiles

  get "fiction", to: "homes#cards"
  get "non-fiction", to: "homes#non_fiction"
  get "collections", to: "homes#collections"
  resources :homes 
  resources :order_books
  resources :add_books
  
  # as :user do
  #   get "signin", to: "devise/sessions#new"
  #   delete "signout",to: "devise/sessions#destroy"
  #   get "signup", to: "devise/registrations#new"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
