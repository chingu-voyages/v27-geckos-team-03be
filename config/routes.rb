Rails.application.routes.draw do
  resources :dosages
  resources :accountability_partners, only: [:index]
  resources :prescriptions, only: [:index]
  resources :medications, only: [:index]
  resources :users, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#User Custom Routes 
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  post "/signup", to: "users#create"
  delete "/deleteuser", to: "users#destroy"

  #Accountability Partners Custom Routes 
  delete "/delete_accountability", to: "accountability_partners#destroy"

  #medication custom Routes 
delete "/delete_medication", to: "medication#destroy"
end
