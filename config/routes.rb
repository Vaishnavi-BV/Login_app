Rails.application.routes.draw do
  devise_for :users
  resources :homes
  root to: "homes#index"

  # as :user do
  #   get "signin", to: "devise/sessions#new"
  #   delete "signout",to: "devise/sessions#destroy"
  #   get "signup", to: "devise/registrations#new"
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
