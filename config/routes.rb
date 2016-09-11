Rails.application.routes.draw do

  root to: "listings#index"

  get "/users/new", to: "users#new", as: "new_user"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"
  get "/users/:id/edit", to: "users#edit", as: "edit_user"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy", as: "destroy_user"

  get "/login", to: "sessions#new", as: "new_session"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create", as: "create_session"


  get "/Listings/new", to: "Listings#new", as: "new_listing"
  post "/Listings", to: "Listings#create"
  get "/Listings/:id", to: "Listings#show", as: "listing"
  get "/Listings/:id/edit", to: "Listings#edit", as: "edit_listing"
  patch "/Listings/:id", to: "Listings#update"
  delete "/Listings/:id", to: "Listings#destroy", as: "destroy_listing"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
