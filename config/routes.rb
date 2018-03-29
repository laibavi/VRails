Rails.application.routes.draw do
  get "users/new", to: "users#new"

  root "static_pages#home"

  get "/help", to: "static_pages#help"
  get "/home", to: "static_pages#home"
end
