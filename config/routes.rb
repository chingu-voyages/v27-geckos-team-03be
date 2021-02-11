Rails.application.routes.draw do
  resources :accountability_partners
  resources :prescriptions
  resources :medications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/login", to: "users#login"
end
