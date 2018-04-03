Rails.application.routes.draw do

  root "static_pages#home"
  get "/signup", to: "users#new"
  get "/help", to: "static_pages#help"
  get "/home", to: "static_pages#home"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  post "/signup", to: "users#create"
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  resources :users
end
