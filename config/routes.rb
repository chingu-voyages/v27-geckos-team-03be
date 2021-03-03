Rails.application.routes.draw do
  resources :accountability_partners
  resources :prescriptions
  resources :medications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#User Custom Routes 
  post "/login", to: "users#login"
  get "/autologin", to: "users#autologin"
  post "/signup", to: "users#create"
  delete "/deleteuser", to: "users#destroy"

end
Å