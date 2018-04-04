Rails.application.routes.draw do

  get "session/new"
  root "static_pages#home"
  get "/help", to: "static_pages#help"
  get "/home", to: "static_pages#home"
  get "/contact", to: "static_pages#contact"
  get "/about", to: "static_pages#about"
  get "/login", to: "session#new"
  post "/login", to: "session#create"
  delete "/logout", to: "session#destroy"
  get "/about", to: "static_pages#about"
  get  "/signup", to: "users#new"
  post "/signup", to: "users#create"
  resources :users
end
