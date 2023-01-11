Rails.application.routes.draw do
  get 'profiles/new'
  get 'profiles/edit'
  get 'profiles/show'
  devise_for :users
  root to: "homes#main"
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
