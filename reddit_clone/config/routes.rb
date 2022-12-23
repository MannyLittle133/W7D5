Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :subs, except: [:destroy]
  # Defines the root path route ("/")
  # root "user#index"


end
